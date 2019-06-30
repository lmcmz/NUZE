package xyz.nuze.config;

/**
 * @CreatyBy Michael
 * @Date 2019-06-30 15:32
 */

import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;
import org.springframework.web.filter.GenericFilterBean;
import xyz.nuze.mapper.ClientMapper;
import xyz.nuze.mapper.HostMapper;
import xyz.nuze.mapper.UserMapper;
import xyz.nuze.model.User;
import xyz.nuze.utils.JWT.JWTUtil;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Configuration
@EnableWebSecurity
class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    // 设置 HTTP 验证规则
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 关闭csrf验证
        http.csrf().disable()
                // 对请求进行认证
                .authorizeRequests()
                // 所有 / 的所有请求 都放行
                .antMatchers("/").permitAll()
                // 所有 /login 的POST请求 都放行
                .antMatchers("/login").permitAll()
                .antMatchers(HttpMethod.GET, "/swagger-ui.html").permitAll()
                .antMatchers(HttpMethod.GET, "/webjars/**").permitAll()
//                .antMatchers(HttpMethod.GET, "/swagger-resources/configuration/ui").permitAll()
                .antMatchers(HttpMethod.GET, "/swagger-resources/**").permitAll()
                .antMatchers(HttpMethod.GET, "/v2/**").permitAll()
                // register related requests
                .antMatchers("/users").permitAll()
                .antMatchers("/users/password").permitAll()
                .antMatchers("/test/**").permitAll()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                // 添加权限检测
                //.antMatchers("/hello").hasAuthority("AUTH_WRITE")
                // 角色检测
                //.antMatchers("/world").hasRole("ADMIN")
                // 所有请求需要身份认证
                .anyRequest().authenticated()
                .and()
                // 添加一个过滤器 所有访问 /login 的请求交给 JWTLoginFilter 来处理 这个类处理所有的JWT相关内容
                .addFilterBefore(new JWTLoginFilter("/login", authenticationManager()),
                        UsernamePasswordAuthenticationFilter.class)
                // 添加一个过滤器验证其他请求的Token是否合法
                .addFilterBefore(new JWTAuthenticationFilter(),
                        UsernamePasswordAuthenticationFilter.class);
    }

    @Bean
    CustomAuthenticationProvider customAuthenticationProvider() {
        return new CustomAuthenticationProvider();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(customAuthenticationProvider());
    }

//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        // 使用自定义身份验证组件
//        auth.authenticationProvider(new CustomAuthenticationProvider());
//
//    }
}

class TokenAuthenticationService {

    static final long EXPIRATIONTIME = 1_296_000_000L;     // 15天
    static final String SECRET = "PWD@BBchuxingssw02d";            // JWT密码
    static final String TOKEN_PREFIX = "Bearer";        // Token前缀
    static final String HEADER_STRING = "Authorization";// 存放Token的Header Key

    static void addAuthentication(HttpServletResponse response, String username) {
        // 生成JWT
        String JWT = Jwts.builder()
                // 保存权限（角色）
                .claim("authorities", "ROLE_ADMIN,AUTH_WRITE")
                // 用户名写入标题
                .setSubject(username)
                // 有效期设置
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATIONTIME))
                // 签名设置
                .signWith(SignatureAlgorithm.HS512, SECRET)
                .compact();

        // 将 JWT 写入 body
        try {
            response.setContentType("application/json");
            response.setStatus(HttpServletResponse.SC_OK);
            response.getOutputStream().println(JWTUtil.fillResultString(1, "Login successfully.", JWT));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    static Authentication getAuthentication(HttpServletRequest request) {
        // 从Header中拿到token
        String token = request.getHeader(HEADER_STRING);

        if (token != null) {
            // 解析 Token
            Claims claims;
            try {
                claims = Jwts.parser()
                        // 验签
                        .setSigningKey(SECRET)
                        // 去掉 Bearer
                        .parseClaimsJws(token.replace(TOKEN_PREFIX, ""))
                        .getBody();
            } catch (Exception e) {
                return null;
            }

            // 拿用户名
            String user = claims.getSubject();

            // 得到 权限（角色）
            List<GrantedAuthority> authorities = AuthorityUtils.commaSeparatedStringToAuthorityList((String) claims.get("authorities"));

            // 返回验证令牌
            return user != null ?
                    new UsernamePasswordAuthenticationToken(user, null, authorities) :
                    null;
        }
        return null;
    }
}

// 自定义身份认证验证组件
class CustomAuthenticationProvider implements AuthenticationProvider {

//    @Autowired
//    private UserService userService;
//
//    @Autowired
//    private DriverService driverService;
//
//    @Autowired
//    private ClientService clientService;
//
    @Autowired
    private UserMapper userMapper;

    @Autowired
    ClientMapper clientMapper;


    @Autowired
    HostMapper hostMapper;
//
//    @Autowired
//    private RedisTemplate redisTemplate;

    @Override
    @Transactional(rollbackFor = AuthenticationException.class)
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        // 获取认证的用户名 & 密码
        String name = authentication.getName();
        String password = authentication.getCredentials().toString();
        Integer userGroup = JWTLoginFilter.userGroup;
        System.out.println(name + "   " + password + "   " +  userGroup);

        if (userGroup == null || (userGroup != 1 && userGroup != 0)) {
            throw new BadCredentialsException("Invalid username or password.");
        }
        // Username and password validation checking
        if (StringUtils.isEmpty(name) || StringUtils.isEmpty(password)) {
            throw new BadCredentialsException("Invalid username or password.");
        }
//
//
        // Get userModel by username
        User userModel;
//        try {
//            userModel = userService.getUserByUsername(name);
//        } catch (BusinessException ex) {
//            throw new BadCredentialsException("Invalid username or password.");
//        }
//
//        String identifier = "";
//
//        // driver handler
//        if (userGroup == 2) {
//            // username is not existed
//            if (userModel == null) {
//                throw new BadCredentialsException("Invalid username or password.");
//            }
//
//            // generate encrypt password
//            String salt = userModel.getSalt();
//            password = password + salt;
//            String userEncryptPassword = DigestUtils.md5DigestAsHex(password.getBytes());
//
//            // 认证逻辑
//            if (StringUtils.equals(userEncryptPassword, userModel.getPassword())) {
//
//                identifier = userModel.getId().toString();
//                Integer loginId = userModel.getId();
//                try {
//                    // generate driver based token
//                    if (driverService.getDriverByLoginId(loginId) != null) {
//                        identifier += "_driver";
//                    } else {
//                        throw new BadCredentialsException("Invalid username or password.");
//                    }
//                } catch (BusinessException ex) {
//                    throw new BadCredentialsException("Invalid username or password.");
//                }
//            } else {
//                // Invalid username or password
//                throw new BadCredentialsException("Invalid username or password.");
//            }
//            // client handler
//        } else {
//
////         reCaptchaToken validation
////            if (!reCaptcha.verifyToken(JWTLoginFilter.reCaptchaToken)) {
////                throw new BadCredentialsException("Invalid username or password.");
////            }
//
//            // optCode verification
//            if (!RandomVerifyCode.verifyOtpCode(name, password)) {
//                throw new BadCredentialsException("otp code wrong");
//            }
//
//            // User account is not existed create both user account and client account
//            if (userModel == null) {
//                UserModel clientUser = new UserModel();
//                clientUser.generateDefaultUserModel(name, password);
//                Integer userId;
//                try {
//                    userId = userService.userRegister(clientUser);
//                    ClientModel clientModel = new ClientModel();
//                    clientModel.setLoginId(userId);
//                    clientService.insertClient(clientModel);
//                    identifier = userId.toString() + "_client";
//                } catch (BusinessException ex) {
//                    throw new BadCredentialsException("Invalid username or password.");
//                }
//            } else {
//                Integer loginId = userModel.getId();
//                try {
//                    // User account is existed but no client account
//                    if (clientService.getClientByLoginId(loginId) == null) {
//                        ClientModel clientModel = new ClientModel();
//                        clientModel.setLoginId(loginId);
//                        clientService.insertClient(clientModel);
//                    }
//                } catch (BusinessException ex) {
//                    throw new BadCredentialsException("Invalid username or password.");
//                }
//                identifier = loginId.toString() + "_client";
//            }
//
//        }
        // 这里设置权限和角色
        String identifier = "user";
        ArrayList<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new GrantedAuthorityImpl("ROLE_ADMIN"));
        authorities.add(new GrantedAuthorityImpl("AUTH_WRITE"));
        // 生成令牌 with user ID
        Authentication auth = new UsernamePasswordAuthenticationToken(identifier, password, authorities);
        return auth;
    }

    // 是否可以提供输入类型的认证服务
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}

class JWTLoginFilter extends AbstractAuthenticationProcessingFilter {

    public static Integer userGroup;

    public static String reCaptchaToken;

    public JWTLoginFilter(String url, AuthenticationManager authManager) {
        super(new AntPathRequestMatcher(url));
        setAuthenticationManager(authManager);
    }

    @Override
    public Authentication attemptAuthentication(
            HttpServletRequest req, HttpServletResponse res)
            throws AuthenticationException, IOException, ServletException {

        // Handle CROS issue
        res.setHeader("Access-Control-Allow-Origin", "*");
        res.setHeader("Access-Control-Allow-Credentials", "true");
        res.setHeader("Access-Control-Allow-Methods", "*");
        res.setHeader("Access-Control-Allow-Headers", "Content-Type,Access-Token");
        res.setHeader("Access-Control-Expose-Headers", "*");
        // Handle OPTION request
        if (StringUtils.equals(req.getMethod(), "OPTIONS")) {
            System.out.println(req.getMethod());
            res.setStatus(200);
            return null;
        }

        // JSON反序列化成 AccountCredentials
        AccountCredentials creds = new ObjectMapper().readValue(req.getInputStream(), AccountCredentials.class);

//         customize parameter
        this.userGroup = creds.getUserGroup();

        // 返回一个验证令牌
        return getAuthenticationManager().authenticate(
                new UsernamePasswordAuthenticationToken(
                        creds.getUsername(),
                        creds.getPassword()
                )
        );
    }

    @Override
    protected void successfulAuthentication(
            HttpServletRequest req,
            HttpServletResponse res, FilterChain chain,
            Authentication auth) throws IOException, ServletException {
        TokenAuthenticationService.addAuthentication(res, auth.getName());
    }


    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request, HttpServletResponse response, AuthenticationException failed) throws IOException, ServletException {
        response.setContentType("application/json");
        response.setStatus(HttpServletResponse.SC_OK);
        response.getOutputStream().println(JWTUtil.fillResultString(0, "Invalid username or password", JSONObject.NULL));
    }
}

class JWTAuthenticationFilter extends GenericFilterBean {

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain filterChain)
            throws IOException, ServletException {
        Authentication authentication = TokenAuthenticationService
                .getAuthentication((HttpServletRequest) request);

        SecurityContextHolder.getContext()
                .setAuthentication(authentication);
        filterChain.doFilter(request, response);
    }
}


class AccountCredentials {

    private String username;
    private String password;
    // customized attribute for distinguish the user from different apps(driver, client)
    private Integer userGroup;
    private String reCaptchaToken;

    public String getReCaptchaToken() {
        return reCaptchaToken;
    }

    public void setReCaptchaToken(String reCaptchaToken) {
        this.reCaptchaToken = reCaptchaToken;
    }

    public Integer getUserGroup() {
        return userGroup;
    }

    public void setUserGroup(Integer userGroup) {
        this.userGroup = userGroup;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

class GrantedAuthorityImpl implements GrantedAuthority {
    private String authority;

    public GrantedAuthorityImpl(String authority) {
        this.authority = authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }
}


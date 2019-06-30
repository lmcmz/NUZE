package xyz.nuze;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.bind.annotation.RestController;

/**
 * Hello world!
 *
 */
@RestController
@SpringBootApplication(scanBasePackages = {"xyz.nuze"})
//@EnableScheduling
@MapperScan("xyz.nuze.mapper")
public class App
{
    public static void main( String[] args )
    {
        System.out.println( "Server started!" );
        SpringApplication.run(App.class, args);
    }
}

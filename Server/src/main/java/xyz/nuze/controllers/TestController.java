package xyz.nuze.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @CreatyBy Michael
 * @Date 2019-06-25 16:41
 */

@RestController
@RequestMapping(value = "/test")
public class TestController {

    @GetMapping("")
    public String test(HttpServletRequest request) throws  Exception {
        return "success123";
    }

}

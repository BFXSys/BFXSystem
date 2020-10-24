package com.zyzd;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author 王凯
 */
@Configuration
@SpringBootApplication
@MapperScan("com.zyzd.dao")
public class ZyzdOaApplication {
    public static void main(String[] args) {
        SpringApplication.run(ZyzdOaApplication.class, args);
    }
}
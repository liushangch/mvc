package com.leo.core.swagger;

import com.github.xiaoymin.swaggerbootstrapui.annotations.EnableSwaggerBootstrapUI;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


/**
 * SwaggerConfig
 *
 * @author LiuChao
 * @date 2018/10/22
 */
@Configuration
@EnableSwagger2
@EnableSwaggerBootstrapUI
@EnableWebMvc
@ComponentScan(basePackages = {"com.leo"})
public class SwaggerConfig {
    private static final String VERSION = "1.0.0";

    ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("接口调试")
                .description("接口开发文档")
                .version(VERSION)
                .contact(new Contact("Leo", "", "mrlliuchao@sina.com"))
                .build();
    }

    @Bean
    public Docket doctorApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .groupName("医生端")
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.leo.module.api.controller"))
                .build();
    }

    @Bean
    public Docket peopleApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .groupName("居民端")
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.leo.module.portal.controller"))
                .build();
    }

}

package com.myboot01;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude= {DataSourceAutoConfiguration.class})
public class Myboot01Application {

	public static void main(String[] args) {
		SpringApplication.run(Myboot01Application.class, args);

	}

}

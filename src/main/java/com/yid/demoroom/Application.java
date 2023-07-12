package com.yid.demoroom;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@ComponentScan("com.yid.demoroom")
@EnableScheduling
@Import(DataSourceConfig.class)
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}

package com.yinuo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class FoodieApplication {


	// TODO: need to fix exclude = {DataSourceAutoConfiguration.class}
	public static void main(String[] args) {
		SpringApplication.run(FoodieApplication.class, args);
	}

}

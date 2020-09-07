package br.com.infnet.tp3servicos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class Tp3servicosApplication {

	public static void main(String[] args) {
		SpringApplication.run(Tp3servicosApplication.class, args);
	}

}

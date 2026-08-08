package com.teamsim.app;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Map;

@SpringBootApplication
@RestController
public class Application {
    public static void main(String[] args) { SpringApplication.run(Application.class, args); }
    
    @GetMapping("/") public Map<String,String> home(){ return Map.of("status","UP","team","promise1991 + dev-opah","env","dev"); }
    @GetMapping("/health") public Map<String,String> health(){ return Map.of("health","OK"); }
}

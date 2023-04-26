package tw.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

	@Bean
	public FilterRegistrationBean<TestFilter> myFilterRegistration() {
		FilterRegistrationBean<TestFilter> registration = new FilterRegistrationBean<>();
		registration.setFilter(new TestFilter());
		registration.addUrlPatterns("/login/*");
		registration.setName("testFilter");
		registration.setOrder(1);
		return registration;
	}

}

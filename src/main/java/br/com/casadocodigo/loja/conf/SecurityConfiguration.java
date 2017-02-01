package br.com.casadocodigo.loja.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.com.casadocodigo.loja.daos.UsuarioDAO;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{

	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
	    .antMatchers("/produtos/form").hasRole("ADMIN")
	    .antMatchers("/carrinho/**").permitAll()
	    .antMatchers(HttpMethod.POST, "/produtos").hasRole("ADMIN")
	    .antMatchers(HttpMethod.GET, "/produtos").hasRole("ADMIN")
	    .antMatchers("/produtos/**").permitAll()
	    .antMatchers("/error").permitAll()
	    .antMatchers("/arquivos-sumario/**").permitAll()
	    .antMatchers("/resources/**").permitAll()
	    .antMatchers("/").permitAll()
	    .anyRequest().authenticated()
	    .and().formLogin().loginPage("/login").permitAll().defaultSuccessUrl("/")
		.and().logout().logoutSuccessUrl("/login").logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.userDetailsService(usuarioDAO)
		.passwordEncoder(new BCryptPasswordEncoder());
	}
}

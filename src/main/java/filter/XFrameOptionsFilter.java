package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class XFrameOptionsFilter implements Filter{

	
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub

	        HttpServletResponse response = (HttpServletResponse) servletResponse;
	        response.addHeader("X-Frame-Options", "DENY");
//	        response.addHeader("X-Frame-Options", "SAMEORIGIN");
//	        response.addHeader("X-Frame-Options", "ALLOW-FROM http:/localhost:8080/TTPetSHop");

	        filterChain.doFilter(servletRequest, response);
	}
	
	 @Override
	    public void init(FilterConfig filterConfig) {
	    }

	    @Override
	    public void destroy() {
	    }

}

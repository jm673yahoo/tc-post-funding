package ca.thinkingcapital.postfunding.config;

import org.springframework.security.web.csrf.CsrfToken;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CsrfGrantingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        CsrfToken csrf = (CsrfToken) servletRequest.getAttribute(CsrfToken.class.getName());
        String token = csrf.getToken();
        if (token != null) {
            HttpServletResponse response = (HttpServletResponse) servletResponse;
            Cookie cookie = new Cookie("XSRF-TOKEN", token);
            cookie.setPath("/");
            response.addCookie(cookie);
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
    }
}

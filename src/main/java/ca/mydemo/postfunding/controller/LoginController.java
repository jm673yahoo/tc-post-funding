package ca.mydemo.postfunding.controller;

import ca.mydemo.postfunding.PostfundingConstants;
import ca.mydemo.postfunding.domain.LoginMessage;
import org.apache.commons.lang3.LocaleUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;


/**
 * @author mmiao
 */
@Controller
@RequestMapping("/")
public class LoginController {
    private static final String LOGIN_ERROR_MESS = "errorMessage";

    private Logger logger = LogManager.getLogger(this.getClass());

    private static String versionAndBuild;

    private static final String ALLOW_MULTI_LINGUAL="ALLOW_MULTI_LINGUAL";

    private int minFailedAttempts4PwdRecovery = 2;
    private int minFailedAttempts = 3;
    private int maxFailedAttempts = 6;
    private int minPasswordLength = 8;

    private static final List<String> activeAccts = new ArrayList<>();


    @Autowired
    private MessageSource messageSource;



    @RequestMapping("preLogin.htm")
    public ModelAndView preLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {

        try {
            // get any error message in session for display purposes.
            String err = (String) WebUtils.getSessionAttribute(req, LOGIN_ERROR_MESS);
            if(StringUtils.isBlank(err)){
                err = req.getParameter(LOGIN_ERROR_MESS);
            }

            req.getSession().invalidate();
            String siteLang =  req.getParameter(PostfundingConstants.LANG_SITE);

            if(StringUtils.isBlank(siteLang)){
                req.setAttribute("siteLang", "en_US");
            }

            Locale locale = LocaleUtils.toLocale(siteLang);
            WebUtils.setSessionAttribute(req, "locale", locale);
            String multiLingualFlag = "true";
            LoginMessage cmd = new LoginMessage();
            cmd.setAllowMultiLingual(Boolean.valueOf(multiLingualFlag));
            cmd.setVersionAndBuild(versionAndBuild);

            if (StringUtils.isNotEmpty(err)) {
                cmd.setErrorMessage(err);
            }

            return new ModelAndView("login", "command", cmd);
        } catch (Exception e)    {
            logger.error("failed!", e);
            return new ModelAndView("critical_error");
        }
    }




    /**
     * Terminates the current session and returns the user to the login page.
     */
    @RequestMapping("critical_error")
    public ModelAndView criticalError(HttpServletRequest req, HttpServletResponse res)
            throws Exception {

        req.getSession().invalidate();
        return new ModelAndView("redirect:critical_error.htm", "errorMessage", "");
    }

    @RequestMapping("signOff")
    public ModelAndView signOff(HttpServletRequest req, HttpServletResponse res)
            throws Exception {

        req.getSession().invalidate();
        return new ModelAndView("redirect:preLogin.htm", "errorMessage", "");
    }






}

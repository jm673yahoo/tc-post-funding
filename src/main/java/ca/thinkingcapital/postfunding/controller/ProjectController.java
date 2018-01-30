package ca.thinkingcapital.postfunding.controller;


import ca.thinkingcapital.postfunding.PostfundingConstants;
import ca.thinkingcapital.postfunding.domain.LoginMessage;
import org.apache.commons.lang3.LocaleUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

/**
 * @author mmiao
 */
@Controller
@RequestMapping("/")
public class ProjectController {
    private Logger logger = LogManager.getLogger(this.getClass());

    @RequestMapping(value="project.htm", method=RequestMethod.POST)
    public ModelAndView preLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
        try {


            req.getSession().invalidate();
            String siteLang = req.getParameter(PostfundingConstants.LANG_SITE);

            if (StringUtils.isBlank(siteLang)) {
                req.setAttribute("siteLang", "en_US");
            }

            Locale locale = LocaleUtils.toLocale(siteLang);
            WebUtils.setSessionAttribute(req, "locale", locale);
            String multiLingualFlag = "true";

            LoginMessage cmd = new LoginMessage();
            return new ModelAndView("project", "command", cmd);
        } catch (Exception e) {
            logger.error("failed!", e);
            return new ModelAndView("error");
        }
    }

    @RequestMapping(value="portfolio.htm", method=RequestMethod.GET)
    public ModelAndView showPortfolio(HttpServletRequest req, HttpServletResponse res) throws Exception {
        try {


            req.getSession().invalidate();
            String siteLang = req.getParameter(PostfundingConstants.LANG_SITE);

            if (StringUtils.isBlank(siteLang)) {
                req.setAttribute("siteLang", "en_US");
            }

            Locale locale = LocaleUtils.toLocale(siteLang);
            WebUtils.setSessionAttribute(req, "locale", locale);
            String multiLingualFlag = "true";

            LoginMessage cmd = new LoginMessage();
            return new ModelAndView("portfolio", "command", cmd);
        } catch (Exception e) {
            logger.error("failed!", e);
            return new ModelAndView("error");
        }
    }

    @RequestMapping(value="bizInfo.htm", method=RequestMethod.GET)
    public ModelAndView showBizInfo(HttpServletRequest req, HttpServletResponse res) throws Exception {
        try {


            req.getSession().invalidate();
            String siteLang = req.getParameter(PostfundingConstants.LANG_SITE);

            if (StringUtils.isBlank(siteLang)) {
                req.setAttribute("siteLang", "en_US");
            }

            Locale locale = LocaleUtils.toLocale(siteLang);
            WebUtils.setSessionAttribute(req, "locale", locale);
            String multiLingualFlag = "true";

            LoginMessage cmd = new LoginMessage();
            return new ModelAndView("bizInfo", "command", cmd);
        } catch (Exception e) {
            logger.error("failed!", e);
            return new ModelAndView("error");
        }
    }
}
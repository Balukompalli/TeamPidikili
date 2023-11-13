package com.jsp.tp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class TPLoginController {
    @Autowired
    tpUserDaoInterface audi;

    @Autowired
    HttpSession ses;

    public static String mainUser = "";

    @RequestMapping(value = "/tpHome", method = RequestMethod.GET)
    public String home() {
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return "tpHome";
    }

    @RequestMapping(value = "/tpLogout", method = RequestMethod.GET)
    public ModelAndView showLogout(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpLogin");

        mav.addObject("tpLoginObj", new TPLogin());
        ses.invalidate();
        System.out.println("session closed in logout:: ");
        //mav.addObject("message", "Logged out from JournalDEV successfully.");
        mainUser = "";
        return mav;
    }


    @RequestMapping(value = "/tpLogin", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpLogin");

        mav.addObject("tpLoginObj", new TPLogin());
        ses.invalidate();
        return mav;
    }


    /*,RequestMethod.GET*/
    @RequestMapping(value = "/tpLoginProcess", method = {RequestMethod.POST})
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
                                     @ModelAttribute("tpLoginObj") TPLogin tpLoginObj, HttpSession session) {

        ModelAndView mav = null;
        HashMap hm = new HashMap();
        ArrayList<TPUserPojo> user = new ArrayList<TPUserPojo>();
        String str = "";
        str = (String) audi.validateAdminUser1(tpLoginObj);
        System.out.println(str);

        if (str == "No User" && "No User".equals(str)) {
            mav = new ModelAndView("tpLogin");
            request.setAttribute("msg1", "msg1");
            mav.addObject("msg", "Username Not registered!! Register the user..");

        }
        if (str == "No pwd" && "No pwd".equals(str)) {
            mav = new ModelAndView("tpLogin");
            mav.addObject("msg", "Password wrong!! re-enter password");
            request.setAttribute("msg1", "msg1");
        }

        if (str == "correct pwd" && "correct pwd".equals(str)) {
            user = audi.validateAdminUser(tpLoginObj);
            System.out.println(user.get(0).getUsername());
            if (user.get(0).getUsername().equals("admin") && user.get(0).getPassword().equals("admin")) {
                mav = new ModelAndView("tpDashboard");
                session.setAttribute("usrName", user.get(0).getUsername());
                mainUser = user.get(0).getUsername();
            } else if (user != null) {

                System.out.println("----------");
                System.out.println("y value :: " + user.get(0));
                request.setAttribute("imgId", user.get(0).getId());
                request.setAttribute("userData", user);
                request.setAttribute("userDataImage", user.get(0).getImagename().getOriginalFilename());
                ses.setAttribute("userDataImage1", user.get(0).getImagename().getOriginalFilename());
                System.out.println("image name is :: " + user.get(0).getImagename().getOriginalFilename());
                request.setAttribute("rootPath", System.getProperty("catalina.base"));
                mav = new ModelAndView("tpWelcome");
                mav.addObject("userName", user.get(0).getUsername());
                session = request.getSession();
                session.setAttribute("usrName", user.get(0).getUsername());

            }
        }

        return mav;
    }

    @RequestMapping(value = "/tpLoginProcess", method = {RequestMethod.GET})
    public ModelAndView loginAdmin(HttpServletRequest request, HttpServletResponse response,
                                   @ModelAttribute("tpLoginObj") TPLogin tpLoginObj, HttpSession session) {

        ModelAndView mav = null;
        HashMap hm = new HashMap();
        ArrayList<TPUserPojo> user = new ArrayList<TPUserPojo>();
        String str = "";
        str = (String) audi.validateAdminUser1(tpLoginObj);
        System.out.println(str);
        mav = new ModelAndView("tpDashboard");

        return mav;
    }


    @RequestMapping(value = "/tpProject", method = RequestMethod.GET)
    public ModelAndView showProjects(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj", new TPProject());
        request.setAttribute("tpProjectObj", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject1", method = RequestMethod.GET)
    public ModelAndView showProject1(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj1", new TPProject());
        request.setAttribute("tpProjectObj1", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject2", method = RequestMethod.GET)
    public ModelAndView showProject2(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj2", new TPProject());
        request.setAttribute("tpProjectObj2", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject3", method = RequestMethod.GET)
    public ModelAndView showProject3(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj3", new TPProject());
        request.setAttribute("tpProjectObj3", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject4", method = RequestMethod.GET)
    public ModelAndView showProject4(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj4", new TPProject());
        request.setAttribute("tpProjectObj4", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject5", method = RequestMethod.GET)
    public ModelAndView showProject5(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj5", new TPProject());
        request.setAttribute("tpProjectObj5", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject6", method = RequestMethod.GET)
    public ModelAndView showProject6(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj6", new TPProject());
        request.setAttribute("tpProjectObj6", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }


    @RequestMapping(value = "/tpProject7", method = RequestMethod.GET)
    public ModelAndView showProject7(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj7", new TPProject());
        request.setAttribute("tpProjectObj7", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject8", method = RequestMethod.GET)
    public ModelAndView showProject8(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj8", new TPProject());
        request.setAttribute("tpProjectObj8", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }

    @RequestMapping(value = "/tpProject9", method = RequestMethod.GET)
    public ModelAndView showProject9(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("msg1", null);
        ModelAndView mav = new ModelAndView("tpProject");

        mav.addObject("tpProjectObj9", new TPProject());
        request.setAttribute("tpProjectObj9", new TPProject());
        ses.invalidate();
        ses.setAttribute("usrName", mainUser);
        return mav;
    }


}



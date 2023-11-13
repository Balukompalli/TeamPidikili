package com.jsp.tp.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class TPProjectMasterController {

    @Autowired
    public tpProjectMasterInterface tpPMDao;

    @Autowired
    HttpSession ses;

    public TPProjectMasterController() {
        // TODO Auto-generated constructor stub
    }

    @RequestMapping(value = "/tpProjectMaster", method = {RequestMethod.POST, RequestMethod.GET})
    //@ResponseBody
    public ModelAndView showRegisterMasterForm(HttpServletRequest request,
                                               HttpServletResponse response, @ModelAttribute(value = "tpModelAttr") TPProjectPojo tpProjectpojo) {

        ModelAndView mav = new ModelAndView();
        //addUser(request,response,tpProjectpojo );
        System.out.println("session closed in project Master:: ");
        mav.addObject("tpModelAttr", new TPProjectPojo());

        return mav;
    }

    @RequestMapping(value = "/tpProjectMasterProcess", method = RequestMethod.POST)
    //@Autowired(required=true)
    public ModelAndView addProjectDetails(HttpServletRequest request, HttpServletResponse response,
                                          @ModelAttribute("tpModelAttr") TPProjectPojo tpProjectpojo) {
        ModelAndView mv = new ModelAndView("tpProjectMaster");
        System.out.println("TP Project registeration done success;;");
        boolean temp;
        temp = tpPMDao.tpProjectMasterInsertion(tpProjectpojo);
        if (temp == true) {
            request.setAttribute("msg", "Project details inserted Sucessfully ..");
            request.setAttribute("tpModelAttr", tpProjectpojo);

        } else {
            request.setAttribute("msg", "Project details insertion Failed ..");
            request.setAttribute("tpModelAttr", tpProjectpojo);
        }


        mv.addObject("tpModelAttr", tpProjectpojo);

        return mv; //new ModelAndView("tpWelcome");
    }


    @RequestMapping(value = "/tpProjectMasterProcess", method = RequestMethod.GET)
    public ModelAndView showTPProjects(HttpServletRequest request, HttpServletResponse response,
                                       @ModelAttribute("tpModelAttr") TPProjectPojo tpProjectpojo) {

        ModelAndView mv = new ModelAndView("tpProjectMaster");
        try {

            System.out.println("I am presenting registeration page");

        } catch (Exception e) {

            System.out.println("I am presenting error");
        }
        mv.addObject("tpModelAttr", tpProjectpojo);

        return mv;
    }

  
  

  
/*  @RequestMapping(value = "/tpProjectMasterProcess", method = {RequestMethod.POST,RequestMethod.GET})
  @ResponseBody
  public ModelAndView registerProjectMaster(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("tpP") TPProjectPojo tpProjectpojo) {
	  boolean temp;
	  ModelAndView mav=new ModelAndView("tpWelcome");
	  
	  try{	
		  System.out.println("details register :: ");
		  temp=tpPMDao.tpProjectMasterInsertion(tpProjectpojo);
		  if(temp==true){
			  request.setAttribute("msg", "Registration Sucessfully Completed..");
			  //request.setAttribute("tpP", tpProjectpojo);
			  
		  }else{
			  request.setAttribute("msg", "Registration FAILED..");
			  //request.setAttribute("tpProjectpojo",tpProjectpojo);
		  }
		  mav.addObject("tpP", new TPProjectPojo());
			

	  }catch(Exception e){
		  System.out.println("I am presenting error");
	  }
	  return mav;
  }*/

}

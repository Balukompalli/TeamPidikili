package com.jsp.tp;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class TPRegisterationController {

    public TPRegisterationController() {
        // TODO Auto-generated constructor stub
    }


    @Autowired
    public tpUserDaoInterface uDao;
    @Autowired
    HttpSession ses;

    @RequestMapping(value = "/tpRegister", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public ModelAndView showRegisterPage(HttpServletRequest request,
                                         HttpServletResponse response, @ModelAttribute(value = "user") TPUserPojo user) {

        ArrayList<HashMap> tpUserPojo = new ArrayList<HashMap>();

        //tpUserPojo is passed and state details are stored in tpUserPojo
        tpUserPojo = uDao.tpStateDetails(tpUserPojo);
        ModelAndView mav = new ModelAndView();
        HashMap hmStateName = new HashMap();

        for (int i = 0; i < tpUserPojo.size(); i++) {
            hmStateName.put(tpUserPojo.get(i).get("STATE_ID"), tpUserPojo.get(i).get("STATE_NAME"));
        }
        request.setAttribute("hmStateName", hmStateName);

        //----
        //district details
        ArrayList<HashMap> tpDistrictPojo = new ArrayList<HashMap>();


        HashMap hmDistrictName = new HashMap();
        tpDistrictPojo = uDao.tpDistrictDetails(tpDistrictPojo);

        for (int i = 0; i < tpDistrictPojo.size(); i++) {
            hmDistrictName.put(tpDistrictPojo.get(i).get("DISTRICT_ID"), tpDistrictPojo.get(i).get("DISTRICT_NAME"));
        }
        request.setAttribute("hmDistrictName", hmDistrictName);
        //-------

        HashMap hm = new HashMap();


        System.out.println("session closed in reigster:: ");
        mav.addObject("user", new TPUserPojo());

        return mav;
    }

    @RequestMapping(value = "/tpDivision", method = RequestMethod.POST)

    public @ResponseBody String tpDivision(@RequestParam("districtName") String districtName, HttpServletRequest request,
                                           HttpServletResponse response) throws IOException {
        ArrayList<HashMap> tpUserPojo = new ArrayList<HashMap>();

        //district details
        ArrayList<HashMap> tpDivisionPojo = new ArrayList<HashMap>();

        System.out.println("district :: " + districtName);

        HashMap hmSname = new HashMap();
        if (districtName != null) {
            hmSname.put("districtName", districtName);
        } else {
            hmSname = null;
        }
        tpDivisionPojo.add(hmSname);

        HashMap hmDivisionName = new HashMap();
        tpDivisionPojo = uDao.tpDivisionDetails(tpDivisionPojo);
        System.out.println(tpDivisionPojo.size());
        for (int i = 0; i < tpDivisionPojo.size(); i++) {
            hmDivisionName.put(tpDivisionPojo.get(i).get("DIVISION_ID"), tpDivisionPojo.get(i).get("DIVISION_NAME"));
        }
        JSONObject obj = null;
        List<JSONObject> jsonObj = new ArrayList<JSONObject>();

        for (HashMap<String, String> data : tpDivisionPojo) {
            obj = new JSONObject(data);
            System.out.println(obj);

            jsonObj.add(obj);

        }
        JSONArray test = new JSONArray(jsonObj);
        System.out.println("test json object is  :: " + test.toString());

        return test.toString();
    }


    @RequestMapping(value = "/tpMandal", method = RequestMethod.POST)

    public @ResponseBody String tpMandal(@RequestParam("divisionName") String divisionName, HttpServletRequest request,
                                         HttpServletResponse response) throws IOException {
        ArrayList<HashMap> tpUserPojo = new ArrayList<HashMap>();

        //----
        //division details
        ArrayList<HashMap> tpMandalPojo = new ArrayList<HashMap>();

        System.out.println("Division Name is :: " + divisionName);

        HashMap hmSname = new HashMap();
        if (divisionName != null) {
            hmSname.put("divisionName", divisionName);
        } else {
            hmSname = null;
        }
        tpMandalPojo.add(hmSname);

        HashMap hmMandalName = new HashMap();
        tpMandalPojo = uDao.tpMandalDetails(tpMandalPojo);
        System.out.println(tpMandalPojo.size());
        for (int i = 0; i < tpMandalPojo.size(); i++) {
            hmMandalName.put(tpMandalPojo.get(i).get("MANDAL_ID"), tpMandalPojo.get(i).get("MANDAL_NAME"));
        }
        JSONObject obj = null;
        List<JSONObject> jsonObj = new ArrayList<JSONObject>();

        for (HashMap<String, String> data : tpMandalPojo) {
            obj = new JSONObject(data);
            System.out.println(obj);

            jsonObj.add(obj);

        }
        JSONArray test = new JSONArray(jsonObj);
        System.out.println("test json object is  :: " + test.toString());

        return test.toString();

    }


    /*		public static HashMap<String,String> toMap(ArrayList<HashMap> tpPojoAlHm){
                ArrayList stateId =new ArrayList();
                HashMap<Integer,String> hm=new HashMap<Integer,String>();
                HashMap<String,String> hm1=new HashMap<String,String>();


                for(int i=0;i<tpPojoAlHm.size();i++){

                    System.out.println("Key is ::: "+tpPojoAlHm.get(i));
                    //	hm.put(i+1,tpPojoAlHm.get(i).get(i+1).toString());

                }
                    for ( int key : hm.keySet() ) {
                        System.out.println( key );
                        stateId.add(key);
                        hm1.put("stateID_"+(key), stateId.get(key-1).toString());
                    }
                    return hm1;
                List<JSONObject> jsonObj = new ArrayList<JSONObject>();

                for(HashMap<String, String> data : tpPojoAlHm) {
                    JSONObject obj = new JSONObject(data);
                    jsonObj.add(obj);

                }

                JSONArray test = new JSONArray(jsonObj);

                System.out.println("test json object is  :: "+ test.toString());

                return test;
            }*/
    public static JSONArray toMap(ArrayList<HashMap> tpPojoAlHm) throws IOException {
        ArrayList stateId = new ArrayList();
        HashMap<Integer, String> hm = new HashMap<Integer, String>();
        HashMap<String, String> hm1 = new HashMap<String, String>();

        for (int i = 0; i < tpPojoAlHm.size(); i++) {

            System.out.println("Key is ::: " + tpPojoAlHm.get(i));

        }

        List<JSONObject> jsonObj = new ArrayList<JSONObject>();

        for (HashMap<String, String> data : tpPojoAlHm) {
            JSONObject obj = new JSONObject(data);
            jsonObj.add(obj);

        }

        JSONArray test = new JSONArray(jsonObj);

        System.out.println("test json object is  :: " + test.toString());

        return test;

        //return test;
    }


    @RequestMapping(value = "/tpRegisterProcess", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView addTPUser(HttpServletRequest request, HttpServletResponse response,
                                  @ModelAttribute("user") TPUserPojo tpUser) {
        boolean temp;
        try {
            temp = uDao.tpRegister1(tpUser);
            if (temp == true) {
                request.setAttribute("msg", "Registration Sucessfully Completed..");
                request.setAttribute("user", tpUser);

            } else {
                request.setAttribute("msg", "Registration FAILED..");
                request.setAttribute("user", tpUser);
            }

        } catch (Exception e) {

            System.out.println("I am presenting error");
        }
        return new ModelAndView("tpRegister");
    }


}

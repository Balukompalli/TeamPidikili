package com.jsp.tp;

import java.util.ArrayList;


public interface tpUserDaoInterface {

    boolean tpRegister1(TPUserPojo user);
    ArrayList<TPUserPojo> validateAdminUser(TPLogin tpLogin);
    String validateAdminUser1(TPLogin tpLogin);
    ArrayList tpStateDetails(ArrayList tpUserPojo);
    ArrayList tpDivisionDetails(ArrayList tpUserPojo);
    ArrayList tpDistrictDetails(ArrayList tpUserPojo);
    ArrayList tpMandalDetails(ArrayList tpUserPojo);

}

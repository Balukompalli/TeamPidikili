package com.jsp.tp;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;


public class TPUserRegDaoImpl implements tpUserDaoInterface {
    @Autowired
    DataSource datasource;
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    HttpSession session = null;


    public boolean tpRegister1(TPUserPojo user) {
        File serverFile = null;
        boolean temp = true;
        //System.out.println( user.getImagename());
        try {
            byte[] bytes = user.getImagename().getBytes();
            String rootPath = System.getProperty("catalina.home");

            String name = user.getImagename().getOriginalFilename();
            System.out.println("name is :: " + name);
            String ext = name.substring(name.lastIndexOf("."), name.length());
            Date dt = new Date();
            File dir = new File(rootPath + "/resources" + "/tpProfilePix");
            dir.mkdirs();
            if (dir.exists() == false) {
                dir.mkdirs();

                System.out.println("directory created .." + dir.exists());
                serverFile = new File(dt.getDate() + name);

                serverFile = new File(rootPath + "/resources" + "/tpProfilePix/" + serverFile);
                BufferedOutputStream outStream = new BufferedOutputStream(new FileOutputStream(serverFile));
                outStream.write(bytes);
                outStream.close();
                //System.out.println(serverFile.toString());

            } else {
                System.out.println("else part");

                serverFile = new File(dt.getDate() + name);
                serverFile = new File(rootPath + "/resources" + "/tpProfilePix/" + serverFile);
                BufferedOutputStream outStream = new BufferedOutputStream(new FileOutputStream(serverFile));
                outStream.write(bytes);
                outStream.close();
                //System.out.println(serverFile.toString());

            }
            System.out.println("-----------------------------");
            //	System.out.println(serverFile.getName().toString());

            String sql = "insert into tpregisteration values(tp_admin_id_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
            jdbcTemplate.update(sql, new Object[]{user.getUsername(), user.getPassword(),
                    user.getFirstname(), user.getLastname(), user.getSurname(), user.getPhonenum(), user.getEmail(),
                    serverFile.toString(), user.getStateName(), user.getDistrictName(), user.getDivisionName(), user.getMandalName()});
            System.out.println("I am within try block of registeration and registration succefful..");
            temp = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("registration error..");
            temp = false;
        }
        return temp;
    }

    public ArrayList<TPUserPojo> validateAdminUser(TPLogin login) {
        //String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()+ "'";
        List<TPUserPojo> users = new ArrayList<TPUserPojo>();
        ArrayList<TPUserPojo> al;
        ArrayList al2 = new ArrayList();
        int y = 0;
        String sql = "";
        //String sqlImagesData = "select * from users_images ui  join users u  on ui.image_id=u.slno where u.username='" + login.getUsername() + "'";
        //String sqlImagesData = "select * from tpRegisteration where username='" + login.getUsername() + "'";
        String sqlImagesData = "select * from tpRegisteration tr join tp_division_master tpDivision on tr.divisionname=tpDivision.division_id where username='" + login.getUsername() + "'";

        int x = jdbcTemplate.update(sqlImagesData);
        System.out.println(sqlImagesData);
        if (x == 0) {
            System.out.println("profile  Photo is ...");
            return null;
        } else if (x > 0) {
            users = jdbcTemplate.query(sqlImagesData, new UserMapper());
        }
        session.setAttribute("userName", login.getUsername());
        if (users.size() != 0) {
            for (int k = 0; k < users.size(); k++) {
                System.out.println("after sql:: " + users.get(k).getImagename().getName() + " data size is:: " + users.size());
            }
        } else {
            System.out.println("No rows selected :: ");
        }
        al = new ArrayList<TPUserPojo>();
        for (int k = 0; k < users.size(); k++) {
            al.add(users.get(k));
        }
        //return users.size() > 0 ? al : null;
        return al;
    }

    //----------------


    public String validateAdminUser1(TPLogin login) {

        List<TPUserPojo> users;
        ArrayList<TPUserPojo> al;
        ArrayList al2 = new ArrayList();
        ArrayList alist = new ArrayList();
        int y = 0;
        String sql = "";
        String no_user = "No User";
        String no_pwd = "No pwd";
        String correct_pwd = "correct pwd";
        String sqlUserData = "select * from  tpRegisteration where username='" + login.getUsername() + "'";
        int x = jdbcTemplate.update(sqlUserData);
        if (x == 0) {
            System.out.println("user not exist.. register first");

            return no_user;
        } else if (x > 0) {
            System.out.println("user exist..check password exist or not ");
            sql = "select * from tpRegisteration where username='" + login.getUsername() + "' and password='" + login.getPassword() + "'";

            System.out.println(sql);
            y = jdbcTemplate.update(sql);
            if (y == 0) {
                System.out.println("wrong password entered  ");
                al2.add(y);
                return no_pwd;
            } else {
                System.out.println("correct password :: password exist ");
                System.out.println("inner sql :: " + sql);

            }
        }


        return correct_pwd;

    }

    public ArrayList tpStateDetails(ArrayList tpUserPojo) {

        ArrayList<HashMap> usersStateData = new ArrayList<HashMap>();

        String sqlStateList = "select * from tp_state_master  ";
        usersStateData = (ArrayList<HashMap>) jdbcTemplate.query(sqlStateList, new UserMapper2());


        for (int i = 0; i < usersStateData.size(); i++) {
            //System.out.println(usersStateData.get(i).get("STATE_NAME"));
        }

        return usersStateData;
    }

    public ArrayList tpDistrictDetails(ArrayList tpUserPojo) {
        String sqlDistrictList = "";
        String stateName = "";
        ArrayList<HashMap> districtData = new ArrayList<HashMap>();
        ArrayList<HashMap> districtData1 = new ArrayList<HashMap>();

        if (!tpUserPojo.isEmpty()) {
            districtData1.add((HashMap) tpUserPojo.get(0));

            if (districtData1.get(0) != null) {
                System.out.println(districtData1.get(0).get("stateName"));
                stateName = districtData1.get(0).get("stateName").toString();
            } else {
                stateName = "0";
            }
            if (tpUserPojo.get(0) != null) {
                System.out.println("state Name is  :: " + tpUserPojo.get(0));
            } else {
                System.out.println("state Name is  :: " + tpUserPojo);
            }
            HashMap hmDistrict = new HashMap();

            if (!stateName.equals("0")) {
                sqlDistrictList = "select * from tp_district_master where state_id='" + stateName + "' order by district_name";
            }
        } else {

            sqlDistrictList = "select * from tp_district_master order by district_name";
        }


        districtData = (ArrayList<HashMap>) jdbcTemplate.query(sqlDistrictList, new UserMapper2());

        return districtData;
    }

    public ArrayList tpDivisionDetails(ArrayList tpUserPojo) {

        String districtName = "";
        String sqlDivisionList = "";
        ArrayList<HashMap> divisionData = new ArrayList<HashMap>();
        //added code

        ArrayList<HashMap> divisionData1 = new ArrayList<HashMap>();
        if (!tpUserPojo.isEmpty()) {
            divisionData1.add((HashMap) tpUserPojo.get(0));
            if (divisionData1.get(0) != null) {
                System.out.println(divisionData1.get(0).get("districtName"));
                districtName = divisionData1.get(0).get("districtName").toString();
            } else {
                districtName = "0";
            }
            if (tpUserPojo.get(0) != null) {
                System.out.println("district Name is  :: " + tpUserPojo.get(0));
            } else {
                System.out.println("district  Name is  :: " + tpUserPojo);
            }

            if (!districtName.equals("0")) {
                sqlDivisionList = "select * from tp_division_master where district_id='" + districtName + "' order by division_name";
                System.out.println(sqlDivisionList);
            } else {
                sqlDivisionList = "select * from tp_division_master order by division_name";
                //sqlDivisionList = "select * from tp_division_master where district_id='"+districtName+"' order by division_name";
            }
        } else {
            sqlDivisionList = "select * from tp_division_master order by division_name";
        }
        //added code closed
        //String sqlDivisionList = "select * from tp_division_master order by division_name";
        divisionData = (ArrayList<HashMap>) jdbcTemplate.query(sqlDivisionList, new UserMapper2());

        return divisionData;
    }

    public ArrayList tpMandalDetails(ArrayList tpUserPojo) {

        String divisionName = "";
        String sqlMandalList = "";
        ArrayList<HashMap> mandalData = new ArrayList<HashMap>();
        //added code

        ArrayList<HashMap> mandalData1 = new ArrayList<HashMap>();
        if (!tpUserPojo.isEmpty()) {
            mandalData1.add((HashMap) tpUserPojo.get(0));
            if (mandalData1.get(0) != null) {
                System.out.println(mandalData1.get(0).get("divisionName"));
                divisionName = mandalData1.get(0).get("divisionName").toString();
            } else {
                divisionName = "0";
            }
            if (tpUserPojo.get(0) != null) {
                System.out.println("division Name is  :: " + tpUserPojo.get(0));
            } else {
                System.out.println("division  Name is  :: " + tpUserPojo);
            }

            if (!divisionName.equals("0")) {
                sqlMandalList = "select * from tp_mandal_master where division_id='" + divisionName + "' order by mandal_name";
                System.out.println(sqlMandalList);
            } else {
                sqlMandalList = "select * from tp_mandal_master order by mandal_name";
            }
        } else {
            sqlMandalList = "select * from tp_division_master order by division_name";
        }
        //added code closed
        //String sqlDivisionList = "select * from tp_division_master order by division_name";
        mandalData = (ArrayList<HashMap>) jdbcTemplate.query(sqlMandalList, new UserMapper2());

        return mandalData;
    }
			
			
			/*public String  sampleMethod(ArrayList tpUserPojo){
					
				String stateName="";
				
				ArrayList<HashMap> alHM=new ArrayList<HashMap>();
				
				if(!tpUserPojo.isEmpty()){
					alHM.add((HashMap) tpUserPojo.get(0));
					if(alHM.get(0)!=null){
						System.out.println(alHM.get(0).get("stateName"));
						stateName=alHM.get(0).get("stateName").toString();
					}else{
						stateName="0";
					}
					if(tpUserPojo.get(0)!=null){
						  System.out.println("state Name is  :: "+tpUserPojo.get(0));
					}
					else{
						System.out.println("state Name is  :: "+tpUserPojo);
					}
				}
				return null;
			}*/


}
//----------------


class UserMapper2 implements RowMapper<HashMap> {
    public HashMap mapRow(ResultSet rs, int arg1) throws SQLException {
        HashMap hm = new HashMap();
        ResultSetMetaData rsmd = rs.getMetaData();
        int cols = rsmd.getColumnCount();
        //System.out.println("No. OF columns :: "+cols);
        for (int i = 1; i <= cols; i++) {
            String colName = rsmd.getColumnName(i);
            //System.out.println(colName);
            if (rs != null) {
                hm.put(rsmd.getColumnLabel(i), rs.getObject(colName));
            }
        }
        //System.out.println(rsmd.getColumnLabel(1));
        //System.out.println(rsmd.getColumnLabel(2));
	    
	  		/*if(rs!=null){
	  			hm.put(rsmd.getColumnLabel(1) ,rs.getInt("state_id"));
	  			hm.put(rsmd.getColumnLabel(2) , rs.getString("state_name"));
	  		}*/
        return hm;
    }


}

class UserMapper implements RowMapper<TPUserPojo> {
    public TPUserPojo mapRow(ResultSet rs, int arg1) throws SQLException {
        TPUserPojo user = new TPUserPojo();

        user.setId(rs.getInt("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setFirstname(rs.getString("firstname"));
        user.setLastname(rs.getString("lastname"));
        user.setLastname(rs.getString("surname"));
        user.setEmail(rs.getString("email"));
        user.setDivisionName(rs.getString("DIVISION_NAME"));
        //user.setPhonenum(rs.getLong("phone"));
        //user.setStateName(rs.getString("statename"));
        //  System.out.println(rs.getString("imagename"));
        File f1 = new File(rs.getString("imagename"));
        System.out.println("File is : " + f1.getName());
        try {
            File file = new File(rs.getString("imagename"));
            DiskFileItem fileItem = new DiskFileItem(rs.getString("imagename"), "image/png", false, file.getName(), (int) file.length(), file.getParentFile());

            fileItem.getOutputStream();
            System.out.println("in try success..");
            MultipartFile multipartFile = new CommonsMultipartFile(fileItem);
            //System.out.println("Multi name::: "+multipartFile.getOriginalFilename());
            user.setImagename(multipartFile);

        } catch (IOException e) {
            // TODO Auto-generated catch block
            System.out.println("catch failure ..");

            e.printStackTrace();
        }
        return user;
    }


}

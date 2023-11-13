package com.jsp.tp.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.util.Date;


public class TPProjectMasterDaoImpl implements tpProjectMasterInterface {
    @Autowired
    DataSource datasource;
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    HttpSession session = null;

    public boolean tpProjectMasterInsertion(TPProjectPojo tpProjectpojo) {

        boolean temp = true;
        try {
            String rootPath = System.getProperty("catalina.home");

            Date dt = new Date();

            String sql = "insert into tp_project_master values(project_sequence.nextval,?,?,?,?,?)";
            jdbcTemplate.update(sql, new Object[]{tpProjectpojo.getProjectName(), tpProjectpojo.getProjectManager(),
                    tpProjectpojo.getProjectHead(), tpProjectpojo.getStartDate(), tpProjectpojo.getEndDate()});
            System.out.println("I am within try block of registeration and registration succefful..");
            temp = true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("registration error..");
            temp = false;
        }
        return temp;
    }

	/*public TPProjectMasterDaoImpl() {
		// TODO Auto-generated constructor stub
	}*/

}

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>

</head>

<style type="text/css">
    div.box-header.with-home {
        padding: 5px;
        font-size: 14px;
    }


    .box-body.with-home-body {
        padding-top: 10px;

        padding: 10px;
        border-top-right-radius: 25px;
        border-top-left-radius: 25px;
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
        border: 1px dotted black;

        font-family: "Trebuchet MS", "Myriad Pro", Arial, sans-serif;
    }

    .fa.fa-child {
        color: red;
    }

    .home-text {
        font-size: 16px;
        font-style: italic;
    }

    .box-body .with-body-border {
        padding: 2px;
        border: 1px solid black;
    }
</style>
<div class="container-fluid">
    <c:if test="${msg1!=null}">
        <div class="alert alert-success text-center">
            <strong>${msg}</strong><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        </div>
    </c:if>


    <form:form id="loginForm" modelAttribute="tpLoginObj" action="tpLoginProcess" method="post">
        <div class="panel-group">
            <div class="col-xs-12 col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Login as a Janasena Member? <i class="fa fa-child"
                                                       style="font-size: 32px;" aria-hidden="true"></i> <i
                            class="fa fa-child" style="font-size: 26px;" aria-hidden="true"></i>
                        <i class="fa fa-child" style="font-size: 20px;"
                           aria-hidden="true"></i> &nbsp; &nbsp; &nbsp; <span
                            class="glyphicon glyphicon-hand-right"></span>
                    </div>
                    <div class="panel-body" style="border: 1px dotted black;">
                        Team Pidikili is a famous group which is working for <font
                            style="color: #0d00ff;"> Janasena Party</font> and <font
                            style="color: #0d00ff">Sri. Pawan Kalyan</font>. Team Pidikili
                        promotes Janasena Party(JSP) to all over the villages,districts
                        and states in India and as well as Abroad Team Pidikili members
                        are living at India and Abroad also.
                    </div>
                </div>

            </div>


            <div class="col-xs-12 col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
                        <div class="form-group clearfix">
                            <form:label path="username" for="username" class="col-xs-12">Username</form:label>
                            <form:input path="username" class="col-xs-12 form-control" name="username" id="username"
                                        placeholder="Enter Username" onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="password" for="password" class="col-xs-12">Password</form:label>
                            <form:password path="password" class="col-xs-12 form-control " name="password" id="password"
                                           placeholder="Enter Password"/>
                        </div>
                    </div>
                    <div class="panel-footer with-border text-center">
                        <form:button class="btn btn-primary" id="tplogin" name="tplogin">Login</form:button>
                    </div>
                    <div class="help-text text-center" style="font-style: italic; color: red;">
                            ${message}
                    </div>
                </div>
            </div>
                <%-- <div class="panel panel-primary _col-xs-12">
      <div class="panel-heading">Login</div>
      <div class="panel-body">



                                <div class="form-group clearfix">

                                        <form:label path="username" for="username" class="col-xs-12">Username</form:label>

                                        <form:input path="username" class="col-xs-12 form-control" name="username" id="username" placeholder="Enter Username" onkeyup="alphabetsOnly(this)" maxlength="30"/>

                                </div>



                                <div class="form-group clearfix">

                                        <form:label path="password" for="password" class="col-xs-12">Password</form:label>

                                        <form:password path="password" class="col-xs-12 form-control " name="password" id="password" placeholder="Enter Password"/>
                                </div>

      </div>

          <div class="panel-footer with-border text-center">
                                    <form:button class="btn btn-primary" id="tplogin" name="tplogin">Login</form:button>

                </div>
                        <div class="help-text text-center" style="font-style: italic; color: red;">
                                ${message}
                        </div>


      
      
    </div> --%>

            <!-- </div> -->
        </div>

        <%-- <div class="col-xs-12">
            <div class="col-xs-7">
                <div class="box box-primary" style="background: rgba(255,255,255,0.5);
    border: thin solid rgba(255,255,255,1);
    _padding: 20px;">
                    <div class="box-header with-home">
                        <h3 class="box-title">Login as a Janasena Member?
                        <i class="fa fa-child" style="font-size: 32px;" aria-hidden="true"></i>
                        <i class="fa fa-child" style="font-size: 26px;" aria-hidden="true"></i>
                        <i class="fa fa-child" style="font-size: 20px;" aria-hidden="true"></i>

                        &nbsp; &nbsp; &nbsp; <span class="glyphicon glyphicon-hand-right"></span>


                             </h3>
                        <hr>
                    </div>

                    <div class="box-body with-home-body">
                        <p class="home-text">
                            Team Pidikili is a famous group which is working for<br> <font
                                style="color: #0d00ff;"> Janasena Party</font> and <font
                                style="color: #0d00ff">Sri. Pawan Kalyan</font>.
                                 Team Pidikili promotes Janasena Party(JSP) to all over the villages,districts and states in India and as well as Abroad
                                  <br> Team Pidikili members are living at
                            India and Abroad also. <br> &nbsp;&nbsp;&nbsp;
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-xs-5 col-xs-12">
                <div class="box box-primary box-login col-xs-12">
                        <div class="box-header with-home">
                            <h3 class="box-title">Login</h3>

                        </div>
                        <hr>
                        <div class="box-body box-primary-login" >
                                <div class="row">
                                <div class="form-group clearfix">
                                    <div class="col-xs-5 with-body-label">
                                        <form:label path="username">Username</form:label>
                                    </div>
                                    <div class="col-xs-7">
                                        <form:input path="username" class="col-xs-12" name="username" id="username" placeholder="Enter Username" onkeyup="alphabetsOnly(this)" maxlength="30"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group clearfix">
                                    <div class="col-xs-5 with-body-label">
                                        <form:label path="password">Password</form:label>
                                    </div>
                                    <div class="col-xs-7">
                                        <form:password path="password" name="password" id="password" placeholder="Enter Password"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="box-footer with-border text-center">
                                    <form:button id="tplogin" name="tplogin">Login</form:button>
                        </div>

                        <div class="help-text text-center" style="font-style: italic; color: red;">
                                ${message}
                        </div>

                </div>

            </div>


            </div> --%>


    </form:form>
</div>
        
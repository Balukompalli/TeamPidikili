<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>

</head>
<title>Project Master </title>
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

    input[type="text"], input[type="password"], input[type="file"] {
        font-weight: 200;
    }

</style>

<script type="text/javascript">
    $(document).ready(function () {
        $("#username").val('');
        $("#password").val('');
        $("#firstname").val('');
        $("#lastname").val('');
        $("#surname").val('');
        $("#email").val('');
        $("#phonenum").val('');
        $("#imagename").val('');

    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
    });


</script>

<div class="container-fluid">
    <%-- <form:input path="stateId" class="hidden form-control"
                                name="stateId" id="firstname" placeholder="Enter Firstname"
                                onkeyup="alphabetsOnly(this)" maxlength="30" /> --%>

    <form:form id="tpProjectmasterForm" modelAttribute="tpModelAttr"
               action="tpProjectMasterProcess" method="POST" ___enctype="multipart/form-data">
        <%--         <form:hidden path="projectName"/>
                <form:hidden path="projectManager"/>
    <form:hidden path="projectHead"/>
    <form:hidden path="startDate"/>
    <form:hidden path="endDate"/>
     --%>

        <c:if test="${msg!=null}">
            <div class="alert alert-success text-center">
                <strong>${msg}</strong><a href="tpRegister" class="close" data-dismiss="alert"
                                          aria-label="close">&times;</a>
            </div>
        </c:if>

        <div class="panel-group">

            <div class="col-xs-12 col-sm-6">
                <!-- <div class="panel panel-primary">

                    <div class="panel-heading">
                        Register as Team Pidikili Member? <i class="fa fa-child"
                            style="font-size: 32px;" aria-hidden="true"></i> <i
                            class="fa fa-child" style="font-size: 26px;" aria-hidden="true"></i>
                        <i class="fa fa-child" style="font-size: 20px;" aria-hidden="true"></i>
                        &nbsp; &nbsp; &nbsp; <span class="glyphicon glyphicon-hand-right"></span>
                    </div>
                    <div class="panel-body" style="border: 1px dotted black;">
                        Team Pidikili is a famous group which is working for <font
                            style="color: #0d00ff;"> Janasena Party</font> and <font
                            style="color: #0d00ff">Sri. Pawan Kalyan</font>. Team Pidikili
                        promotes Janasena Party(JSP) to all over the villages,districts
                        and states in India and as well as Abroad Team Pidikili members
                        are living at India and Abroad also.
                    </div>
                </div> -->

            </div>


            <div class="col-xs-12 col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Project Form
                        <i class="fa fa-user-circle-o " style="font-size:36px;color:red;padding-top:25px;"></i>
                    </div>
                    <div class="panel-body">
                        <div class="form-group clearfix">
                            <form:label path="projectName" for="projectName" class="col-xs-12">Project Name</form:label>
                            <form:input path="projectName" class="col-xs-12 form-control"
                                        name="projectName" id="projectName" placeholder="Enter Project Name"
                                        onkeyup="alphabetsNumericSpace(this)" maxlength="50"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="projectManager" for="projectManager"
                                        class="col-xs-12">Project Manager</form:label>
                            <form:input path="projectManager" class="col-xs-12 form-control "
                                        name="projectManager" id="projectManager" maxlength="50"
                                        placeholder="Enter Project Manager Name"
                                        onkeyup="alphabetsWithSpace(this)"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="projectHead" for="projectHead"
                                        class="col-xs-12">Project Head Name</form:label>
                            <form:input path="projectHead" class="col-xs-12 form-control"
                                        name="projectHead" id="projectHead" placeholder="Enter Project Head Name"
                                        onkeyup="alphabetsWithSpace(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="startDate" for="startDate" class="col-xs-12">Start Date</form:label>
                            <form:input path="startDate" class="col-xs-12 form-control date-picker"
                                        name="startDate" id="startDate" placeholder="Enter Start Date "
                                        onkeyup="_alphabetsOnly(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="endDate" for="endDate" class="col-xs-12">End Date</form:label>
                            <form:input path="endDate" class="col-xs-12 form-control date-picker"
                                        name="endDate" id="endDate" placeholder="Enter End Date "
                                        onkeyup="_alphabetsOnly(this)" maxlength="30"/>
                        </div>


                            <%-- <div class="form-group clearfix">
                                <form:label path="imagename" for="imagename" class="col-xs-12">UpLoad Image </form:label>
                                <form:input type="file" path="imagename" class="col-xs-12 form-control"
                                    name="imagename" id="imagename" placeholder="Enter Image Name"
                                    _onkeyup="alphabetsOnly(this)" maxlength="30" />
                            </div> --%>


                    </div>
                    <div class="panel-footer with-border text-center">
                        <form:button class="btn btn-primary" id="tpWelcome"
                                     name="tpWelcome">Submit</form:button>
                    </div>

                </div>
            </div>
        </div>
    </form:form>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#projectName").val('');
            $("#projectManager").val('');
            $("#projectHead").val('');
            $("#startDate").val('');
            $("#endDate").val('');

            var startDat = $('#startDate').datepicker({dateFormat: 'dd/mm/yy'}).val();
            var endDat = $('#endDate').datepicker({dateFormat: 'dd/mm/yy'}).val();
            $("#startDate").val(startDat);
            $("#endDate").val(endDat);

        });
    </script>
</div>
	
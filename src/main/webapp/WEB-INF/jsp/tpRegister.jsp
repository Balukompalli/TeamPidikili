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

        $('#districtName').on('change', function () {
            var val = $(this).val();
            $("#districtId").val($(this).val());
            sample();
        });

        function sample() {

            var $district_name = $('#districtName').val();
            var $division_name = $('#divisionName');
            $division_name.html('');
            $.ajax({
                url: '/TeamPidikili/tpDivision',
                type: 'POST',
                dataType: 'json',
                data: {
                    "districtName": "" + $district_name
                },
                success: function (states) {
                    var divi = states;
                    // states is your JSON array
                    alert(divi.length);
                    divi.forEach(function (genre) {
                        console.log(genre.DIVISION_NAME);
                        addOption($division_name, genre.DIVISION_NAME, genre.DIVISION_ID);
                    });
                },
                error: function (xhr, ajaxOptions, thrownError) {

                    alert("error in loading drop down::  try again some other time");
                }
            });
        }

        /* parent drop down to child drop down options adding */
        function addOption(obj, name, value) {
            obj.append($("<option/>", {
                value: value,
                text: name
            }));
        }

        //divsion to mandal details ..

        $('#divisionName').on('change', function () {
            var val = $(this).val();
            $("#divsionId").val($(this).val());
            sample1();
        });

        function sample1() {

            var $division_name = $('#divisionName').val();
            var $mandal_name = $('#mandalName');
            $mandal_name.html('');
            $.ajax({
                url: '/TeamPidikili/tpMandal',
                type: 'POST',
                dataType: 'json',
                data: {
                    "divisionName": "" + $division_name
                },
                success: function (mandals) {
                    var mandal = mandals;
                    // states is your JSON array
                    alert(mandal.length);
                    mandal.forEach(function (genre) {
                        console.log(genre.MANDAL_NAME);
                        addOption($mandal_name, genre.MANDAL_NAME, genre.MANDAL_ID);
                    });
                },
                error: function (xhr, ajaxOptions, thrownError) {

                    alert("error in loading drop down::  try again some other time");
                }
            });
        }


    });


</script>

<div class="container-fluid">
    <%-- <form:input path="stateId" class="hidden form-control"
                                name="stateId" id="firstname" placeholder="Enter Firstname"
                                onkeyup="alphabetsOnly(this)" maxlength="30" /> --%>

    <form:form id="registerForm" modelAttribute="user"
               action="tpRegisterProcess" method="post" enctype="multipart/form-data">
        <c:if test="${msg!=null}">
            <div class="alert alert-success text-center">
                <strong>${msg}</strong><a href="tpRegister" class="close" data-dismiss="alert"
                                          aria-label="close">&times;</a>
            </div>
        </c:if>

        <div class="panel-group">

            <div class="col-xs-12 col-sm-6">
                <div class="panel panel-primary">

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
                </div>

            </div>


            <div class="col-xs-12 col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Register
                        <i class="fa fa-user-circle-o " style="font-size:36px;color:red;padding-top:25px;"></i>
                    </div>
                    <div class="panel-body">
                        <div class="form-group clearfix">
                            <form:label path="username" for="username" class="col-xs-12">Username</form:label>
                            <form:input path="username" class="col-xs-12 form-control"
                                        name="username" id="username" placeholder="Enter Username"
                                        onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="password" for="password" class="col-xs-12">Password</form:label>
                            <form:password path="password" class="col-xs-12 form-control "
                                           name="password" id="password" placeholder="Enter Password"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="firstname" for="firstname" class="col-xs-12">FirstName</form:label>
                            <form:input path="firstname" class="col-xs-12 form-control"
                                        name="firstname" id="firstname" placeholder="Enter Firstname"
                                        onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="lastname" for="lastname" class="col-xs-12">LastName</form:label>
                            <form:input path="lastname" class="col-xs-12 form-control"
                                        name="lastname" id="lastname" placeholder="Enter LastName "
                                        onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>
                        <div class="form-group clearfix">
                            <form:label path="surname" for="surname" class="col-xs-12">SurName</form:label>
                            <form:input path="surname" class="col-xs-12 form-control"
                                        name="surname" id="surname" placeholder="Enter SurName"
                                        onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>

                        <div class="form-group clearfix">
                            <form:label path="phonenum" for="phonenum" class="col-xs-12">PhoneNumber</form:label>
                            <form:input path="phonenum" class="col-xs-12 form-control"
                                        name="phonenum" id="phonenum" placeholder="Enter Phone Number"
                                        _onkeyup="alphabetsOnly(this)" maxlength="15"/>
                        </div>

                        <div class="form-group clearfix">
                            <form:label path="email" for="email" class="col-xs-12">E-mail</form:label>
                            <form:input path="email" class="col-xs-12 form-control"
                                        name="email" id="email" placeholder="Enter E-mail"
                                        _onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>

                        <div class="form-group clearfix">
                            <form:label path="imagename" for="imagename" class="col-xs-12">UpLoad Image </form:label>
                            <form:input type="file" path="imagename" class="col-xs-12 form-control"
                                        name="imagename" id="imagename" placeholder="Enter Image Name"
                                        _onkeyup="alphabetsOnly(this)" maxlength="30"/>
                        </div>

                        <div class="form-group clearfix">
                            <form:label path="stateName" for="stateName" class="col-xs-12">State
                            </form:label>


                            <form:select path="stateName" id="stateName">
                                <form:option value="0" label="--Select--"/>
                                <form:options items="${hmStateName}"/>
                            </form:select>

                        </div>

                        <div class="form-group clearfix">
                            <form:label path="districtName" for="districtName" class="col-xs-12">District Name
                            </form:label>


                            <form:select path="districtName">
                                <form:option value="0" label="--Select--"/>
                                <form:options items="${hmDistrictName}"/>
                            </form:select>

                        </div>

                        <div class="form-group clearfix">
                            <form:label path="divisionName" for="divisionName" class="col-xs-12">Division Name
                            </form:label>


                            <form:select path="divisionName">
                                <form:option value="0" label="--Select--"/>
                                <form:options items="${hmDivisionName}" id="divisionName"/>
                            </form:select>


                        </div>

                        <div class="form-group clearfix">
                            <form:label path="mandalName" for="mandalName" class="col-xs-12">Mandal Name
                            </form:label>


                            <form:select path="mandalName">
                                <form:option value="0" label="--Select--"/>
                                <form:options items="${hmMandalName}" id="mandalName"/>
                            </form:select>


                        </div>


                    </div>
                    <div class="panel-footer with-border text-center">
                        <form:button class="btn btn-primary" id="tpRegister"
                                     name="tpRegister22">Register</form:button>
                    </div>
                    <div class="help-text text-center"
                         style="font-style: italic; color: red;">${message}</div>
                </div>
            </div>
        </div>
    </form:form>
</div>

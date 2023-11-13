<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page session="false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ page isELIgnored="false" %>

    <title>Welcome</title>


</head>
<script type="text/javascript">
    function back() {
        window.history.back()
    }
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#dtTable').DataTable();
    });</script>

<body>
<form enctype="multipart/form-data">

    <input type="hidden" value="${userData}" id="userData"/>
    <!-- <div class="text-right">
        <div class="btn btn-default backBtn btn-lg" onclick="back()">Back</div>
    </div> -->
    <div class="box box-primary ">
        <div class="box-header">
            <h3 class="box-title"></h3>
        </div>
        <div class="box-body">
            Welcome ${userName}
            <div class="col-md-5">
                <img src="<c:url value="resources/tpProfilePix/${userDataImage}"/>" class="img-circle" width="150"
                     height="150"/>
                <div class="col-md-12" style="padding-top:5px;">
                    <a class="btn btn-primary btn-lg" id="uploadImages" name="uploadImages"
                       style="padding-top:5px;color: white; text-decoration: none;">Upload More Images</a>

                </div>

            </div>
            <div class="col-md-7 text-left">
                <div id="chartContainer" style="height: 400px; width: 100%;"></div>
                <!-- <div id="chartContainer" style="height: 300px; width: 100%;"></div> -->

            </div>

            <div class="col-md-12" style="padding-top:50px;">

                <div class="row">

                    <table class="table table-striped table-bordered" width="100%" id="dtTable">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>UserName</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>Email</th>
                            <th>Constituency</th>
                            <th>imagePath</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                            <c:when test="${userData!=null}">
                                <c:forEach var="inner" items="${userData}">
                                    <tr>
                                        <td>${inner.id}</td>
                                        <td id="uname">${inner.username}</td>
                                        <td id="fname">${inner.firstname}</td>
                                        <td id="lname">${inner.lastname}</td>
                                        <td id="email">${inner.email}</td>
                                        <td id="division">${inner.divisionName}</td>
                                        <td>${userDataImage}</td>

                                    </tr>
                                </c:forEach>
                            </c:when>

                            <c:when test="${userData==null}">
                                <tr>
                                    <td>No Data Found</td>
                                </tr>
                            </c:when>
                        </c:choose>
                        </tbody>
                        <tfoot>
                        <tr></tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
    <script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>

    <script>
        window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                theme: "light1", // "light1", "light2", "dark1", "dark2"
                exportEnabled: true,
                animationEnabled: true,
                title: {
                    text: "Details of " + $("#uname").text() + " "
                },
                data: [{
                    type: "pie",
                    startAngle: 0,
                    toolTipContent: "<b>{zz}  </b>: {label} ",
                    showInLegend: "true",
                    legendText: "{label}",
                    indexLabelFontSize: 16,
                    indexLabel: "{label} balu - {y}%",
                    dataPoints: [
                        {zz: "Name", y: 25, label: "" + $("#uname").text() + ""},
                        {zz: "FirstName", y: 25, label: "" + $("#fname").text() + ""},
                        {zz: "SurName", y: 25, label: "" + $("#lname").text() + ""},
                        {zz: "Constituency", y: 25, label: "" + $("#division").text() + ""}
                    ]
                }]
            });
            chart.render();

        }
    </script>
</form>


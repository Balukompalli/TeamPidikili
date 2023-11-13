<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>
    <!--
    <link rel="icon" type="image/png" href="/TeamPidikili/images/jsp-main.jpg" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.8/css/AdminLTE.css" rel="stylesheet">
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.8/js/adminlte.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fitvids/1.2.0/jquery.fitvids.min.js"></script> -->
</head>

<style type="text/css">
    .fa.fa-child {
        color: red;
    }

    .dashboard-box {
        padding: 10px;
    }

    .btn-wd {
        padding: 10px;
        width: 100%;
        height: 100%;
    }

    .dashboard-body {
        height: 100%;
    }

</style>
<script type="text/javascript">
    $(document).ready(function () {

        $("#p1").on('click', function () {
            $("#tp_project1").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");
        });
    });
</script>


<body>

<div class="container-fluid">

    <div id="myModal" class="modal">
        <span class="text-center col-md-4 col-md-offset-4"><a class="close">close</a></span>
        &nbsp;
        <img class="modal-content" id="img01">
    </div>

    <div class="row">


        <div class="panel-group">
            <!--  The Modal -->

            <div class="panel panel-primary">
                <div class="panel-heading"></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">

                            <div class="col-xs-12 col-sm-4">
                                <img class="img-responsive _img-circle"
                                     src="${pageContext.request.contextPath}/images/party_symbol.jpg"
                                     _width="auto" _height="auto" style="float:left;">

                            </div>
                            <div class="col-xs-12 col-sm-8">
                                <b>
                                    This is the Team Pidikili projects Dashboards. It provides the details of the
                                    projects that are successfully
                                    handled by Team Pidikili base pillers Raja Mylavarapu. These projects gives biggest
                                    assets to
                                    <font style="color:red"> JanaSena Party(JSP)</font>.
                                </b>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
            &nbsp;
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 dashboard-box">
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-primary btn-wd">
                                <h3 class="">
                                    <a class="" id="p1" href="tpProject1"><font style="color:white">VCV
                                        Channel-08</font> </a>
                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-success btn-wd">
                                <h3 class="">
                                    <a class="" id="p2" href="tpProject2"><font style="color:white">Title Cyclone <br>
                                        Assistance</font></a>
                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-default btn-wd">
                                <h3 class="">
                                    <a class="" id="p3" href="tpProject3"><font style="color:black">Auto Stickers</font></a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 col-sm-12 dashboard-box">
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-info btn-wd">
                                <h3 class="">

                                    <a class="" id="p4" href="tpProject4"><font style="color:white">Calenders-9/<br>mandal</font></a>

                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-default btn-wd">
                                <h3 class="">

                                    <a class="" _data-toggle="dropdown" id="p5" href="tpProject5"><font
                                            style="color:black">Posters-1/ <br> village</font></a>

                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-warning btn-wd">
                                <h3 class="">
                                    <a class="" id="p6" href="tpProject6"><font style="color:#15385a">Bike
                                        Stickers</font></a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-xs-12 col-sm-12 dashboard-box">
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-danger btn-wd">
                                <h3 class="">
                                    <a class="" id="p7" href="tpProject7"><font style="color:white">Parichaya <br>
                                        Radhayatra</font></a>
                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-info btn-wd">
                                <h3 class="">
                                    <a class="" id="p8" href="tpProject8"><font style="color:red">Rubber Stamp <br>Pads</font></a>
                                </h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 dashboard-body">
                            <div class="btn btn-success btn-wd">
                                <h3>
                                    <a class="" id="p9" href="tpProject9"><font
                                            style="color:#0644fd">Thyagaraja-1st</font></a>
                                </h3>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>
</body>
</html>


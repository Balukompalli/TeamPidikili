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

</style>
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
                            <div class="col-xs-12 col-sm-4">
                                <img class="img-responsive _img-circle"
                                     src="${pageContext.request.contextPath}/images/pawan_official2.jpg"
                                     width="200px" height="100px"
                                     style="border:2px solid white;float:right;_padding-left:5px;_padding-top:5px;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img class="img-responsive img-circle"
                                     src="${pageContext.request.contextPath}/images/raja.jpg"
                                     width="200px" height="100px"
                                     style="border:2px solid white;float:right;_padding-left:5px;_padding-top:5px;">

                            </div>
                        </div>
                    </div>


                </div>
            </div>
            &nbsp;
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Do you want to join Team Pidikili? <i class="fa fa-child"
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
                    <div class="panel panel-success">
                        <div class="panel-heading">Team Pidikili Logo</div>
                        <div class="panel-body">
                            <img class="img-responsive" id="myImgFamily"
                                 src="${pageContext.request.contextPath}/images/tp.jpg"
                                 style="overflow: hidden; height: 150px; width: 100%;"
                                 alt="KFamily" data-toggle="tooltip" data-placement="bottom"
                                 title="Click me for full Image!!">
                        </div>
                    </div>
                </div>


            </div>

            &nbsp;


            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            Team Pidikili.. For Better Society..
                        </div>
                        <div class="panel-body" _style="border: 1px dotted black;">
                            <ol>
                                <li>The key reason to start the "TEAM PIDIKILI"(TP) team was to do social service.</li>
                                <li>Established 5 special teams which are working to achieve the goal a Better
                                    Society.
                                </li>
                                <li>Initiate a project to campaign JanasenaParty's election Symbol into people.</li>
                                <li>Establish a special campaign to advertise the pre-manifesto and it's valuable points
                                    into Masses.
                                </li>
                                <li>Done the social service to title tufoon effected areas and people by collecting
                                    their own team money.
                                </li>
                                <li>Initiate to give campaign JanasenaParty's election Symbol into people.</li>
                                <li>As having long term vision, TP is coordinating with JanaSena Party and supporting
                                    JSP slogans and their visionary thoughts.
                                </li>
                                <li>TP done the campaign called "Parichaya Radha Yatra" to know about
                                    <ul>
                                        <li>The people involvment and interst to promote the JSP.</li>
                                        <li>Collect the information about their support to JSP.</li>
                                        <li>Interact with JSP party cadre about their issues.</li>
                                        <li>Doing the real time process to achieve hurdles that are facing day by day
                                            political systems.
                                        </li>
                                    </ul>
                                </li>
                                <li>Follow up the JSP party suggestions, activities and programs.</li>
                            </ol>

                        </div>
                    </div>

                </div>


                <div class="col-xs-12 col-sm-6">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Team Pidikili.. Characterstics..
                        </div>
                        <div class="panel-body" style="_border: 1px dotted black;">
                            <ol>
                                <li>Team always coordinate with each other.</li>
                                <li>Members are having more responsible on society.</li>
                                <li>No hierarchy in team. All members have equal priority.</li>
                                <li>All members involves in decision making.</li>
                                <li>Following team rules and regulations.</li>
                                <li>All the members are good visionary and socially trained people.</li>
                            </ol>

                        </div>
                    </div>

                </div>

            </div>


        </div>
    </div>
</div>

</body>
</html>


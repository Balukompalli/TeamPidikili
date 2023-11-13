<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>

    <link rel="stylesheet"
          href="https://naver.github.io/billboard.js/release/latest/dist/billboard.min.css"
          type="text/css"></link>

    <style type="text/css">
        .fa.fa-child {
            color: red;
        }

        @media (min-width: 768px) {
            .bb-text {
                font-size: 13px;
            }

            .bb-line {
                stroke-width: 1px;
            }
        }

    </style>


</head>

<!--<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> -->


<!-- <script type="text/javascript">
$(function(){
	var x=' ';  
		$('.canvasjs-chart-credit').text(x);
	});

</script> -->

<script type="text/javascript">
    $(document).ready(function () {
        var chart = bb.generate({
            data: {

                columns:
                    [
                        ["Team Pidikili Channel 08 in VCV ", 80],
                        ["Support to titli toofan Effected Areas", 70],
                        ["Auto Stickers Distribution", 80],
                        ["Calender 8", 10]

                    ],

                labels: true,

                type: "pie"
            },
            bar: {
                width: {
                    ratio: 0.9,
                    max: 30
                },
                padding: 10
            },
            order: "desc",
            legend: {
                position: "right"
            },
            order: "desc",
            axis: {
                x: {
                    type: "category",

                    tick: {
                        multiline: true
                    },

                    padding: { // add this config
                        left: 0,
                        right: 0
                    },
                },

                rotated: true
            },

            interaction: {
                inputType: {
                    touch: {
                        preventDefault: true
                    }
                }
            },

            grid: {
                x: {
                    show: true
                },
                y: {
                    show: true
                }
            },
            tooltip: {
                //order: "desc"
            },
            bindto: "#BarChart"
        });

    });
</script>


<script type="text/javascript">
    $(document).ready(function () {
        var chart1 = bb.generate({
            data: {

                columns:
                    [
                        ["Bheemavaram", 10000],
                        ["Achanta", 7000],
                        ["Tadepalligudem", 8000],
                        ["Eluru", 13000],
                        ["Mogalturu", 5000],
                        ["Palakollu", 7000],
                        ["Vijayawada", 9000],
                        ["Kakinada", 15000],
                    ],

                labels: true,

                type: "pie"
            },
            bar: {
                width: {
                    ratio: 0.9,
                    max: 30
                },
                padding: 10
            },
            order: "desc",
            legend: {
                position: "right"
            },
            order: "desc",
            axis: {
                x: {
                    type: "category",

                    tick: {
                        multiline: true
                    },

                    padding: { // add this config
                        left: 0,
                        right: 0
                    },
                },

                rotated: true
            },

            interaction: {
                inputType: {
                    touch: {
                        preventDefault: true
                    }
                }
            },

            grid: {
                x: {
                    show: true
                },
                y: {
                    show: true
                }
            },
            tooltip: {
                //order: "desc"
            },
            bindto: "#BarChart1"
        });

    });
</script>


<script type="text/javascript">
    $(document).ready(function () {

        $("#p1").on('click', function () {
            alert("before remove");
            $("#tp_project1").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");
            alert("afte rremove");
        });
    });
</script>


<body style="min-height:calc(100% - 600px)">

<div class="container-fluid">
    <!-- <div>
        <ul class="nav" id="nav-menu" style="background-color: white;">
            <li class="nav-item"><a class="nav-link" id="p1"
                href="tpProject1">Project-1</a></li>
            <li class="nav-item"><a class="nav-link" href="tpProject2">Project-2</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="tpProject3">Project-3</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="tpProject4">Project-4</a>
            </li>
        </ul>
    </div> -->


    <div id="tp_projects">

        <c:if test="${tpProjectObj !=null}">
            <form:form id="tpProjectsForm" modelAttribute="tpProjectObj"
                       action="tpProject" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Projects completion Status
                                handled by Team Pidikili
                            </div>
                            <div class="col-lg-12 panel-body" style="background: white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                                <div id="BarChart"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <div id="tp_project1" class="hidden">

        <c:if test="${tpProjectObj1!=null}">
            <form:form id="tpProjectsForm1" modelAttribute="tpProjectObj1"
                       action="tpProject1" method="post" _class="hidden">
                <div class="panel-group">


                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">

                            <div class="panel-heading">Team Pidikili Channel 08 in VCV</div>
                            <div class="col-lg-12 panel-body" style="background: white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                                <div id="BarChart1"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <c:if test="${tpProjectObj2!=null}">
        <form:form id="tpProjectsForm2" modelAttribute="tpProjectObj2"
                   action="tpProject2" method="post" class="hidden">
            <div class="panel-group">

                <div class="col-xs-12 col-xs-12 _border _border-danger">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Support to titli Toofan Effected
                            Areas
                        </div>
                        <div class="col-lg-12 panel-body" style="background: white;">
                            <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                            <div id="BarChart"></div>

                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </c:if>

    <c:if test="${tpProjectObj3!=null}">
        <form:form id="tpProjectsForm3" modelAttribute="tpProjectObj3"
                   action="tpProject3" method="post" class="hidden">
            <div class="panel-group">

                <div class="col-xs-12 col-xs-12 _border _border-danger">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Auto Stickers</div>
                        <div class="col-lg-12 panel-body" style="background: white;">
                            <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                            <div id="BarChart"></div>

                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </c:if>

    <c:if test="${tpProjectObj4!=null}">
        <form:form id="tpProjectsForm4" modelAttribute="tpProjectObj4"
                   action="tpProject4" method="post" class="hidden">


            <div class="col-xs-12 col-xs-12 _border _border-danger">
                <div class="panel panel-primary">
                    <div class="panel-heading">Calender-8</div>
                    <div class="col-lg-12 panel-body"
                         style="background: white; width: 100%;">
                        <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->

                        <div class="col-xs-12" id="BarChart" style="width: 100%;"></div>
                    </div>

                </div>
            </div>

        </form:form>
    </c:if>
</div>

</body>

<script src="https://d3js.org/d3.v5.min.js"></script>
<script src="https://naver.github.io/billboard.js/release/latest/dist/billboard.min.js"></script>
</html>

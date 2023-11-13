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

        /* @media(min-width:768px) {
             .bb-text {
                  font-size: 13px;
             }

             .bb-line {
                 stroke-width: 1px;
             }
        } */

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
        var chart2 = bb.generate({
            data: {
                columns:
                    [
                        ["Benefited Families", 200],
                        ["milk", 20],
                        ["rice Bags", 50],
                        ["vegetables", 23],
                        ["money in rs/-", 40]

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
            bindto: "#BarChart2"
        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        var chart3 = bb.generate({
            data: {
                columns:
                    [
                        ["Nuzvid", 9],
                        ["Bheemavaram", 20],
                        ["Kadapa", 12],
                        ["Eluru", 15],
                        ["Vijag", 9],
                        ["Vijayanagaram", 9],
                        ["Kakinada", 9],
                        ["Pulivendula", 9],
                        ["Vijayawada", 9],
                        ["Guntur", 9]

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
            bindto: "#BarChart3"
        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        var chart4 = bb.generate({
            data: {
                columns:
                    [
                        ["Running status", 70],
                        ["Reached Status", 20],
                        ["Completed tasks", 10]
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
            bindto: "#BarChart4"
        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#p1").on('click', function () {

            $("#tp_project1").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");

        });

        $("#p2").on('click', function () {

            $("#tp_project2").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");

        });

        $("#p3").on('click', function () {

            $("#tp_project3").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");

        });

        $("#p4").on('click', function () {

            $("#tp_project4").removeClass("hidden");
            $("#tp_Projects").addClass("hidden");

        });

    });
</script>


<body style="min-height:calc(100% - 600px)">
<div class="container-fluid">
    <!-- <div>
        <ul class="nav" id="inner-nav-menu" style="background-color:white;">
<li class="nav-item">
  <a class="nav-link" id="p1" href="tpProject1">VCV Channel-08</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="p2" href="tpProject2">Titli Helping</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="p3" href="tpProject3">Auto Stickers</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="p4" href="tpProject4">Calender-8</a>
</li>

</ul>

    </div> -->

    <div class="text-right">
        <div class="btn btn-default backBtn btn-lg" onclick="back()">Back</div>
    </div>


    <div id="tp_projects" class="">

        <c:if test="${tpProjectObj !=null}">
            <form:form id="tpProjectsForm" modelAttribute="tpProjectObj"
                       action="tpProject" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Projects completion Status handled by Team Pidikili</div>
                            <div class="panel-body" style="background:white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                                <div _class="col-xs-12" id="BarChart"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <div id="tp_project1" class="">

        <c:if test="${tpProjectObj1!=null}">
            <form:form id="tpProjectsForm1" modelAttribute="tpProjectObj1"
                       action="tpProject1" method="post" _class="hidden">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Team Pidikili Channel 08 in VCV</div>
                            <div class="panel-body" style="background:white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->

                                <div class="col-xs-12 col-xs-4" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive" width="100%" id="vcvTable">
                                        <thead>
                                        <tr>
                                            <th>Number of Operators</th>
                                            <th>Project Budget (approximate figures)</th>
                                            <th>No.of Slot per month</th>
                                            <th>Advertisement time</th>
                                            <th>Channel Number</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>MSO tv Channels</td>
                                            <td> 48000rs/-(INR)</td>
                                            <td>16</td>
                                            <td>35 seconds per day.</td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td> VCV</td>
                                            <td> 48000rs/-(INR)</td>
                                            <td>16</td>
                                            <td>35 seconds per day.</td>
                                            <td>8</td>
                                        </tr>

                                        <tr>
                                            <td>Manasa Channels</td>
                                            <td> 48000rs/-(INR)</td>
                                            <td>16</td>
                                            <td>35 seconds per day.</td>
                                            <td>38</td>
                                        </tr>

                                        <tr>
                                            <td>TCN</td>
                                            <td>3000rs/-(INR)</td>
                                            <td>16</td>
                                            <td>35 seconds per day.</td>
                                            <td></td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>


                                </div>

                                <div class="col-xs-12 col-xs-8">
                                    <div id="BarChart1"></div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <div id="tp_project2" class="">
        <c:if test="${tpProjectObj2 !=null}">
            <form:form id="tpProjectsForm2" modelAttribute="tpProjectObj2"
                       action="tpProject2" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Support to titli Toofan Effected Areas</div>
                            <div class="panel-body" style="background:white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                                <div class="col-xs-12 col-xs-4" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive _table-bordered" id="titliTable"
                                           width="100%">
                                        <thead>
                                        <tr>
                                            <th rowspan="2">Teams Involved</th>
                                            <th rowspan="2">No. of Families</th>
                                            <th rowspan="2">Quantities useful for (in days)</th>
                                            <th rowspan="2">Collected Money (in Rs/-)</th>
                                            <th colspan="5" class="text-center">Commodities</th>
                                        </tr>
                                        <tr>
                                            <th>Rice</th>
                                            <th>Oil</th>
                                            <th>Dal</th>
                                            <th>Candles</th>
                                            <th>Macthbox</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Team Pidikili</td>
                                            <td>200</td>
                                            <td>4</td>
                                            <td>77000</td>
                                            <td>1 Kg</td>
                                            <td>1 Packet</td>
                                            <td>1 Kg</td>
                                            <td>10 per family</td>
                                            <td>10</td>
                                        </tr>

                                        <tr>
                                            <td>Helping Hands</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>1 Kg</td>
                                            <td>1 Packet</td>
                                            <td>1 Kg</td>
                                            <td>10 per family</td>
                                            <td>10</td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>

                                </div>

                                <div class="col-xs-12 col-xs-8">
                                    <div id="BarChart2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <div id="tp_project3" class="">
        <c:if test="${tpProjectObj3!=null}">
            <form:form id="tpProjectsForm3" modelAttribute="tpProjectObj3"
                       action="tpProject3" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Auto Stickers Completion Percentages</div>
                            <div class="panel-body" style="background:white;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->
                                <div class="col-xs-12 col-xs-4" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive _table-bordered"
                                           id="autoStickerTable" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Teams Involved</th>
                                            <th>Stickers per Constituency</th>
                                            <th>Project Budget (in Rs/-)</th>

                                        </tr>

                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Team Pidikili</td>
                                            <td>11</td>
                                            <td>53000</td>

                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>

                                </div>

                                <div class="col-xs-12 col-xs-8">
                                    <div id="BarChart3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </c:if>
    </div>

    <div id="tp_project4" class="">
        <c:if test="${tpProjectObj4!=null}">
            <form:form id="tpProjectsForm4" modelAttribute="tpProjectObj4"
                       action="tpProject4" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Distributing-8 Calenders per Mandal in AP state</div>
                            <div class="panel-body" style="background:white;width:100%;">
                                <!-- <div id="chartContainer" style="height: 400px; width: 100%;"></div> -->

                                <div class="col-xs-12 col-xs-4" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive _table-bordered"
                                           id="calenderTable" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Teams Involved</th>
                                            <th>No. of Calenders per Mandal</th>
                                            <th>Project Budget (in Rs/-)</th>
                                            <th>total Mandals</th>
                                            <th>total Corporations</th>
                                            <th>total Municipality</th>
                                        </tr>

                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Team Pidikili</td>
                                            <td>9</td>
                                            <td>80000</td>
                                            <td>676</td>
                                            <td>16</td>
                                            <td>71</td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class="col-xs-12 col-xs-8">
                                    <div id="BarChart4"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </form:form>
        </c:if>
    </div>


    <div id="tp_project5" class="">
        <c:if test="${tpProjectObj5!=null}">
            <form:form id="tpProjectsForm5" modelAttribute="tpProjectObj5"
                       action="tpProject5" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Distributing 1 Wall Poster per Village in AP state</div>
                            <div class="panel-body" style="background:white;width:100%;">

                                <div class="col-xs-12 col-xs-4" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive _table-bordered"
                                           id="posterTable" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Teams Involved</th>
                                            <th>No. of Poster per Village</th>
                                            <th>Project Budget (in Rs/-)</th>
                                            <th>total Posters</th>
                                            <th>No. of Poster per Mandal</th>

                                        </tr>

                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Team Pidikili</td>
                                            <td>1</td>
                                            <td>1,10,000</td>
                                            <td>20,000</td>
                                            <td>30</td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class="col-xs-12 col-xs-8">
                                    <div id="BarChart5"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </form:form>
        </c:if>
    </div>

    <div id="tp_project6" class="">
        <c:if test="${tpProjectObj6!=null}">
            <form:form id="tpProjectsForm6" modelAttribute="tpProjectObj6"
                       action="tpProject6" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Distributing Bike Stickers in AP state</div>
                            <div class="panel-body" style="background:white;width:100%;">

                                <div class="col-xs-12 col-xs-12" _style="color:red;">
                                    Project Report
                                    <table class="table table-stripped table-responsive _table-bordered"
                                           id="posterTable" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Teams Involved</th>
                                            <th>No. of Stickers</th>
                                            <th>Project Budget (in Rs/-)</th>
                                        </tr>

                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Team Pidikili</td>
                                            <td>20000</td>
                                            <td>15,000</td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class="col-xs-12 col-xs-12">
                                    <div id="BarChart6"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </form:form>
        </c:if>
    </div>

    <div id="tp_project7" class="">
        <c:if test="${tpProjectObj7!=null}">
            <form:form id="tpProjectsForm7" modelAttribute="tpProjectObj7"
                       action="tpProject7" method="post">
                <div class="panel-group">

                    <div class="col-xs-12 col-xs-12 _border _border-danger">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Parichaya Radha Yatra in AP state</div>
                            <div class="panel-body" style="background:white;width:100%;">

                                <div class="col-xs-12 col-xs-12" _style="color:red;">
                                    Project Report

                                    <table class="table table-stripped table-responsive _table-bordered"
                                           id="parichayaTable" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Teams Involved</th>
                                            <th>No. of Days</th>
                                            <th>Project Budget(in Rs/-)</th>
                                            <th>Yatra places</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <tr>

                                            <td _rowspan="18">1</td>
                                            <td _rowspan="18">Team Pidikili</td>
                                            <td _rowspan="18">8</td>
                                            <td _rowspan="18">20,000</td>
                                            <td>Chilakaluri peta</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Chilakaluri peta</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Tanguturu</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Nellore</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Chittore</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Kavali</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>MangalaGiri</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Guntur</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Vijayawada</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Tadepalli gudem</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Anakapalli</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Kattipudi</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Kovvuru</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Sompeta</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Icchapuram</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Jaggam peta</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Devarapalli</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>Nellimarla</td>
                                        </tr>

                                        </tbody>
                                        <tfoot>
                                        <tr></tr>
                                        </tfoot>
                                    </table>
                                </div>

                                <!-- <div class="col-xs-12 col-xs-12">
                                    <div id="BarChart6"></div>
                                </div> -->
                            </div>

                        </div>
                    </div>
                </div>

            </form:form>
        </c:if>
    </div>


</div>
</body>
<script>
    $(document).ready(function () {
        $('#titliTable').DataTable({

            /* dom: '<"row"Bfr><"clear">', */
            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": true

        });

        $('#vcvTable').DataTable({
            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false

        });
        $('#autoStickerTable').DataTable({

            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false

        });

        $('#calenderTable').DataTable({

            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false

        });

        $('#posterTable').DataTable({

            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false

        });

        $('#bikeStickerTable').DataTable({

            dom: "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>>",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false

        });
        $('#parichayaTable').DataTable({

            scrollY: '50vh',
            scrollCollapse: true,
            paging: false,

            dom: "Brtip",
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ],
            "order": [0, "desc"],
            "ordering": false
            /* dom : "<'row'<'col-sm-6'Br><'col-sm-3'f><'col-sm-3'i>><'row'<'bottom'p>> ",

            buttons: [
                 'csv', 'excel', 'pdf', 'print'
            ],
            "order":[0,"desc"],
            "ordering": false  */

        });


    });
</script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/buttons/1.5.4/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.4/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.4/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.4/js/buttons.print.min.js"></script>


<script src="https://d3js.org/d3.v5.min.js"></script>
<script src="https://naver.github.io/billboard.js/release/latest/dist/billboard.min.js"></script>
</html>

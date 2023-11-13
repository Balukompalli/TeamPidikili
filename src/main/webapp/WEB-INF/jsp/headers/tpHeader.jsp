<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>

    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

<style>
    Iframe {
        width: 100%;
        height: auto;
    }

    .video-container {
        position: relative;
        padding-bottom: 56.25%;
        padding-top: 30px;
        height: 0;
        overflow: hidden;
    }

    .video-container iframe,
    .video-container object video,
    .video-container embed video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    iframe {
        max-width: 100%;
    }

    video {
        width: 100%;
        max-width: 500px;
        height: auto;
    }

</style>


<body>
<div class="container-fluid">
    <div class="box box-default" style="background:#e48787">
        <h3>
            <img class="img-responsive _img-circle" src="${pageContext.request.contextPath}/images/TPheader.jpg"
                 _width="auto" _height="auto" style="float:left;">
        </h3>

        <div class="text-right">

            ${usrName} <i class="fa fa-user-circle-o " style="font-size:36px;color:red;padding-top:25px;"></i> <br>

        </div>

    </div>
</div>
<!-- ---- -->

<!-- <div  style="font-size:24px;background:#f0edeb;_padding-top:2px;">
	<ul class="nav" id="main-menu">
    <li class="nav-item">
      <a class="nav-link " href="tpHome">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="tpLogin">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="tpRegister">Register</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="tpProjectMaster">Projects</a>
    </li>

<li class="nav-item dropMenu dropdown">
    
	  <a class="nav-link" href="#" data-toggle="dropdown">Projects<span class="caret" ></span></a>
    <ul class="dropdown-menu">
    <li><a class="nav-link" _data-toggle="dropdown"  href="tpProject">All Projects Status</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p1" href="tpProject1">VCV Channel-08</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p2" href="tpProject2">Title Helping Hands</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p3" href="tpProject3">Auto Stickers</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p4" href="tpProject4">Calenders-8</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p5" _href="tpProject5">project5</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p6" _href="tpProject6">project6</a></li>
      <li><a class="nav-link" _data-toggle="dropdown" id="p7" _href="tpProject7">Janaswaram</a></li>
      
    </ul>
    
  </li>
    
    <li class="nav-item">
      <a class="nav-link" href="tpLogout">Logout</a>
    </li>
  </ul>
	</div> -->

<c:choose>
    <c:when test="${usrName=='admin'}">
        <div style="font-size:24px;background:#f0edeb;_padding-top:2px;">
            <ul class="nav" id="main-menu">
                <!-- <li class="nav-item">
                  <a class="nav-link " href="tpHome">Home</a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="tpLoginProcess">Dashboard</a>
                </li>
                <!-- <li class="nav-item">
                  <a class="nav-link" href="tpLogin">Login</a>
                </li> -->
                <!--  <li class="nav-item">
                   <a class="nav-link" href="tpRegister">Register</a>
                 </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="tpLogout">Logout</a>
                </li>
            </ul>
        </div>

    </c:when>

    <c:when test="${empty usrName}">
        <div style="font-size:24px;background:#f0edeb;_padding-top:2px;">
            <ul class="nav" id="main-menu">
                <li class="nav-item">
                    <a class="nav-link " href="tpHome">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tpLogin">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tpRegister">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tpLogout">Logout</a>
                </li>
            </ul>
        </div>

    </c:when>

    <c:when test="${usrName!='admin'}">

        <div style="font-size:24px;background:#f0edeb;_padding-top:2px;">
            <ul class="nav" id="main-menu">
                <li class="nav-item">
                    <a class="nav-link " href="tpHome">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="tpProjectMaster">Projects</a>
                </li>

                <li class="nav-item dropMenu dropdown">

                    <a class="nav-link" href="#" data-toggle="dropdown">Projects<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" _data-toggle="dropdown" href="tpProject">All Projects Status</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p1" href="tpProject1">VCV Channel-08</a>
                        </li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p2" href="tpProject2">Title Helping
                            Hands</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p3" href="tpProject3">Auto Stickers</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p4" href="tpProject4">Calenders-8</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p5" _href="tpProject5">project5</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p6" _href="tpProject6">project6</a></li>
                        <li><a class="nav-link" _data-toggle="dropdown" id="p7" _href="tpProject7">Janaswaram</a></li>

                    </ul>

                </li>

                <li class="nav-item">
                    <a class="nav-link" href="tpLogout">Logout</a>
                </li>
            </ul>
        </div>

    </c:when>
</c:choose>


<!-- --- -->
<header>

    <div class="overlay"></div>
    <%-- 	<div class="video-container">
         <iframe width="560" height="240px" id="thing-with-videos" src="${pageContext.request.contextPath}/images/janasena_video.mp4" frameborder="0"  playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop"   _allowfullscreen></iframe> --%>

    <video height="auto" width="320px" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" controls>
        <source src="${pageContext.request.contextPath}/images/janasena_video.mp4" type="video/mp4">
    </video>

    <!-- </div> -->
    <%-- <iframe width="560" height="240px" id="muted" src="${pageContext.request.contextPath}/images/janasena_video.mp4" frameborder="0"  playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop"   _allowfullscreen></iframe>  -- %>

  </div>


  <%--  	 <video style="background-size: contain" height="auto" width="320px"  playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" controls>
      <source   class="embed-responsive" src="${pageContext.request.contextPath}/images/janasena_video.mp4" type="video/mp4">
    </video>
   --%>


    <div class="container h-100">
        <div class="d-flex text-center h-100">
            <div class="my-auto w-100 ">
                <!-- <h1 class="display-3">JanaSena Party</h1>
                http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4 -->
            </div>
        </div>
    </div>

    <div class="container">

        <div class="row">
            <div class="col-xs-8 col-xs-12">
                <div class="box" style="_padding-top:2px;">

                    <div class="box-header">
                        <div class="col-xs-12">
                            <div class="col-xs-4  text-right" style="padding-bottom: 7px;padding-top:2px">


                            </div>
                            <%-- <div class="col-xs-8  text-right">
                                <img src="${pageContext.request.contextPath}/images/raja.jpg" class="img-circle "  width="180" height="70">
                            </div> --%>

                        </div>
                    </div>
                </div>

            </div>
            <div class=" headerPart col-xs-4 text-right" style="padding-bottom: 15px;">

                <p style="padding-top:1px;font-size:14px;text-shadow:2px 2px 4px #000000;">${userName}
                    <c:choose>
                        <c:when test="${userDataImage1==null}">

                        </c:when>
                        <c:otherwise>
                            <img src="<c:url value="/tmpFiles/${userDataImage1}"/>"
                                 class="fa fa-user-circle-o img-circle img-responsive"
                                 style="font-size:36px;_padding-top:25px;"
                                 width="80" height="80"/>
                            <!-- <i class="fa fa-user-circle-o " style="font-size:36px;padding-top:25px;"></i> -->
                            &nbsp;&nbsp;&nbsp;

                            <a href="logout">
                                <font class="fa fa-sign-out btn btn-danger" id="logout"
                                      style="font-size:14px;font-weight:500;" data-toggle="tooltip" title="Sign-Out">Sign-Out
                                </font>
                            </a>

                        </c:otherwise>
                    </c:choose>
                </p>
            </div>

        </div>


    </div>
</header>

</body>


<script type="text/javascript">
    $("#logout").on("click", function () {
        if (confirm("Do you want to sign out?")) {
            return true;
        } else {
            return false;
        }

    });

    /* function myFunction() {
        alert("my Funtion");
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
    } */
</script>


<style type="text/css">
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    #myImg {
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    #myImg:hover {
        opacity: 0.1px;
    }

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0, 0, 0); /* Fallback color */
        background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
    }

    /* Modal Content (image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        max-height: calc(100% - 10px);
        overflow-y: scroll;


    }

    /* Caption of Modal Image */
    #caption {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        text-align: center;
        color: #ccc;
        padding: 10px 0;
        height: 150px;
    }

    /* Add Animation */
    .modal-content, #caption {
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @-webkit-keyframes zoom {
        from {
            -webkit-transform: scale(0)
        }
        to {
            -webkit-transform: scale(1)
        }
    }

    @keyframes zoom {
        from {
            transform: scale(0)
        }
        to {
            transform: scale(1)
        }
    }

    .close {
        float: right;
        font-size: 3.5rem !important;
        font-weight: 900 !important;
        line-height: 1;
        color: #ea0404 !important;
        text-shadow: 3 3px 2 #0c0101 !important;
        opacity: 1.5 !important;
    }

    /*
         .close {
        position: absolute;
        top: 15px;
        right: 35px;
        font-weight: bold;
        transition: 0.3s;

        float: right;
        font-size: 3.5rem;
        font-weight: 900;
        line-height: 1;
        color: #ef0303;
        opacity: 2.5;
    }
     */
    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }

    /* 100% Image Width on Smaller Screens */
    @media only screen and (max-width: 700px) {
        .modal-content {
            width: 100%;
        }
    }
</style>


<style>
    header {
        position: relative;
        background-color: black;
        height: 10vh;
        min-height: 15rem;
        width: 100%;
        overflow: hidden;
    }

    header video {
        position: absolute;
        top: 50%;
        left: 50%;
        min-width: 100%;
        min-height: 50%;
        width: auto;
        height: auto;
        z-index: 0;
        -ms-transform: translateX(-50%) translateY(-50%);
        -moz-transform: translateX(-50%) translateY(-50%);
        -webkit-transform: translateX(-50%) translateY(-50%);
        transform: translateX(-50%) translateY(-50%);
    }

    header .container {
        position: relative;
        z-index: 2;
    }

    header .overlay {
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        background-color: black;
        opacity: 0.5;
        z-index: 1;
    }

    @media (pointer: coarse) and (hover: none) {
        header {
            /* background: url('TeamPidikili/images/janasena_video.mp4') black no-repeat center center scroll; */
        }

        /*  header video {
           display: none;
         } */
    }

    .text-red {
        color: red;
    }

</style>
	

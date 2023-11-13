<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ page isELIgnored="false" %>

    <link rel="icon" type="image/png" href="/TeamPidikili/images/jsp-main.jpg"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.8/css/AdminLTE.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
          rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">

    <!-- Latest compiled JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.8/js/adminlte.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fitvids/1.2.0/jquery.fitvids.min.js"></script>


    <!-- <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->


    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>

</head>
<script type="text/javascript">
    function back() {
        window.history.back()
    }
</script>


<style type="text/css">
    .table-bordered {


    }

    tr {
        border: 2px solid red;
    }

    th {
        color: white;

        background: #007bff;
        border: 2px solid pink;
    }

    td {
        border: 2px solid green;
    }


    [type=reset], [type=submit], button, html [type=button] {
        -webkit-appearance: button;
        width: 100px;
        background: cornflowerblue;
        padding: 5px;
        overflow: hidden !important;
        color: white;
        font-size: 14px;
    }

    [type=text], [type=password] {
        -webkit-appearance: button;
        padding: 2px;
        overflow: hidden !important;
        border-top-right-radius: 50px;
        border-top-left-radius: 50px;
        border-bottom-right-radius: 50px;
        border-bottom-left-radius: 50px;
        font-size: 12px;
    }

    label {
        font-weight: 300;
    }

    div.panel-footer .bg-color {
        /* padding-top:10px; */
        font-weight: 700;
        font-size: 14px;
        /* background:#ee8343; */
        /* background-color:#343b42; #be4e4e */
        color: black;
        clear: both;
        bottom: 0px;
        /*  margin-bottom: 60px; */
        padding-right: 0px;
        width: 100%;
        text-align: center;
        position: relative;
    }

    @media only screen and (min-width: 768px) {
        /* For desktop: */
        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }
    }

    /* For mobile phones: */
    [class*="col-"] {
        width: 100%;
    }

    .panel.panel-primary {
        width: 100%;
        /* max-width:500px; */
        height: auto;


    }

    /* .col-xs-12 .col-sm-6{
    padding-top:10px;
    } */

    .panel-body {
        font-size: 16px;
        font-family: "Trebuchet MS", Helvetica, sans-serif;

        /* "Palatino Linotype", "Book Antiqua", Palatino, serif; */
        /* Arial, Helvetica, sans-serif; */
        font-weight: 300;
    }

    .panel-heading {

        font-size: 28px;
        /* text-shadow: 1px 1px 0 #1d9d74, 1px 1px 0 rgba(0,0,0,0.1); */
        text-shadow: 1px 1px black;
    }

    .panel-heading .index-heading {
        position: relative;
    }


    .nav > li > a:hover, .nav > li > a:active, .nav > li > a:focus {
        color: red;
        background: green;
    }

    .nav-item, .nav.open > a, .nav.open > a:focus, .nav.open > a:hover {
        background-color: none !important;
        border-color: none !important;
    }

    .nav-item, .nav.open > a, .nav.open > a:hover, .nav.open > a:focus {
        background-color: none !important;
        border-color: none !important;
    }

    .nav .open > a, .nav .open > a:hover, .nav .open > a:focus {
        /*   background-color: #eee;
          border-color: #428bca; */
    }

    .active {
        font-weight: bold;
        font-color: green;
    }

    /* 	#main-menu a:hover,#main-menu a:focus,#main-menu a:active,#main-menu a.highlighted
            {
            background: #eeeeee;
            color: red !important;
        } */
    .nav-link.current, .nav-item.current {
        background: orange;
    }


    .dropdown-menu {
        font-size: 16px;
        top: 0;
        left: 100%;
        margin-top: -1px;
    }

    .dropdown-menu > li > a {
        color: #010912 !important;
        font-family: sans-serif !important;
        text-shadow: none !important;
    }

</style>
<script type="text/javascript">
    function alphabetsOnly(str) {

        var str1 = str.value;
        var str11 = str.value.replace(/[^a-zA-Z]/gi, '');
        $(str).val(str11);
    }

    function alphabetsWithSpace(str) {
        var str1 = str.value;
        var str11 = str.value.replace(/[^a-zA-Z ]/gi, '');
        $(str).val(str11);
    }


    function alphabetsNumericSpace(str) {

        var str1 = str.value;
        var str11 = str.value.replace(/[^a-zA-Z 0-9]/gi, '');
        $(str).val(str11);
    }

    function numbersOnly(str) {
        var str1 = str.value;

        var str11 = str.value.replace(/[^0-9]/gi, '');
        $(str).val(str11);
    }
</script>
<script type="text/javascript">

    $(".nav-item.dropMenu.dropdown").hover(function () {
        $(this).addClass('open');
        $(this).addClass('show');
    });

</script>


<body style="_display:inline-block;_font-weight: position: relative;font-family: cursive, Times, serif;font-size:14px;">

<div class="container-fluid border border-primary"
     style="margin-right:15px;margin-left:5px;_padding-left:10px;_padding-right:10px;min-height:calc(100vh - 100px);word-wrap: break-word;width:auto;">


    <!-- added code #211e52 #fd7e14 #c72b11-->
    <!-- <div class="panel-group col-xs-12" > #d49f79-->
    <div class="panel panel-default">
        <div class="panel-heading index-heading col-xs-12">
            <tiles:insertAttribute name="tpHeader"/>
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

        </div>

        <div class="panel-body col-xs-12" style="background:#15385a;min-height:calc(100% - 120px)">
            <tiles:insertAttribute name="body"/>
        </div>


        <div class="col-xs-12 bg-color col-xs-12" style="margin-bottom:2px;margin-top:0px;padding-top:10px;">
            <tiles:insertAttribute name="tpFooter"/>
        </div>

    </div>

    <!-- </div> -->

</div>


</body>


<script type="text/javascript">

    $(document).ready(function () {
        // Add class .active to current link
        $.navigation = $('ul#main-menu');

        $.navigation.find('a').each(function () {

            var cUrl = String(window.location).split('?')[0];

            if (cUrl.substr(cUrl.length - 1) == '#') {
                cUrl = cUrl.slice(0, -1);
            }

            if ($($(this))[0].href == cUrl) {
                $(this).addClass('current');

                $(this).parents('ul').add(this).each(function () {
                    $(this).parent().addClass('current');
                });

            }

        });


        $('.dropdown-menu').on("hover", function (e) {
            $(this).next('ul').toggle();
            //e.stopPropagation();
            //e.preventDefault();
        });
    });


</script>


<style>
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

    /* #4c1113 The Modal (background) */
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
        /* background-color: rgb(0,0,0); */ /* Fallback color */
        /* background-color: rgba(0,0,0,0.9); */ /*Black w/ opacity */
    }

    /* Modal Content (image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 60%;
        max-width: 500px;
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
        /* padding: 10px 0; */
        height: 50px;
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

        font-size: 3.5rem !important;
        font-weight: 900 !important;
        /* line-height: 1; */
        color: #ea0404 !important;
        /*  text-shadow: 3 3px 2 #0c0101 !important; */
        opacity: 1.5 !important;
    }


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

<script type="text/javascript">

    //Get the modal
    var modal = document.getElementById('myModal');

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById('myImgFamily');

    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    if (img != null) {


        img.onclick = function () {

            modal.style.display = "block";
            modalImg.src = this.src;
            //captionText.innerHTML = this.alt;

        }

    }
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

</script>


<script type="text/javascript">

    $(document).ready(function () {
        //Get the modal
        var modal = document.getElementById('myModal');
        var x = $("#imgSize").val();
        var clickedImgId = null;

        $("img").click(function () {
            clickedImgId = $(this).attr("id");
            var modalImg = document.getElementById("img01");
            var img = document.getElementById('' + clickedImgId);

            modal.style.display = "block";
            modalImg.src = this.src;

// Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
            $("span").click(function () {
                modal.style.display = "none";
            });

        });

    });
</script>

</html>
    
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ include file="fragments/taglib.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Personal Portfolio - ThinkingCapital Postfunding</title>
    <%@ include file="fragments/header.jspf"%>

</head>
<body>
    <%@ include file="fragments/north.jspf"%>
    <div class="container-projects" style="padding-top: 35px; height:40em;">
        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <br /><br /><br /><br />
                    <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="Shield UI">My profile</a></p>
                    <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="Shield UI">My Current Fund</a></p>
                    <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="Shield UI">My Bisuness Info</a></p>
                    <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="Shield UI">TC Services</a></p>
                    <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="Shield UI">Message From TC</a></p>
                </div>
                <div class="col-md-8">
                    <div id="chart"></div>
                </div>
            </div>
        </div>
    </div>


    <footer id="footer" class="clearfix">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <p>
                        <a class="fa fa-twitter footer-socialicon fa-2x" target="_blank" href="https://twitter.com/"></a>&nbsp;&nbsp;
                        <a class="fa fa-facebook footer-socialicon fa-2x" target="_blank" href="https://www.facebook.com/"></a>&nbsp;&nbsp;
                        <a class="fa fa-google-plus footer-socialicon fa-2x" target="_blank" href="https://plus.google.com/"></a>&nbsp;&nbsp;
                        <a class="fa fa-linkedin footer-socialicon fa-2x" target="_blank" href="https://plus.google.com/"></a>&nbsp;&nbsp;
                    </p>
                </div>
                <div class="col-md-9">
                    <h2 color="#fff">GET INSTANT APPROVAL FOR UP TO $300,000</h2>
                </div>
            </div>
        </div>
    </footer>
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.mixitup.min.js"></script>
    <link href="css/magnific-popup.css" rel="stylesheet">
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/theme.js"></script>
    <script type="text/javascript" src="js/shieldui-all.min.js"></script>

    <script type="text/javascript">
        jQuery(function($) {
            // Mix It Up Gallery and Magnific Popup setup
            $('.container-gallery').mixItUp();
            $('.container-gallery').magnificPopup({
                delegate: 'a',
                type: 'image'
            });
            // Chart
            $("#chart").shieldChart({
                seriesPalette: ["#2196F3", "#ffea05", "#83c653"],
                theme: "light",
                exportOptions: {
                    image: false,
                    print: false
                },
                primaryHeader: {
                    text: "My Fund Payback"
                },
                chartLegend: {
                    enabled: true
                },
                seriesSettings: {
                    pie: {
                        enablePointSelection: true
                    }
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "Usage",
                    data: [
                        { collectionAlias: "Having paid", y: 44.2, selected: true },
                        ["Current Left", 55.8]
                    ]
                }]
            });
        });
    </script>


  </body>
</html>
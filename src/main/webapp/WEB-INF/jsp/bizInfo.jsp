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

    <title>Personal Portfolio - mydemo Postfunding</title>
    <%@ include file="fragments/header.jspf"%>

</head>
<body>
<%@ include file="fragments/north.jspf"%>
<div class="container-projects" style="padding-top: 35px; height:100%;">
    <div class="container">

        <div class="row">
            <div class="col-md-2">
                <br /><br /><br /><br />
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="project.htm" title="Dashbord">My Dashboard</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="portfolio.htm" title="Portfolio">My Portfolio</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="bizInfo.htm" title="Biz Info">My Business Info</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="TC Services">TC Services</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="TC News">Message From TC</a></p>
            </div>
            <div class="col-md-10">
                <div class="panel panel-default">
                    <form:form cssStyle="box-shadow: 2px 2px;">
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="inputFirstName">First Name</label>
                                <input type="text" class="form-control" id="inputFirstName" value="Mike">
                            </div>
                            <div class="form-group col-md-5">
                                <label for="inputLastName">Last Name</label>
                                <input type="text" class="form-control" id="inputLastName" value="Miao">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" id="inputEmail4" value="mmiao@mydemo.ca">
                            </div>
                            <div class="form-group col-md-5">
                                <label for="inputCell">Cell</label>
                                <input type="text" class="form-control" id="inputCell" value="514-123--3456">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="inputAddress2">Address</label>
                                <input type="text" class="form-control" id="inputAddress2" value="4200 Douchestor Dr">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputCity">City</label>
                                <input type="text" class="form-control" id="inputCity" value="West-Mount">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <select id="inputState" class="form-control">
                                    <option selected>Choose...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputZip">Zip</label>
                                <input type="text" class="form-control" id="inputZip" value="h3w 0u0">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <button type="submit" class="btn btn-primary" style="float:right;"><spring:message code="BTN_SUBMIT"/></button>
                            </div>
                        </div>
                    </form:form>
                </div>

                <div class="panel panel-default col-md-10">
                    <div class="panel-heading col-md-10">
                        <h3 style="font-weight: 500; font-family: 'Times New Roman';">Your upload Documents</h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive-sm">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Document Id</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>000123</td>
                                    <td>Business Register Document.pdf - Quebec</td>
                                    <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>000124</td>
                                    <td>Leasing document.pdf -  Montreal</td>
                                    <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>000125</td>
                                    <td>Ownership document.pdf -  from Lawyer Patrik</td>
                                    <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
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

</body>
</html>

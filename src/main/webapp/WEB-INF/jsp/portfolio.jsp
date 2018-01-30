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
<div class="container-projects" style="padding-top: 35px; height:100%;">
    <div class="container">

        <div class="row">
            <div class="col-md-2">
                <br /><br /><br /><br />
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="project.htm" title="Dashbord">My Dashboard</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="portfolio.htm" title="Portfolio">My Portfolio</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="bizInfo.htm" title="Biz Info">My Bisuness Info</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="TC Services">TC Services</a></p>
                <p><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>&nbsp;&nbsp; <a href="#" title="TC News">Message From TC</a></p>
            </div>
            <div class="col-md-10">
                <div class="panel-heading col-md-10">
                    <h3 style="font-weight: 500; font-family: 'Times New Roman';">Your Fund Information</h3>
                </div>
               <div class="panel panel-default col-md-10">
                   <h5>INITIAL PURCHASE & SALE SCHEDULE</h5>
                   <table class="table">
                       <thead style="background-color: #eeeeee; color:#96503f;">
                       <tr>
                           <th scope="col">Purchase Price</th>
                           <th scope="col">Amount Sold</th>
                           <th scope="col">Net Amount Sold</th>
                           <th scope="col">Specified Percentage</th>
                           <th scope="col">Date</th>
                       </tr>
                       </thead>
                       <tbody>
                       <tr>
                           <td> $136,377.00</td>
                           <td>$170,835.44</td>
                           <td>$170,835.44</td>
                           <td>@9%</td>
                           <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                               <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                       </tr>
                       </tbody>
                   </table>

                   <table class="table">
                   <thead style="background-color: #eeeeee; color:#96503f;">
                   <tr>
                       <h5>RELOAD SCHEDULE</h5>
                       <th scope="col">Reload Number</th>
                       <th scope="col">Trigger Event</th>
                       <th scope="col">Purchase Price</th>
                       <th scope="col">Amount Sold</th>
                   </tr>
                   </thead>
                   <tbody>
                   <tr>
                       <th scope="row">1</th>
                       <td>35% Repaid</td>
                       <td>$0.00</td>
                       <td>$0.00</td>
                   </tr>
                   <tr>
                       <th scope="row">2</th>
                       <td>60% Repaid</td>
                       <td>$48,143.67</td>
                       <td>$64,641.09</td>
                   </tr>
                   <tr>
                       <th scope="row">3</th>
                       <td>90% Repaid</td>
                       <td>$72,938.55</td>
                       <td>$97,932.43</td>
                   </tr>
                   </tbody>
               </table>
                   <table class="table">
                       <thead style="background-color: #eeeeee; color:#96503f;">
                       <tr>
                           <h5>RECEIVABLES REIMBURSEMENT SCHEDULE</h5>
                           <th scope="col">Purchase</th>
                           <th scope="col">Point of Eligibility</th>
                           <th scope="col">Maximum Receivables Reimbursement</th>

                       </tr>
                       </thead>
                       <tbody>
                       <tr>
                           <td>Merchant Discount</td>
                           <td>90% Repaid of Advance</td>
                           <td></td>
                       </tr>
                       <tr>
                           <td>Buyout*</td>
                           <td>Anytime</td>
                           <td>10% of amount outstanding</td>
                       </tr>
                       </tbody>
                   </table>
               </div>

               <div class="panel panel-default  col-md-10">
                  <div class="panel-heading col-lg-10" style="width: 100%">
                    <h3 style="font-weight: 500; font-family: 'Times New Roman';">Your txn history</h3>
                  </div>
                  <div class="panel-body col-md-10">
                    <div class="table-responsive-sm">
                        <table class="table">
                            <caption style="font-weight: 500">Your txn in 2018-01</caption>
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Txn Id</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>000123</td>
                                <td><fmt:formatNumber value="800.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>000124</td>
                                <td><fmt:formatNumber value="980.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1080.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1180.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive-sm">
                        <table class="table">
                            <caption style="font-weight: 500">Your txn in 2017-12</caption>
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Txn Id</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>000123</td>
                                <td><fmt:formatNumber value="800.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>000124</td>
                                <td><fmt:formatNumber value="980.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1080.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1180.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive-sm">
                        <table class="table">
                            <caption style="font-weight: 500">Your txn in 2017-11</caption>
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Txn Id</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>000123</td>
                                <td><fmt:formatNumber value="800.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>000124</td>
                                <td><fmt:formatNumber value="980.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1080.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1180.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="table-responsive-sm">
                        <table class="table">
                            <caption style="font-weight: 500">Your txn in current 2017-10</caption>
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Txn Id</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>000123</td>
                                <td><fmt:formatNumber value="800.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>000124</td>
                                <td><fmt:formatNumber value="980.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1080.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>000125</td>
                                <td><fmt:formatNumber value="1180.00" type="currency" currencyCode="CAD"/></td>
                                <td><fmt:parseDate value="2018-01-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive-sm">
                      <table class="table">
                        <caption style="font-weight: 500">Your txn in 2017-09</caption>
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Txn Id</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>000123</td>
                            <td><fmt:formatNumber value="800.00" type="currency" currencyCode="CAD"/></td>
                            <td><fmt:parseDate value="2017-11-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>000124</td>
                            <td><fmt:formatNumber value="980.00" type="currency" currencyCode="CAD"/></td>
                            <td><fmt:parseDate value="2017-12-10" pattern="yyyy-MM-dd" var="parsedDate" type="date" />
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${parsedDate}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>000125</td>
                            <td><fmt:formatNumber value="1080.00" type="currency" currencyCode="CAD"/></td>
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

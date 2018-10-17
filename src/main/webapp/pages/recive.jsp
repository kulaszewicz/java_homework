<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: JakubKulaszewicz
  Date: 17.10.2018
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //RECIVED VARs
    Double[] getIntrestPart = (Double[]) request.getAttribute("interestPart");
    Double[] getCapitalPart = (Double[]) request.getAttribute("capitalPart");
    Double[] getInterestAll = (Double[]) request.getAttribute("interestAll");
    Integer[] getNumOfInstallments = (Integer[]) request.getAttribute("numOfInstallments");
    Double getFixedFee = (Double) request.getAttribute("fixedFee");

    DecimalFormat df = new DecimalFormat("####0.00");

%>
<html>
<head>
    <!--- CSS LINKS -->

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <!--- FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Modern+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

    <title>Loany</title>
</head>
<body>
    <header>
        <h1>Java Homework #1</h1>
        <h2>form for calculating loan installments</h2>
    </header>
    <section class="section-exe">
        <h3 id="err-js">Your results </h3>
        <div class="row">
            <table>
                <tr>
                    <th>#</th>
                    <th>Capital part</th>
                    <th>Interest part</th>
                    <th>Fixed fee</th>
                    <th>Installment together</th>
                </tr>
                <%
                    for(int i = 0; i < getNumOfInstallments.length-1; i++){
                %>
                    <tr>
                        <td><%= getNumOfInstallments[i]%></td>
                        <td><%= df.format(getCapitalPart[i])%>zł</td>
                        <td><%= df.format(getIntrestPart[i])%>zł</td>
                        <td><%= df.format(getFixedFee)%>zł</td>
                        <td><%= df.format(getInterestAll[i])%>zł</td>
                        <%
                            for (int j = 0; j<5; j++){
                        %>
                            <%}
                       %>
                    </tr>
                <%
                    }
                %>
            </table>
        </div>
    </section>
    <footer>
        <div class="row">
            <p>
                Copyright &copy; 2018 by Jakub Kulaszewicz. All rights reserved.
            </p>
        </div>
    </footer>
</body>
</html>

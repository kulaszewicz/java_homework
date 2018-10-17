<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
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
    <h3 id="err-js">Enter Data</h3>
    <div class="row">
        <div class="col span-1-of-2 box">
            <ul class="form-nav">
                <form action="DemoServlet" method="get" id="myForm">
                    <label>The loan amount requested:<input type="text" id="amount" name="amount"/></label>
                    <label>Number of installments:<input type="text" id="quantity" name="quantity"/></label>
                    <label>Interest:<input type="text" id="percentage" name="percentage"/></label>
                    <label>Fixed Fee:<input type="text" id="fixedFee" name="fixedFee"/></label>
                    <label>Type of installments:
                        <select id="type" name="type">
                            <option value="constant">Constant</option>
                            <option value="decreasing">Decreasing</option>
                        </select>
                    </label>
            </ul>
        </div>
        <div class="col span-1-of-2 box">
            <div class="second-box">
                <i class="fas fa-pen-fancy"></i>
                <div class="buttons-1">
                    <input type="button"  name="SEND" value="SEND" class="btn sending"/>
                    </form>
                    <input type="button" name="CONVERT" value="CONVERT TO PDF" class="btn con"/>
                </div>
                <div class="git">
                    <button name="GIT" value="GIT" class="btn git-btn" onclick="window.location.href='https://github.com/kulaszewicz/java_homework'">GIT<i class="fab fa-github"></i></button>
                </div>
            </div>
        </div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/script.js"></script>
</html>


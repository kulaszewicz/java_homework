<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <!--- CSS LINKS -->

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!--- FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Modern+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
</head>
<body>
<header>
    <h1>Java Homework #1</h1>
    <h2>form for calculating loan installments</h2>
</header>
<section class="section-exe">
    <h3>Enter Data</h3>
    <div class="row">
        <div class="col span-1-of-2 box">
            <ul class="form-nav">
                <label>The loan amount requested:<input type="text" id="amount" name="amount"/></label>
                <label>Number of installments:<input type="text" id="quantity" name="quantity"/></label>
                <label>Interest:<input type="text" id="percentage" name="percentage"/></label>
                <label>Fixed Fee:<input type="text" id="fixed-fee" name="fixed fee"/></label>
                <label>Type of installments:<input type="text" id="type" name="type"/></label>
            </ul>
        </div>
        <div class="col span-1-of-2 box">
            <div class="second-box">
                <i class="fas fa-pen-fancy"></i>
                <div class="buttons-1">
                    <input type="button" name="SEND" value="SEND" class="btn"/>
                    <input type="button" name="CONVERT" value="CONVERT TO PDF" class="btn con"/>
                </div>
                <div class="git">
                    <button name="GIT" value="GIT" class="btn git-btn">GIT<i class="fab fa-github"></i></button>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>


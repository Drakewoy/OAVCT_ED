<%-- 
    Document   : index
    Created on : Oct 9, 2023, 9:08:37 PM
    Author     : laine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .container {
            display: flex;
        }

        img {
            width: 50px;
            margin: auto;
            display: block;
        }

        h1 {
            text-align: center;
            font-size: 16px;
        }

        .container2 {
            /* padding: 5px; */
            overflow-x: auto;
            width: 20vw;
            border: 1px solid #333;
        }

        .container2 div {
            box-shadow: 0px 0px 5px 5px gray;
            margin-bottom: 40px;
            margin-left: 9px;
            margin-right: 9px;
            margin-top: 11px;

        }
        .container2 div:hover{
            background-color: aqua;
        }
        .container2 a{
            text-decoration: none;
            margin-bottom: 16px;
            display: block;
        }
        .container2 a div{
            margin-bottom: 18%;
           }
        .container2 div:last-child {
            margin-bottom: unset;
        }

        .container1 {
            border: 1px solid #333;
            width: 70vw;
        }
    </style>
</head>

<body>
    <div class="container">
       <%@include file="partiel/sideMenu.jsp" %>
        <div class="container1"> Grand contenue</div>
    </div>
</body>

</html>

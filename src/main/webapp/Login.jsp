<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Cabin' rel='stylesheet'>
    <title>Login</title>
    <style>
      body {font-family: 'Cabin'}
      form {border: 3px solid #f1f1f1;}

      .header{
        text-align: center;
        font-size: 35px;
      }

      input[type=text], input[type=password] {
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
        width: 50%;

      }

      button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 50%;

      }

      button:hover {
        opacity: 0.8;
      }

      .registerbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #4CAF50;
      }

      .imgcontainer {
        text-align: center;
        margin: 24px 0 36px 0;
      }

      img.avatar {
        width: 25%;
      }

      .container {
        text-align: center;
        padding: 16px;
      }

      .bottomcontainer {
        padding: 16px;
      }

      .remember {
        float: left;
        padding-top: 16px;
      }
      span.psw {
        float: right;
        padding-top: 16px;
      }

      /* Change styles for span and cancel button on extra small screens */
      @media screen and (max-width: 300px) {
        span.psw {
          display: block;
          float: none;
        }
        .registerbtn {
          width: 100%;
        }
      }
    </style>
  </head>

  <body>
  <div class="header">
    <h2>EE Bank</h2>
  </div>
  <div class="imgcontainer">
    <img src="money.png" alt="Avatar" class="avatar">
  </div>

  <form action="/login" method="post">

    <div class="container">
      <b>Acount ID </b>
      <input type="text" placeholder="Enter Acount ID" name="uname" required><BR>

      <b>Password </b>
      <input type="password" placeholder="Enter Password" name="psw" required><BR>

      <button type="submit">L o g i n</button><BR>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label><BR>
    </div>

    <div class="bottomcontainer" style="background-color:#f1f1f1">
      <button type="button" class="registerbtn">Register</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
  </body>
</html>


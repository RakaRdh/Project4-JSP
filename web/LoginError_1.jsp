<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error</title>
        <link rel="stylesheet" href="CSS/loginerror.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    </head>
    <body>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login Failed!</span></div>
                <form>
                    <div>
                        <span>
                            <h4>Incorrect Email or Password!<br><br>
                                <div class="row button">
                                    <input type="button" value="Back" onclick="window.location='login.jsp'">
                                </div>
                            </h4>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<html>
<head>
    <title>Login Page</title>
    <style>

		body {
		  display: flex; 
		  align-items: center; 
		  min-height: 100vh; 
		  margin: 0; 
		  font-family: sans-serif; 
		  justify-content: center;
		}
		
		.container {
		  border: none; 
		  width: 400px; 
		  background-color: rgba(255, 255, 255, 0.2); 
		  padding: 20px;
		  border-radius: 5px; 
		  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); 
		  text-align:center;
		}
		
		.login-header, .footer {
		  height: 70px; 
		}
		
		#bg-video {
		  position: fixed;
		  top: 0;
		  left: 0;
		  min-width: 100%;
		  min-height: 100%;
		  z-index: -1; 
		  object-fit: cover;
		}
		
		.maincont {
		  display: flex;
		  flex-direction: column; 
		  align-items: center; 
		  justify-content: center;
		}
		
		h1 {
		  font-size: 36px;
		  margin-bottom: 20px; 
		}
		
		form {
		  display: flex; 
		  flex-direction: column;
		}
		
		form label {
		  display: block;
		  margin-bottom: 5px;
		}
		
		input[type="text"], input[type="password"] {
		  padding: 10px;
		  border: 1px solid #ccc;
		  margin-bottom: 10px;
		}
		
		input[type="submit"] {
		  background-color: #08c2ff;
		  color: white;
		  padding: 10px 20px;
		  border: none;
		  cursor: pointer;
		  border-radius: 3px;
		}
		
		a {
		  color: #08c2ff;
		  text-decoration: none; 
		}
		
    </style>
</head>
<body>
	<video autoplay muted loop id="bg-video">
    <source src="images/sky.mp4" type="video/mp4">
    Your browser does not support the video tag.
	</video>
	<div class="maincont">
    <div class="container">
        <div class="hero">
            <h1>LogIn</h1>
        </div>
        <br><br>
        <form action="loginprocess.jsp" method="post">
            UserName:
            <input type="text" name="uname" required>
            <br><br>
            Password:
            <input type="password" name="pwd" required>
            <br><br>
            <input type="submit" value="Login">
            <br><br>
            New Registration 
            <a href="register.jsp">Click here</a>
        </form>
        <!-- <div class="footer">
            <p>Copyright @ BestBooks</p>
            <p>pawan2004soni@gmail.com</p>
        </div>-->
    </div>
    </div>
    <!--
    <%
    Cookie c[] = request.getCookies();
    for (int i=0;i<c.length; i++)
    {
    Cookie t = c[i];
    out.print("cookieName="+t.getName());
    out.print("cookieValue="+t.getValue());
    out.print("cookieName="+t.getMaxAge());
    }
    %>
    
    <%
        Cookie c2 = new Cookie("c1","thisis");
        Cookie c1 = new Cookie("c2","this");
        c1.setMaxAge(60*60*24);
        response.addCookie(c2);
        response.addCookie(c1);
        out.print("cokkie added");
        
    %>
    -->
    
</body>

</html>

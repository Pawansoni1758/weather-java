<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<html>
<head>
    <title>Login Page</title>
    <style>

		body {
		  display: flex; /* Makes the body a flex container for vertical centering */
		  align-items: center; /* Vertically centers the .maincont element */
		  min-height: 100vh; /* Ensures the body fills the viewport height */
		  margin: 0; /* Removes default body margins */
		  font-family: sans-serif; /* Sets a default font family */
		  justify-content: center;
		}
		
		.container {
		  border: none; /* Removes unnecessary border */
		  width: 400px; /* Adjust width as needed */
		  background-color: rgba(255, 255, 255, 0.8); /* White background with some opacity */
		  padding: 20px; /* Adds some padding for spacing */
		  border-radius: 5px; /* Adds rounded corners */
		  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
		  text-align:center;
		}
		
		.login-header, .footer {
		  height: 70px; /* Adjust height as needed */
		}
		
		#bg-video {
		  position: fixed;
		  top: 0;
		  left: 0;
		  min-width: 100%;
		  min-height: 100%;
		  z-index: -1; /* Sends the video behind other content */
		  object-fit: cover;
		}
		
		.maincont {
		  display: flex;
		  flex-direction: column; /* Makes content within .maincont vertical */
		  align-items: center; /* Horizontally centers content within .maincont */
		  justify-content: center;
		}
		
		h1 {
		  font-size: 36px;
		  margin-bottom: 20px; /* Adds space between heading and form */
		}
		
		form {
		  display: flex; /* Makes form elements flexible for better layout */
		  flex-direction: column;
		}
		
		form label { /* Add labels for accessibility and clarity (optional) */
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
		  text-decoration: none; /* Removes underline from link */
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

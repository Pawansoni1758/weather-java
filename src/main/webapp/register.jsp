<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <title>title</title>
        <style>
            .container{
                justify-content: center;
                align-content: center;
                align-items: center;
                text-align: center;
                border: 2px solid black;
                width: 300px;
            }
            .hero, .footer{
                height: 70px;
                /*border: 2px solid black;*/
            }
            #bg-video {
		    position: fixed;   /* Stays fixed even if the page scrolls */
		    top: 0;
		    left: 0;
		    min-width: 100%;   /* Ensure the video covers the width */
		    min-height: 100%;  /* Ensure the video covers the height */
		    z-index: -1;       /* Sends the video behind other content */
		    object-fit: cover; /* Ensures the video scales properly without distortion */
			}
			
			body {
  display: flex; /* Makes the body a flex container for vertical centering */
  align-items: center; /* Vertically centers the .container element */
  min-height: 100vh; /* Ensures the body fills the viewport height */
  margin: 0; /* Removes default body margins */
  font-family: sans-serif; /* Sets a default font family */
  justify-content:center;
}

.container {
  border: none; /* Removes unnecessary border */
  width: 400px; /* Adjust width as needed */
  background-color: rgba(255, 255, 255, 0.2); /* White background with some opacity */
  padding: 20px; /* Adds some padding for spacing */
  border-radius: 5px; /* Adds rounded corners */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
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

form {
  display: flex; /* Makes form elements flexible for better layout */
  flex-direction: column;
}

form label { /* Add labels for accessibility and clarity (optional) */
  display: block;
  margin-bottom: 5px;
}

input[type="text"], input[type="email"], input[type="number"], input[type="password"] {
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

.hero h1 {
  font-size: 36px; /* Adjust heading size as needed */
  margin-bottom: 20px; /* Adds space between heading and form */
}
        </style>
    </head>
    <body>
	    <video autoplay muted loop id="bg-video">
	    <source src="images/sky.mp4" type="video/mp4">
	    Your browser does not support the video tag.
		</video>
        <div class="container">
            <div class="hero">
                <h1>Register</h1>
            </div>
            <form action="register.jsp" method="post">
                
                Email:
                <input type="email" name="email" required>
                <br>
                
                <!-- 
                Username:
                <input type="tetx" name="uname" required>
                <br>-->
                
                Password:
                <input type="password" name="pwd" required>
               <br>
                Name:
                <input type="text" name="name" required>
                <br>
                Contact:
                <input type="number" name="num" required>
                <br>
                <input type="submit" value="submit">
                <br>
                Already have an account
                <a href="login.jsp">Click here</a>
            </form>
            <!-- <div class="footer">
                <p>Copyright @ BestBooks</p>
                <p>pawan2004soni@gmail.com</p>
            </div>-->
        </div>
        <%
            if(request.getParameter("email")!=null){
            String email = request.getParameter("email");
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            String name = request.getParameter("name");
            String num = request.getParameter("num");
            int num2 = Integer.parseInt(num);
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/studms", "root", "845416");
            String sql= "insert into reg values('"+email+"', '"+uname+"', '"+pwd+"', '"+name+"', '"+num2+"')";
            Statement smt=con.prepareStatement(sql);
            smt.executeUpdate(sql);
            out.println("Register Successfully");
            };
        %>
    </body>
</html>

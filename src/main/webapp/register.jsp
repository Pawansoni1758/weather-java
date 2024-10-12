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
			
			body {
			  display: flex; 
			  align-items: center; 
			  min-height: 100vh; 
			  margin: 0; 
			  font-family: sans-serif; 
			  justify-content:center;
			}
			
			.container {
			  border: none; 
			  width: 400px; 
			  background-color: rgba(255, 255, 255, 0.2); 
			  padding: 20px; 
			  border-radius: 5px; 
			  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); 
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
			
			form {
			  display: flex; 
			  flex-direction: column;
			}
			
			form label { 
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
			  text-decoration: none;
			}
			
			.hero h1 {
			  font-size: 36px; 
			  margin-bottom: 20px; 
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
            
            };
        %>
    </body>
</html>

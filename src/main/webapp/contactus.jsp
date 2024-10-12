<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>
<link rel="stylesheet" href="contactus.css" />
</head>
<body>
	<video autoplay muted loop id="bg-video">
	    <source src="images/sky.mp4" type="video/mp4">
	    Your browser does not support the video tag.
	</video>
	<div class="nav">
		<button><a href="register.jsp">Signout</a></button>
		<button><a href="index.html">Dashboard</a></button>
	</div>
	<!-- 
	<div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.8994751971686!2d73.83122257508671!3d18.533444282562613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf797c679e05%3A0x2579cb5b06c4d90b!2sSymbiosis%20Institute%20of%20Computer%20Studies%20and%20Research!5e0!3m2!1sen!2sin!4v1696921320226!5m2!1sen!2sin"
         width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    -->
    <div class="maincont">
    <div class="container">
        <div class="hero">
            <h1>Contact Us!</h1>
        </div>
        <br>
        <form action="https://formsubmit.co/pawan2004soni@gmail.com" method="post">
            UserName:
            <input type="text" name="name" required>
            <br>
            Email:
            <input type="email" name="email" required >
            <br>
            Subject:
            <input type="text" name="subject" required>
            <br>
            Message:
            <textarea rows="5" cols="5" required name="message"></textarea>
            <br>
            
            <input type="submit" value="Send">
            <br><br>
        </form>
    </div>
    </div>
</body>

<footer>
	<div class="footer-container">
		<p>Developed by Pawan Kumar @ 2024 | Dynamic Web Project</p>
	</div>
</footer>

</html>
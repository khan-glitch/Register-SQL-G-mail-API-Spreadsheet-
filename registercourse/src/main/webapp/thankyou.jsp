<jsp:useBean id="register_course" class="model.Course" scope="request"/>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ThankYou</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    html,
    body {
      height: 100%;
      margin: 0;
      padding: 0;
      background-color: #2c3e50; /* Set the background color */
      color: #FFFFFF; /* Set the font color */
    }

    .navbar {
      background: #DAD3DD; /* Set the navbar background color */
    }

    .mylink {
      color: #FFFFFF; /* Set the link font color */
    }
   
    </style>
<body>
<!-- navigation -->
 <div class="container-fluid">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link " href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="training">Register</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div> <br>
 
  <div class="container">
 	<h2 style="text-align: center"> Thank you for registering session.</h2><br>
	<div style="text-align: center">
		<h4>Your registered email will soon receive comprehensive information regarding the chosen course. Wishing you a pleasant day.</h4>
	 </div><br>
	
	<h3>Registered Information</h3>

	<table border="1" width="50%">
		<tr>
			<td>Register Name</td>
			<td><jsp:getProperty name="register_course" property="name"/></td>
		</tr>
		<tr>
			<td>Register Age</td>
			<td><jsp:getProperty name="register_course" property="age"/></td>
		</tr>
		<tr>
			<td>Register Email</td>
			<td><jsp:getProperty name="register_course" property="email"/></td>
		</tr>
		<tr>
			<td>Register Course</td>
			<td><jsp:getProperty name="register_course" property="course"/></td>
		</tr>
				
	</table>
	</br>
	<div style="text-align: center">
    <a href="training" class="btn btn-outline-dark btn-lg mybtn1" role="button" style="background-color: #FFFFFF;">Register courses</a>
    <a href="index.html" class="btn btn-outline-dark btn-lg mybtn1" role="button" style="background-color: #FFFFFF;">Home</a>
  </div>
  </div>
</body>
</html>
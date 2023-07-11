<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <!-- Bootstrap JavaScript and jQuery libraries -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

  <script src="https://kit.fontawesome.com/f118da37d2.js" crossorigin="anonymous"></script>
  <style>
    html,
    body {
      height: 100%;
      margin: 0;
      padding: 0;
      background-color: #2c3e50; /* Set the background color */
    }
    
    body {
      color: white; /* Set the text color to white */
    }

  
    .form-container {
      display: flex;
      justify-content: center;
      align-items: center;
     
    }

  </style>
</head>

<body>

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
  </div>

<!-- About Section -->
  <section class="custom-section py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <h2 style="color: #3498DB" class="text-center mb-4">Training department</h2>
          <p style="color: grey">
           Kindly complete the following form to enroll in your prefered course.</p>
        
         
        </div>
      </div>
    </div>
  </section>
  <div class="form-container">
    <form action="Register" method="post">
      <table>
        <tr>
          <td>User Name:</td>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <td>User Age:</td>
          <td><input type="text" name="age"></td>
        </tr>
        <tr>
          <td>E-mail:</td>
          <td><input type="text" name="email"></td>
        </tr>
        <tr>
          <td>Select Courses</td>
          <td>
            <select name="course">
              <%
                if (request.getAttribute("mycourses") != null) {
                  List<String> courses = (List<String>) request.getAttribute("mycourses");
                  for (int i = 0; i < courses.size(); i++) {
              %>
              <option><%=courses.get(i)%></option>
              <%
                  }
                }
              %>
            </select>
          </td>
              </tr> 
    <tr>
      <td></td>
      <td><input type="submit" value="Register"></td>
    </tr>
  </table>
</form>
          

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.SelectedCourseDao;
import model.SendEmail;

public class RegisterSessionServlet extends HttpServlet {

	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String register_name = req.getParameter("name");
		String register_age = req.getParameter("age");
		String register_email = req.getParameter("email");
		String register_course = req.getParameter("course");
	
		

		SelectedCourseDao courseReg = new SelectedCourseDao();

		// Call the Method to save the register course
		Course reg_course = courseReg.saveRegisterCourse(register_name, register_age, register_email, register_course);

		
		// Send Email To User
		SendEmail mm=new SendEmail();
		String sub="Information About the Registered Session";
				
		if(register_course.equals("CIA(10:00 to 13:00)"))
		
		{
			
			String message="Hello! This is from training department. Thank you for registering to attend " +
					"the course. Your selected course is "+ register_course+ 
					". Since you choose to attend morning session, your schedule is from 10:00AM to 13:00AM " +
					"in the morning.";
			 mm.send("xxxxx","xxxxx",register_email,sub,message); 
		}
			
		else if (register_course.equals("Programming (15:00 - 17:00 )")){
			String message="Hello! This is from training department. Thank you for registering to attend " +
					"the course. Your selected course is "+ register_course+ 
					". Since you choose to attend evening session, your schedule is from 15:00PM to 17:00PM " +
					"in the evening.";
			 mm.send("xxxxxx","xxxxx",register_email,sub,message); 
		}
		else {
			String message="Hello! This is from training department. Thank you for registering to attend " +
					"the course. Your selected course is "+ register_course+ 
					". Since you choose to attend night session, your schedule is from 18:00PM to 21:00PM " +
					"in the night.";
			 mm.send("xxxxxx","xxxxxx",register_email,sub,message); 
		 }
		req.setAttribute("register_course", reg_course);

		// Dispatch the JSP
		RequestDispatcher rd = req.getRequestDispatcher("thankyou.jsp");
		rd.forward(req, resp);
		
	}
}

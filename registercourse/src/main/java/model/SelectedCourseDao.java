package model;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;

public class SelectedCourseDao {

    public Course saveRegisterCourse(String register_name, String register_age, String register_email, String register_course) {

        // TODO Auto-generated method stub
        Course reg_course=new Course();

        try {
            // step2: Register Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Step 3: Create Connection
            String url = "jdbc:mysql://localhost:3306/training";
            Connection con = DriverManager.getConnection(url, "root", "xxxxxx");

            System.out.println("Connenction " + con);

            // step4: Create a Statement
            Statement stmt = con.createStatement();

            // Insert to the database (Used executeUpdate for insert/delete and update)
            int result = stmt.executeUpdate(
                    "INSERT INTO training.course (name,age,email,course) values ('"
                            + register_name + "','" + register_age + "','" + register_email +"','" + register_course + "');");
            System.out.println("Insert Result is " + result);


                // Put the data to access from controller/JSP
                reg_course.setName(register_name);
                reg_course.setAge(register_age);
                reg_course.setEmail(register_email);
                reg_course.setCourse(register_course);
            // step 7: Close the statement and connection
            stmt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();

        }

        return reg_course;
    }
}
package model;

public class Course {

	String name;
	String age;
	String email;
	String course;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public Course(String name, String age, String email, String course) {
        super();
        this.name = name;
        this.age = age;
        this.email = email;
        this.course = course;
	}
	public Course() {
		super();
	}
		

}

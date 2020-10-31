package t3h.springboot.service;

import java.util.List;

import t3h.springboot.model.Student;

public interface StudentService {
	public List<Student> addStudent(Student st);
	public List<Student> editListStudent(String id, String name, int age);
	public List<Student> deleteStudent(String id);
	public List<Student> getListStudent();
}

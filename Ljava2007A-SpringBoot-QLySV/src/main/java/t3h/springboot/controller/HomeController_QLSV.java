package t3h.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import t3h.springboot.model.Student;

@Controller
public class HomeController_QLSV {
	@RequestMapping(value = "/homesv", method = RequestMethod.GET)
	public String getHome(Model model) {
		model.addAttribute("hello", "Hello world");
		model.addAttribute("listStudent", getListStudent());
		model.addAttribute("student", new Student("", "", 0));
		return "QuanLySinhVien";
	}
	
	
// HÀM THÊM SINH VIÊN
	private List<Student> addStudent(){
		List<Student> result = new ArrayList<>();
		return result;
	}
	
	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addst(@ModelAttribute(name = "student") Student student) {
		System.out.println("id: " +student.getId());
		System.out.println("name: " +student.getName());
		System.out.println("age: " +student.getAge());
		return "add";
	}
	
	
// EDIT SINH VIÊN 
	private List<Student> editStudent(){
		List<Student> result = new ArrayList<>();
		return result;
	}
	
	
// DELETE SINH VIÊN
	private List<Student> deleteStudent(){
		List<Student> result = new ArrayList<>();
		return result;
	}
	
	
// HIỂN THỊ DANH SÁCH SINH VIÊN 
	private List<Student> getListStudent(){
		List<Student> result = new ArrayList<>();
		return result;
	}
}

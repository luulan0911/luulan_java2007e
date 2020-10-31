package t3h.springboot.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import t3h.springboot.model.Student;

@Service
public class StudentServiceImplement implements StudentService{

	List<Student> result = new ArrayList<Student>();
	
	@Override
	public List<Student> addStudent(Student st) {
		result.add(st);
		return result;
	}

	@Override
	public List<Student> editListStudent(String id, String name, int age) {
		for (int i = 0; i < result.size(); i++) {
			if (result.get(i).getId().equals(id)) {
				result.get(i).setId(id);
				result.get(i).setName(name);
				result.get(i).setAge(age);
			}
		}
		return result;
	}

	@Override
	public List<Student> deleteStudent(String id) {
		for (int i = 0; i < result.size(); i++) {
			if (result.get(i).getId().equals(id)) {
				result.remove(i);
			}
		}
		return result;
	}

	@Override
	public List<Student> getListStudent() {
		return result;
	}
	
}

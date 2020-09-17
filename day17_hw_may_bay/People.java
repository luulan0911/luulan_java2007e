package t3h.ljava2007a.day17_hw_may_bay;

public abstract class People implements HanhDongTinhTien{
	protected String name;
	protected String gender;
	protected int age;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Customer: \n" +
	           "name = " + name + "\n" +
	           "gender = " + gender +  "\n" +
	           "age = " + age + "\n";
	}
	
}

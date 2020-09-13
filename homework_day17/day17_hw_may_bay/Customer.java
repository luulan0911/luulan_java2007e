package t3h.ljava2007a.day17_hw_may_bay;

import java.util.Scanner;

public class Customer {
	public String name;
	public String gender;
	public int age;
	public String flightName;
	public int flightTime;
	public int veCaoCap;
	public int veThuongGia;
	public int veTrungCap;
	public float money;
	
	public void InputData() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Ten khach hang: ");
		name = sc.nextLine();
		System.out.println("Gioi tinh: ");
		gender = sc.nextLine();
		System.out.println("Tuoi: ");
		age = sc.nextInt();
		System.out.println("Ten chuyen bay: ");
		flightName = sc.nextLine();
		System.out.println("Thoi gian bay: ");
		flightTime = sc.nextInt();
		System.out.println("So luong ve cao cap: ");
		veCaoCap = sc.nextInt();
		System.out.println("So luong ve thuong gia: ");
		veThuongGia = sc.nextInt();
		System.out.println("So luong ve trung cap: ");
		veTrungCap = sc.nextInt();
		System.out.println("Tong tien: ");
		money = sc.nextFloat();
	}
}

package t3h.ljava2007a.day17_demo_cua_hang_dien_may;

import java.util.Scanner;

public class Laptop extends ThongTinChung{
	public String CPU;
	public String chipDoHoa;
	public String ram;
	public String loaiOcung;
	public String heDieuHanh;
	public String manHinh;
	public String loaiPin;
	public String doDay;
	public String canNang;
	public String oDia;
	
	public void InLT() {
		Scanner sc = new Scanner(System.in);
		System.out.println("CPU: ");
		CPU = sc.nextLine();
		System.out.println("Chip do hoa: ");
		chipDoHoa = sc.nextLine();
		System.out.println("RAM: ");
		ram = sc.nextLine();
		System.out.println("Loai o cung: ");
		loaiOcung = sc.nextLine();
		System.out.println("He dieu hanh: ");
		heDieuHanh = sc.nextLine();
		System.out.println("Man hinh: ");
		manHinh = sc.nextLine();
		System.out.println("Dung luong pin: ");
		loaiPin = sc.nextLine();
		System.out.println("Do day: ");
		doDay = sc.nextLine();
		System.out.println("Can nang: ");
		canNang = sc.nextLine();
		System.out.println("O dia: ");
		oDia = sc.nextLine();
	}
}

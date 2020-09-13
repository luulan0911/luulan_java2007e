package t3h.ljava2007a.day17_demo_cua_hang_dien_may;

import java.util.Scanner;

public class SmartPhone extends ThongTinChung{
	public String manHinh;
	public String heDieuHanh;
	public String camSau;
	public String camTruoc;
	public String hoTroTheNho;
	public String hoTro2sim;
	public String pin;
	public String loaiCamUng;
	public String hoTroWifi;
	public String ram;
	public String rom;
	
	public void InSP() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Man hinh: ");
		manHinh = sc.nextLine();
		System.out.println("He dieu hanh: ");
		heDieuHanh = sc.nextLine();
		System.out.println("Camera sau: ");
		camSau = sc.nextLine();
		System.out.println("Camera truoc: ");
		camTruoc = sc.nextLine();
		System.out.println("Ho tro the nho: ");
		hoTroTheNho = sc.nextLine();
		System.out.println("Ho tro 2 sim: ");
		hoTro2sim = sc.nextLine();
		System.out.println("Dung luong pin: ");
		pin = sc.nextLine();
		System.out.println("Loai cam ung: ");
		loaiCamUng = sc.nextLine();
		System.out.println("Ho tro wifi: ");
		hoTroWifi = sc.nextLine();
		System.out.println("RAM: ");
		ram = sc.nextLine();
		System.out.println("Bo nho trong: ");
		rom = sc.nextLine();
	}
}

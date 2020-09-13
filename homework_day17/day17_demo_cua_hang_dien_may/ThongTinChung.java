package t3h.ljava2007a.day17_demo_cua_hang_dien_may;

import java.util.Scanner;

public class ThongTinChung {
	public String hangSX;
	public String tenSP;
	public int giaBan;
	
	public void Nhap() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Hang san xuat: ");
		hangSX = sc.nextLine();
		System.out.println("Ten san pham: ");
		tenSP = sc.nextLine();
		System.out.println("Gia ban: ");
		giaBan = sc.nextInt();
	}
}

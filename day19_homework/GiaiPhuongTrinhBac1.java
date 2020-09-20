package t3h.ljava2007a.day19_homework;

import java.util.Scanner;

public class GiaiPhuongTrinhBac1 {
	public static void ptbac1(float a, float b) {
		System.out.println("phuong trinh bac 1 ban vua nhap: " + a + "x + " +b+ " = 0" );
		if (a == 0 && b != 0 ) {
			System.out.println("phuong trinh vo nghiem.");
		}else if(a == 0 && b == 0) {
			System.out.println("phuong trinh vo so nghiem.");
		}else {
			System.out.println("phuong trinh co nghiem: x = " + (-b/a));
		}
	}
	
	public static void main(String[] args) {
		float a, b;
		Scanner sc = new Scanner(System.in);
		System.out.println("nhap a = ");
		a = sc.nextFloat();
		System.out.println("nhap b = ");
		b = sc.nextFloat();
		ptbac1(a,b);
	}
}

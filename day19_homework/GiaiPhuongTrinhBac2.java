package t3h.ljava2007a.day19_homework;

import java.util.Scanner;

public class GiaiPhuongTrinhBac2 {
	public static void ptbac2(float a, float b, float c) {
		float delta;
		System.out.println("giai phuong trinh bac 2 sau: " + a+ "x^2 + " +b+ "x + " +c+ " = 0");
		if (a == 0) {
			System.out.println("he so a phai khac 0.");
		} else {
			delta = b*b - 4*a*c;
			System.out.println("delta = " +delta);
			if (delta < 0) {
				System.out.println("phuong trinh vo nghiem.");
			} else if (delta == 0) {
				System.out.println("phuong trinh co 1 nghiem kep: " + (-b/(2*a)));
			} else {
				System.out.println("phuong trinh co 2 nghiem phan biet: ");
				System.out.println("x1 = " + ((-b - Math.sqrt(delta)) / (2*a)));
				System.out.println("x2 = " + ((-b + Math.sqrt(delta)) / (2*a)));
			}
		}
	}
	
	public static void main(String[] args) {
		float a, b, c;
		Scanner sc = new Scanner(System.in);
		System.out.println("nhap a = ");
		a = sc.nextFloat();
		System.out.println("nhap b = ");
		b = sc.nextFloat();
		System.out.println("nhap c = ");
		c = sc.nextFloat();
		ptbac2(a,b,c);
	}
}

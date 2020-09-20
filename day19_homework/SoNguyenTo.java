package t3h.ljava2007a.day19_homework;

import java.util.Scanner;

public class SoNguyenTo {
	public static boolean laSoNT(int n) {
		if (n < 2) {
			return false;
		} else {
			for (int i = 2; i <= Math.sqrt(n); i++) {
				if(n % i == 0) {
					return false;
				}
			}
		}
		return true;		
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n;
		System.out.println("nhap so n = ");
		n = sc.nextInt();
		System.out.println("cac so nguyen to trong khoang tu 0 -> " +n+ " la: ");
		for (int i = 0; i < n; i++) {
			if (laSoNT(i)) {
				System.out.println(i);
			}
		}
	}
}

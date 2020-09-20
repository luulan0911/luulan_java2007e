package t3h.ljava2007a.day19_homework;

import java.util.Scanner;

public class GiaiThua {
	public static void main(String[] args) {
		int n;
		Scanner sc = new Scanner(System.in);
		System.out.println("nhap n = ");
		n = sc.nextInt();
		int gt = 1;
		if (n == 0 || n == 1) {
			System.out.println(n + "! = 1");
		} else {
			for (int i = 1; i <= n; i++) {
				gt *= i;
			}
			System.out.println(n + "! = " + gt);
		}
	}
}

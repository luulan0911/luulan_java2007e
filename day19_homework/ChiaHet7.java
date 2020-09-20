package t3h.ljava2007a.day19_homework;

public class ChiaHet7 {
	public static void main(String[] args ) {
		int a = 200;
		System.out.println("cac so trong khoang 20-200 chia het cho 7 nhung khong chia het cho 5 la: ");
		for (int i = 20; i < 200; i++) {
			if(i % 7 == 0 && i % 5 != 0) {
				System.out.println(i);
			}
		}
	}
}

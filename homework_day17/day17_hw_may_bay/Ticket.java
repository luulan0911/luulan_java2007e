package t3h.ljava2007a.day17_hw_may_bay;

import java.util.Scanner;

public class Ticket extends Customer{
	public float caoCap = 10000;
	public float thuongGia = 5000;
	public float trungCap = 2000;
	
	public void Book() {
		Scanner sc = new Scanner(System.in);
		System.out.println("so ve cao cap: ");
		caoCap = sc.nextInt();
		System.out.println("so ve thuong gia: ");
		thuongGia = sc.nextInt();
		System.out.println("so ve trung cap: ");
		trungCap = sc.nextInt();
	}
	
	public void CalMoney() {
		if(age < 6) {
			trungCap *= 0.8;
		}
		if((20 <= flightTime && flightTime <= 24) || (0 <= flightTime && flightTime <= 4)) {
			caoCap *= 0.5;
			thuongGia *= 0.5;	
			trungCap *= 0.5;	
		}
		
		money = veCaoCap * caoCap + veThuongGia * thuongGia + veTrungCap * trungCap;
		System.out.println("tong so tien khach phai tra la: "+ money);
		
	}
}

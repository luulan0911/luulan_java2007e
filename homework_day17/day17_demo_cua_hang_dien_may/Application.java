package t3h.ljava2007a.day17_demo_cua_hang_dien_may;

public class Application {
	public static void main(String[] args) {
		ThongTinChung ttChung = new ThongTinChung();
		SmartPhone smartPhone = new SmartPhone();
		Laptop laptop = new Laptop();
		
		ttChung.Nhap();
		smartPhone.InSP();
		laptop.InLT();
	}
}

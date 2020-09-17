package t3h.ljava2007a.day17_hw_may_bay;

public class Application {
	public static void main(String[] args ) {
		Ticket ticket = new Ticket();

		Customer customer = new Customer();
		customer.setName("luu ngoc lan");
		customer.setGender("nu");
		customer.setAge(20);
		customer.setFlightName("cd12323");
		customer.setFlightTime(1);
		customer.setVeCaoCap(1);
		customer.setVeThuongGia(2);
		customer.setVeTrungCap(5);
		System.out.println(customer.toString());
	}
}

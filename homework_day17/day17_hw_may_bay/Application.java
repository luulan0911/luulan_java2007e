package t3h.ljava2007a.day17_hw_may_bay;

public class Application {
	public static void main(String[] args ) {
		Customer customer = new Customer();
		Ticket ticket = new Ticket();
		
		customer.InputData();
		ticket.Book();
		ticket.CalMoney();
	}
}

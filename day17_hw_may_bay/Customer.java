package t3h.ljava2007a.day17_hw_may_bay;

import java.util.Scanner;

public class Customer extends People{
	private String flightName;
	private int flightTime;
	private int veCaoCap;
	private int veThuongGia;
	private int veTrungCap;
	private double money;
	
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public int getFlightTime() {
		return flightTime;
	}
	public void setFlightTime(int flightTime) {
		this.flightTime = flightTime;
	}
	public int getVeCaoCap() {
		return veCaoCap;
	}
	public void setVeCaoCap(int veCaoCap) {
		this.veCaoCap = veCaoCap;
	}
	public int getVeThuongGia() {
		return veThuongGia;
	}
	public void setVeThuongGia(int veThuongGia) {
		this.veThuongGia = veThuongGia;
	}
	public int getVeTrungCap() {
		return veTrungCap;
	}
	public void setVeTrungCap(int veTrungCap) {
		this.veTrungCap = veTrungCap;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	
	
	
	@Override
	public String toString() {
		return "Customer: \n" +
		       "name = " + name + "\n" +
		       "gender = " + gender +  "\n" +
		       "age = " + age + "\n"+
		       "flightName = " + flightName + "\n" +
	           "flightTime = " + flightTime + "h" + "\n" +
	           "veCaoCap = " + veCaoCap + "\n" +
	           "veThuongGia = " + veThuongGia + "\n" +
	           "veTrungCap = " + veTrungCap + "\n" +
	           "money = " + money;
	}
	@Override
	public void CalMoney() {
		// TODO Auto-generated method stub
		
	}
}

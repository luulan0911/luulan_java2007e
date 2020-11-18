[33mcommit 1a9a7c3ced0b5d93f1dc22d363c7623bd2d8a6b5[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: lnlan <luulan0911@gmail.com>
Date:   Sun Sep 13 16:10:59 2020 +0700

    bai tap buoi 17

[1mdiff --git a/homework_day17/day17_demo_cua_hang_dien_may/Application.java b/homework_day17/day17_demo_cua_hang_dien_may/Application.java[m
[1mnew file mode 100644[m
[1mindex 0000000..181ee8f[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_demo_cua_hang_dien_may/Application.java[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_demo_cua_hang_dien_may;[m
[32m+[m
[32m+[m[32mpublic class Application {[m
[32m+[m	[32mpublic static void main(String[] args) {[m
[32m+[m		[32mThongTinChung ttChung = new ThongTinChung();[m
[32m+[m		[32mSmartPhone smartPhone = new SmartPhone();[m
[32m+[m		[32mLaptop laptop = new Laptop();[m
[32m+[m[41m		[m
[32m+[m		[32mttChung.Nhap();[m
[32m+[m		[32msmartPhone.InSP();[m
[32m+[m		[32mlaptop.InLT();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_demo_cua_hang_dien_may/Laptop.java b/homework_day17/day17_demo_cua_hang_dien_may/Laptop.java[m
[1mnew file mode 100644[m
[1mindex 0000000..5660849[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_demo_cua_hang_dien_may/Laptop.java[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_demo_cua_hang_dien_may;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Laptop extends ThongTinChung{[m
[32m+[m	[32mpublic String CPU;[m
[32m+[m	[32mpublic String chipDoHoa;[m
[32m+[m	[32mpublic String ram;[m
[32m+[m	[32mpublic String loaiOcung;[m
[32m+[m	[32mpublic String heDieuHanh;[m
[32m+[m	[32mpublic String manHinh;[m
[32m+[m	[32mpublic String loaiPin;[m
[32m+[m	[32mpublic String doDay;[m
[32m+[m	[32mpublic String canNang;[m
[32m+[m	[32mpublic String oDia;[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void InLT() {[m
[32m+[m		[32mScanner sc = new Scanner(System.in);[m
[32m+[m		[32mSystem.out.println("CPU: ");[m
[32m+[m		[32mCPU = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Chip do hoa: ");[m
[32m+[m		[32mchipDoHoa = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("RAM: ");[m
[32m+[m		[32mram = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Loai o cung: ");[m
[32m+[m		[32mloaiOcung = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("He dieu hanh: ");[m
[32m+[m		[32mheDieuHanh = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Man hinh: ");[m
[32m+[m		[32mmanHinh = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Dung luong pin: ");[m
[32m+[m		[32mloaiPin = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Do day: ");[m
[32m+[m		[32mdoDay = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Can nang: ");[m
[32m+[m		[32mcanNang = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("O dia: ");[m
[32m+[m		[32moDia = sc.nextLine();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_demo_cua_hang_dien_may/SmartPhone.java b/homework_day17/day17_demo_cua_hang_dien_may/SmartPhone.java[m
[1mnew file mode 100644[m
[1mindex 0000000..847aff7[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_demo_cua_hang_dien_may/SmartPhone.java[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_demo_cua_hang_dien_may;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class SmartPhone extends ThongTinChung{[m
[32m+[m	[32mpublic String manHinh;[m
[32m+[m	[32mpublic String heDieuHanh;[m
[32m+[m	[32mpublic String camSau;[m
[32m+[m	[32mpublic String camTruoc;[m
[32m+[m	[32mpublic String hoTroTheNho;[m
[32m+[m	[32mpublic String hoTro2sim;[m
[32m+[m	[32mpublic String pin;[m
[32m+[m	[32mpublic String loaiCamUng;[m
[32m+[m	[32mpublic String hoTroWifi;[m
[32m+[m	[32mpublic String ram;[m
[32m+[m	[32mpublic String rom;[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void InSP() {[m
[32m+[m		[32mScanner sc = new Scanner(System.in);[m
[32m+[m		[32mSystem.out.println("Man hinh: ");[m
[32m+[m		[32mmanHinh = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("He dieu hanh: ");[m
[32m+[m		[32mheDieuHanh = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Camera sau: ");[m
[32m+[m		[32mcamSau = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Camera truoc: ");[m
[32m+[m		[32mcamTruoc = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Ho tro the nho: ");[m
[32m+[m		[32mhoTroTheNho = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Ho tro 2 sim: ");[m
[32m+[m		[32mhoTro2sim = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Dung luong pin: ");[m
[32m+[m		[32mpin = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Loai cam ung: ");[m
[32m+[m		[32mloaiCamUng = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Ho tro wifi: ");[m
[32m+[m		[32mhoTroWifi = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("RAM: ");[m
[32m+[m		[32mram = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Bo nho trong: ");[m
[32m+[m		[32mrom = sc.nextLine();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_demo_cua_hang_dien_may/ThongTinChung.java b/homework_day17/day17_demo_cua_hang_dien_may/ThongTinChung.java[m
[1mnew file mode 100644[m
[1mindex 0000000..8489d93[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_demo_cua_hang_dien_may/ThongTinChung.java[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_demo_cua_hang_dien_may;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class ThongTinChung {[m
[32m+[m	[32mpublic String hangSX;[m
[32m+[m	[32mpublic String tenSP;[m
[32m+[m	[32mpublic int giaBan;[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void Nhap() {[m
[32m+[m		[32mScanner sc = new Scanner(System.in);[m
[32m+[m		[32mSystem.out.println("Hang san xuat: ");[m
[32m+[m		[32mhangSX = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Ten san pham: ");[m
[32m+[m		[32mtenSP = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Gia ban: ");[m
[32m+[m		[32mgiaBan = sc.nextInt();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_hw_may_bay/Application.java b/homework_day17/day17_hw_may_bay/Application.java[m
[1mnew file mode 100644[m
[1mindex 0000000..3b054a5[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_hw_may_bay/Application.java[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_hw_may_bay;[m
[32m+[m
[32m+[m[32mpublic class Application {[m
[32m+[m	[32mpublic static void main(String[] args ) {[m
[32m+[m		[32mCustomer customer = new Customer();[m
[32m+[m		[32mTicket ticket = new Ticket();[m
[32m+[m[41m		[m
[32m+[m		[32mcustomer.InputData();[m
[32m+[m		[32mticket.Book();[m
[32m+[m		[32mticket.CalMoney();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_hw_may_bay/Customer.java b/homework_day17/day17_hw_may_bay/Customer.java[m
[1mnew file mode 100644[m
[1mindex 0000000..5920072[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_hw_may_bay/Customer.java[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_hw_may_bay;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Customer {[m
[32m+[m	[32mpublic String name;[m
[32m+[m	[32mpublic String gender;[m
[32m+[m	[32mpublic int age;[m
[32m+[m	[32mpublic String flightName;[m
[32m+[m	[32mpublic int flightTime;[m
[32m+[m	[32mpublic int veCaoCap;[m
[32m+[m	[32mpublic int veThuongGia;[m
[32m+[m	[32mpublic int veTrungCap;[m
[32m+[m	[32mpublic float money;[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void InputData() {[m
[32m+[m		[32mScanner sc = new Scanner(System.in);[m
[32m+[m		[32mSystem.out.println("Ten khach hang: ");[m
[32m+[m		[32mname = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Gioi tinh: ");[m
[32m+[m		[32mgender = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Tuoi: ");[m
[32m+[m		[32mage = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("Ten chuyen bay: ");[m
[32m+[m		[32mflightName = sc.nextLine();[m
[32m+[m		[32mSystem.out.println("Thoi gian bay: ");[m
[32m+[m		[32mflightTime = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("So luong ve cao cap: ");[m
[32m+[m		[32mveCaoCap = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("So luong ve thuong gia: ");[m
[32m+[m		[32mveThuongGia = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("So luong ve trung cap: ");[m
[32m+[m		[32mveTrungCap = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("Tong tien: ");[m
[32m+[m		[32mmoney = sc.nextFloat();[m
[32m+[m	[32m}[m
[32m+[m[32m}[m
[1mdiff --git a/homework_day17/day17_hw_may_bay/Ticket.java b/homework_day17/day17_hw_may_bay/Ticket.java[m
[1mnew file mode 100644[m
[1mindex 0000000..73bca62[m
[1m--- /dev/null[m
[1m+++ b/homework_day17/day17_hw_may_bay/Ticket.java[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32mpackage t3h.ljava2007a.day17_hw_may_bay;[m
[32m+[m
[32m+[m[32mimport java.util.Scanner;[m
[32m+[m
[32m+[m[32mpublic class Ticket extends Customer{[m
[32m+[m	[32mpublic float caoCap = 10000;[m
[32m+[m	[32mpublic float thuongGia = 5000;[m
[32m+[m	[32mpublic float trungCap = 2000;[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void Book() {[m
[32m+[m		[32mScanner sc = new Scanner(System.in);[m
[32m+[m		[32mSystem.out.println("so ve cao cap: ");[m
[32m+[m		[32mcaoCap = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("so ve thuong gia: ");[m
[32m+[m		[32mthuongGia = sc.nextInt();[m
[32m+[m		[32mSystem.out.println("so ve trung cap: ");[m
[32m+[m		[32mtrungCap = sc.nextInt();[m
[32m+[m	[32m}[m
[32m+[m[41m	[m
[32m+[m	[32mpublic void CalMoney() {[m
[32m+[m		[32mif(age < 6) {[m
[32m+[m			[32mtrungCap *= 0.8;[m
[32m+[m		[32m}[m
[32m+[m		[32mif((20 <= flightTime && flightTime <= 24) || (0 <= flightTime && flightTime <= 4)) {[m
[32m+[m			[32mcaoCap *= 0.5;[m
[32m+[m			[32mthuongGia *= 0.5;[m[41m	[m
[32m+[m			[32mtrungCap *= 0.5;[m[41m	[m
[32m+[m		[32m}[m
[32m+[m[41m		[m
[32m+[m		[32mmoney = veCaoCap * caoCap + veThuongGia * thuongGia + veTrungCap * trungCap;[m
[32m+[m		[32mSystem.out.println("tong so tien khach phai tra la: "+ money);[m
[32m+[m[41m		[m
[32m+[m	[32m}[m
[32m+[m[32m}[m

CREATE DATABASE thuctap;

USE thuctap;

DROP database IF EXISTS thuctap;
DROP TABLE IF EXISTS Khoa;
DROP TABLE IF EXISTS GiangVien;
DROP TABLE IF EXISTS SinhVien;
DROP TABLE IF EXISTS DeTai;
DROP TABLE IF EXISTS HuongDan;

CREATE TABLE Khoa(
	makhoa CHAR(10) PRIMARY KEY,
    tenkhoa CHAR(30),
    dienthoai CHAR(10)
);

INSERT INTO Khoa
VALUES
('CNTT', 'cong nghe thong tin', '123456'),
('HKVT', 'hang khong vu tru', '012012'),
('KTDK', 'ky thuat dieu khien', '012012'),
('CK', 'co khi', '456789'),
('VTDT', 'vo tuyen dien tu', '789789');

SELECT * FROM Khoa;
DROP TABLE IF EXISTS Khoa;

CREATE TABLE GiangVien(
	magv INT PRIMARY KEY,
    hotengv CHAR(30),
    luong DECIMAL(5,2),
    makhoa CHAR(10),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

INSERT INTO GiangVien
VALUES
(1801, 'tran cong phan', 100.00, 'KTDK'),
(1802, 'tang van ha', 100.01, 'CNTT'),
(1803, 'khuat van thanh', 200.01, 'CNTT'),
(1804, 'nguyen khoa sang', 101.01, 'VTDT'),
(1805, 'hoai thu', 100.11, 'CK');

SELECT * FROM GiangVien;
DROP TABLE IF EXISTS GiangVien;

CREATE TABLE SinhVien(
	masv INT PRIMARY KEY,
    hotensv CHAR(30),
    makhoa CHAR(10),
    namsinh INT,
    quequan CHAR(30),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

INSERT INTO SinhVien
VALUES
(1, 'luu ngoc lan', 'CNTT', 2000, 'ha noi'),
(2, 'tran trung kien', 'HKVT', 2000, 'ha noi'),
(3, 'nguyen thi hien', 'VTDT', 2000, 'ha noi'),
(4, 'nguyen hong ha', 'KTDK', 2000, 'thai binh'),
(5, 'nguyen thi ngoc anh', 'CK', 2000, 'thanh hoa'),
(6, 'phan quang sang', 'CNTT', 2000, 'nam dinh'),
(7, 'vu hoang long', 'HKVT', 2000, 'hai duong'),
(8, 'nguyen duc duy', 'VTDT', 2000, 'hung yen');

SELECT * FROM SinhVien;
DROP TABLE IF EXISTS SinhVien;

CREATE TABLE DeTai(
	madt CHAR(10) PRIMARY KEY,
    tendt CHAR(30),
    kinhphi INT,
    noithuctap CHAR(30)
);

INSERT INTO DeTai
VALUES
('0088', 'quan ly sinh vien', 2000, 'dong anh'),
('0087', 'quan ly nha hang', 2020, 'dong anh'),
('0086', 'quan ly khu vui choi', 2100, 'thuong tin'),
('0085', 'quan ly du an xay dung', 3000, 'ha dong'),
('0084', 'quan ly khach san', 2120, 'my dinh');

SELECT * FROM DeTai;
DROP TABLE IF EXISTS DeTai;

CREATE TABLE HuongDan(
	masv INT,
    madt CHAR(10),
    magv INT,
    ketqua DECIMAL(5,2),
    FOREIGN KEY (madt) REFERENCES DeTai(madt)
);

INSERT INTO HuongDan
VALUES
(1, '0088', 1801, 8.00),
(2, '0087', 1802, 10.00),
(3, '0086', 1803, 7.05),
(4, '0085', 1804, 8.80),
(5, '0084', 1805, 9.00);

SELECT * FROM HuongDan;
DROP TABLE IF EXISTS HuongDan;



-- 1.1: ĐƯA RA THÔNG TIN GỒM MÃ GV, HỌ TÊN VÀ TÊN KHOA CỦA CÁC GIẢNG VIÊN
SELECT gv.magv, gv.hotengv, k.tenkhoa
FROM GiangVien gv JOIN Khoa k ON gv.makhoa=k.makhoa

-- 1.2: Đưa ra thông tin gồm mã số, họ tênvà tên khoa của các giảng viên của khoa cong nghe thong tin
SELECT gv.magv, gv.hotengv, k.tenkhoa
FROM GiangVien gv JOIN Khoa k ON gv.makhoa=k.makhoa
WHERE k.tenkhoa='cong nghe thong tin'

-- 1.3: Cho biết số sinh viên của khoa ‘CONG NGHE THONG TIN’
SELECT COUNT(sv.masv) AS SỐ_SV_CNTT
FROM SinhVien sv JOIN Khoa k ON sv.makhoa=k.makhoa
WHERE k.tenkhoa='cong nghe thong tin'

-- 1.4: Đưa ra danh sách gồm mã số, họ tênvà tuổi của các sinh viên khoa HANG KHONG VU TRU
SELECT sv.masv, sv.hotensv, sv.namsinh 
FROM SinhVien sv JOIN Khoa k ON sv.makhoa=k.makhoa
WHERE k.tenkhoa='hang khong vu tru'

-- 1.5: Cho biết số giảng viên của khoa ‘CONG NGHE THONG TIN’
SELECT COUNT(gv.magv) AS SỐ_GV_CNTT
FROM GiangVien gv JOIN Khoa k ON gv.makhoa=k.makhoa
WHERE k.tenkhoa = 'cong nghe thong tin'

-- 1.6: Cho biết thông tin về sinh viên không tham gia thực tập
SELECT sv.masv, sv.hotensv
FROM SinhVien sv 
WHERE NOT EXISTS(
	SELECT hd.masv
	FROM HuongDan hd 
	WHERE sv.masv = hd.masv);

-- 1.7: Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
SELECT k.makhoa, k.tenkhoa, COUNT(gv.magv) AS SỐ_GV
FROM GiangVien gv JOIN Khoa k ON gv.makhoa=k.makhoa
GROUP BY k.makhoa, k.tenkhoa

-- 1.8: Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo
SELECT k.tenkhoa, k.dienthoai
FROM SinhVien sv JOIN Khoa k ON sv.makhoa = k.makhoa
WHERE sv.hotensv = 'luu ngoc lan'

-- 1.9: Cho biết mã số và tên của các đề tài do giảng viên ‘TANG VAN HA’ hướng dẫn
SELECT gv.hotengv, dt.madt, dt.tendt
FROM GiangVien gv JOIN HuongDan hd ON gv.magv = hd.magv
				  JOIN DeTai dt ON dt.madt = hd.madt 
WHERE gv.hotengv = 'tang van ha'

-- 1.10: Cho biết tên đề tài không có sinh viên nào thực tập
SELECT dt.madt, dt.tendt
FROM DeTai dt 
WHERE NOT EXISTS(
	SELECT hd.madt
	FROM HuongDan hd 
	WHERE hd.madt=dt.madt);

-- 1.11: Cho biết mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
SELECT gv.magv, gv.hotengv, k.tenkhoa
FROM GiangVien gv JOIN Khoa k ON k.makhoa=gv.makhoa
WHERE gv.magv IN (
				  SELECT hd.magv
				  FROM HuongDan hd
                  GROUP BY hd.magv
                  HAVING COUNT (hd.masv)>3)

-- 1.12: Cho biết mã số, tên đề tài của đề tài có kinh phí cao nhất
SELECT dt.madt, dt.tendt, dt.kinhphi
FROM DeTai dt
WHERE dt.kinhphi=( SELECT MAX(kinhphi)
				   FROM DeTai dt)

-- 1.13: Cho biết mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập
SELECT dt.madt, dt.tendt
FROM DeTai dt 
WHERE dt.madt IN (
                  SELECT hd.madt
				  FROM HuongDan hd
				  GROUP BY hd.madt
				  HAVING COUNT(hd.madt) > 2)

-- 1.14: Đưa ra mã số, họ tên và điểm của các sinh viên khoa ‘KY THUAT DIEU KHIEN’
SELECT sv.masv, sv.hotensv, hd.ketqua
FROM SinhVien sv JOIN HuongDan hd ON sv.masv= hd.masv 

-- 1.15: Đưa ra tên khoa, số lượng sinh viên của mỗi khoa
SELECT k.tenkhoa, COUNT(sv.masv) AS SỐ_SV
FROM SinhVien sv JOIN Khoa k ON sv.makhoa = k.makhoa
GROUP BY k.tenkhoa

-- 1.16: Cho biết thông tin về các sinh viên thực tập tại quê nhà
SELECT sv.masv, sv.hotensv, sv.namsinh, sv.quequan
FROM SinhVien sv JOIN HuongDan hd ON sv.masv = hd.masv 
                 JOIN DeTai dt ON dt.madt = hd.madt
WHERE sv.quequan = dt.noithuctap

-- 1.17: Hãy cho biết thông tin về những sinh viên chưa có điểm thực tập
SELECT sv.masv, sv.hotensv, sv.namsinh, sv.quequan
FROM SinhVien sv JOIN HuongDan hd ON sv.masv = hd.masv 
WHERE hd.ketqua IS NULL

-- 1.18: Đưa ra danh sách gồm mã số, họ tên các sinh viên có điểm thực tập bằng 0
SELECT sv.masv, sv.hotensv, sv.namsinh, sv.quequan
FROM SinhVien sv JOIN HuongDan hd ON sv.masv = hd.masv 
WHERE hd.ketqua = 10.00

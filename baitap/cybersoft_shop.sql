CREATE DATABASE cybersoft_shop;

USE cybersoft_shop;

CREATE TABLE sanpham(
	masp int,
	tensp varchar(255),
	gia double,
	mota varchar(255),
	id_loaisanpham int,
	PRIMARY KEY(masp)
);

CREATE TABLE loaisanpham(
	maloaisp int,
	tenloaisp varchar(255),
	PRIMARY KEY(maloaisp)
);

CREATE TABLE hoadon(
	mahoadon int,
	ngaymua date,
	id_khachhang int,
	PRIMARY KEY(mahoadon)
);

CREATE TABLE khachhang(
	makhachhang int,
	ho varchar(255),
	ten varchar(255),
	sodienthoai varchar(10),
	email varchar(255),
	diachi varchar(255),
	PRIMARY KEY(makhachhang)
);

CREATE TABLE chua(
	soluong int,
	gia double,
	id_masp int,
	id_mahoadon int,
	PRIMARY KEY(id_masp, id_mahoadon)
);

ALTER TABLE sanpham ADD CONSTRAINT FK_id_loaisanpham_sanpham
FOREIGN KEY(id_loaisanpham) REFERENCES loaisanpham(maloaisp);

ALTER TABLE hoadon ADD CONSTRAINT FK_id_khachhang_hoadon
FOREIGN KEY(id_khachhang) REFERENCES khachhang(makhachhang);

ALTER TABLE chua ADD CONSTRAINT FK_id_masp_chua
FOREIGN KEY(id_masp) REFERENCES sanpham(masp);

ALTER TABLE chua ADD CONSTRAINT FK_id_mahoadon_chua
FOREIGN KEY(id_mahoadon) REFERENCES hoadon(mahoadon);

INSERT INTO loaisanpham(maloaisp,tenloaisp)
VALUE ('101', 'áo');
INSERT INTO loaisanpham(maloaisp,tenloaisp)
VALUE ('102', 'quần');

INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('1', 'áo thun', '100', 'thun lạnh', '101');
INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('2', 'quần kaki', '200', 'vải kaki', '102');
INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('3', 'áo thun sơ mi', '230', 'cotton', '101');
INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('4', 'quần âu', '460', 'vải kate', '102');
INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('5', 'áo khoát', '350', 'vải nỉ', '101');
INSERT INTO sanpham(masp, tensp, gia, mota, id_loaisanpham)
VALUE ('6', 'quần jean', '380', 'vải mềm', '102');

INSERT INTO khachhang(makhachhang, ho, ten, sodienthoai, email, diachi)
VALUE ('1', 'Phan', 'Phong Phú', '0989704504', 'phu123@gmail.com', '728 Đường Võ Văn Kiệt, Phường 1, Quận 5, TP. HCM');
INSERT INTO khachhang(makhachhang, ho, ten, sodienthoai, email, diachi)
VALUE ('2', 'Phương', 'Ngọc Vân', '0986435353', 'phuongngocvan@gmail.com', '749 Đường Tạ Quang Bửu, Phường 4, Quận 8, TP. HCM');

INSERT INTO hoadon(mahoadon, ngaymua, id_khachhang) VALUE ('2110324', '2024-03-11', '2');
INSERT INTO hoadon(mahoadon, ngaymua, id_khachhang) VALUE ('1150824', '2024-08-15', '1');
INSERT INTO hoadon(mahoadon, ngaymua, id_khachhang) VALUE ('2170824', '2024-08-17', '2');
INSERT INTO hoadon(mahoadon, ngaymua, id_khachhang) VALUE ('2200824', '2024-08-20', '2');
INSERT INTO hoadon(mahoadon, ngaymua, id_khachhang) VALUE ('1230824', '2024-08-23', '1');

INSERT INTO chua(soluong, gia, id_masp, id_mahoadon) VALUE ('2', '700', '5', '2110324');
INSERT INTO chua(soluong, gia, id_masp, id_mahoadon) VALUE ('1', '380', '6', '1150824');
INSERT INTO chua(soluong, gia, id_masp, id_mahoadon) VALUE ('2', '920', '4', '2170824');
INSERT INTO chua(soluong, gia, id_masp, id_mahoadon) VALUE ('5', '500', '1', '2200824');
INSERT INTO chua(soluong, gia, id_masp, id_mahoadon) VALUE ('1', '230', '3', '1230824');
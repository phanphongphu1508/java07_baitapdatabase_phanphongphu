CREATE DATABASE quanlybansach;

USE quanlybansach;

CREATE TABLE khachhang(
	makhachhang int PRIMARY KEY,
	hoten varchar(255),
	ngaysinh date,
	gioitinh varchar(4),
	sodienthoai varchar(10),
	taikhoan varchar(255),
	matkhau varchar(255),
	email varchar(255),
	diachi varchar(255)
);

CREATE TABLE donhang(
	madonhang int PRIMARY KEY,
	ngaydat timestamp,
	ngaygiao timestamp,
	tinhtranggiaohang varchar(50),
	dathanhtoan double,
	id_khachhang int
);

CREATE TABLE sach(
	masach int PRIMARY KEY,
	tensach varchar(255),
	giaban double,
	anhbia varchar(255),
	soluongton int,
	ngaycapnhat timestamp,
	mota text,
	id_chude int,
	id_nhaxuatban int
);

CREATE TABLE chude(
	machude int PRIMARY KEY,
	tenchude text
);

CREATE TABLE tacgia(
	matacgia int PRIMARY KEY,
	tentacgia varchar(255),
	sodienthoai varchar(255),
	tieusu text,
	diachi varchar(255)
);

CREATE TABLE nhaxuatban(
	manhaxuatban int PRIMARY KEY,
	tennhaxuatban varchar(255),
	sodienthoai varchar(255),
	diachi varchar(255)
);

CREATE TABLE donhang_sach(
	soluong int,
	dongia double,
	id_donhang int,
	id_sach int,
	PRIMARY KEY(id_donhang, id_sach)
);

CREATE TABLE tacgia_sach(
	vaitro varchar(255),
	vitri varchar(255),
	id_tacgia int,
	id_sach int,
	PRIMARY KEY(id_tacgia, id_sach)
);

ALTER TABLE donhang ADD CONSTRAINT FK_id_khachhang_donhang
FOREIGN KEY(id_khachhang) REFERENCES khachhang(makhachhang);

ALTER TABLE sach ADD CONSTRAINT FK_id_chude_sach
FOREIGN KEY(id_chude) REFERENCES chude(machude);

ALTER TABLE sach ADD CONSTRAINT FK_id_nhaxuatban_sach
FOREIGN KEY(id_nhaxuatban) REFERENCES nhaxuatban(manhaxuatban);

ALTER TABLE donhang_sach ADD CONSTRAINT FK_id_donhang_donhang_sach
FOREIGN KEY(id_donhang) REFERENCES donhang(madonhang);

ALTER TABLE donhang_sach ADD CONSTRAINT FK_id_sach_donhang_sach
FOREIGN KEY(id_sach) REFERENCES sach(masach);

ALTER TABLE tacgia_sach ADD CONSTRAINT FK_id_tacgia_tacgia_sach
FOREIGN KEY(id_tacgia) REFERENCES tacgia(matacgia);

ALTER TABLE tacgia_sach ADD CONSTRAINT FK_id_sach_tacgia_sach
FOREIGN KEY(id_sach) REFERENCES sach(masach);

INSERT INTO khachhang(makhachhang, hoten, ngaysinh, gioitinh, sodienthoai, taikhoan, matkhau, email, diachi)
VALUE ('1', 'Phan Phong Phú', '1999-08-15', 'nam', '0989704504', 'phanphongphu', 'phu123', 'phu123@gmail.com', '728 Đường Võ Văn Kiệt, Phường 1, Quận 5, TP. HCM');

INSERT INTO khachhang(makhachhang, hoten, ngaysinh, gioitinh, sodienthoai, taikhoan, matkhau, email, diachi)
VALUE ('2', 'Phương Ngọc Vân', '1999-01-14', 'nữ', '0982685860', 'phuongngocvan', 'phuongngocvan@', 'phuongngocvan@gmail.com', '465 Tạ Quang Bửu, Phường 5, Quận 8, TP. HCM');

INSERT INTO khachhang(makhachhang, hoten, ngaysinh, gioitinh, sodienthoai, taikhoan, matkhau, email, diachi)
VALUE ('3', 'Phan Phú Quý', '1999-07-06', 'nam', '0974306593', 'phanphuquy', 'phuquy123@', 'phanphuquy@gmail.com', '45 Đường 77, Phường Tân Quy, Quận 7, TP. HCM');

INSERT INTO chude(machude, tenchude) VALUE ('1', 'Kỹ năng sống');
INSERT INTO chude(machude, tenchude) VALUE ('2', 'Tiểu thuyết');

INSERT INTO nhaxuatban(manhaxuatban, tennhaxuatban, sodienthoai, diachi)
VALUE ('1', 'Dân Trí', '0899944999', 'P. 3, Q. Bình Thạnh, TP. Hồ Chí Minh');
INSERT INTO nhaxuatban(manhaxuatban, tennhaxuatban, sodienthoai, diachi)
VALUE ('2', 'Dân Trí', '0984874260', 'P. Tân Chánh Hiệp, Q. 12, TP. Hồ Chí Minh');
INSERT INTO nhaxuatban(manhaxuatban, tennhaxuatban, sodienthoai, diachi)
VALUE ('3', 'Văn học', '0978307480', 'P. Bình Trị Đông A, Q. Bình Tân, TP. Hồ Chí Minh');
INSERT INTO nhaxuatban(manhaxuatban, tennhaxuatban, sodienthoai, diachi)
VALUE ('4', 'Văn học', '0985303720', '338 Tô Ký, P. Tân Chánh Hiệp, Q. 12, TP. Hồ Chí Minh');

INSERT INTO sach(masach, tensach, giaban, anhbia, soluongton, ngaycapnhat, mota, id_chude, id_nhaxuatban)
VALUE ('1', 'Tư duy ngược', '68000', 'hinh1.jpg', '15', '2024-02-01 03:14:07', 'Chúng ta thực sự có hạnh phúc không? Chúng ta có đang sống cuộc đời mình không?', '1', '1');

INSERT INTO sach(masach, tensach, giaban, anhbia, soluongton, ngaycapnhat, mota, id_chude, id_nhaxuatban)
VALUE ('2', 'Tư duy mở', '65000', 'hinh2.jpg', '55', '2024-02-03 19:14:07', 'Con người đang sống trong thời đại công nghệ?', '1', '2');

INSERT INTO sach(masach, tensach, giaban, anhbia, soluongton, ngaycapnhat, mota, id_chude, id_nhaxuatban)
VALUE ('3', 'Mặt Trăng Và Đồng Sáu Xu', '134000', 'hinh3.jpg', '34', '2024-02-03 14:13:09', 'William Somerset Maugham(1874-1965) là một tiểu thuyết gia', '2', '3');

INSERT INTO sach(masach, tensach, giaban, anhbia, soluongton, ngaycapnhat, mota, id_chude, id_nhaxuatban)
VALUE ('4', 'Hành Lang Hai Lớp', '188100', 'hinh4.jpg', '166', '2024-02-03 14:15:02', 'Đám trẻ nhận ra những năm tháng tưởng chừng chẳng có gánh nặng nào trên đôi vai nhưng có đến hàng ngàn lời khó nói được cất giấu sau những trò đùa và tiếng cười giòn tan kia', '2', '4');
	
INSERT INTO donhang(madonhang, ngaydat, ngaygiao, tinhtranggiaohang, dathanhtoan, id_khachhang)
VALUE ('1', '2024-02-01 03:14:07', '2024-02-02 08:05:03', 'đã giao hàng', '1138500', '3');
INSERT INTO donhang(madonhang, ngaydat, ngaygiao, tinhtranggiaohang, dathanhtoan, id_khachhang)
VALUE ('2', '2024-02-02 09:05:44', '2024-02-02 13:54:00', 'đã giao hàng', '322100', '1');
INSERT INTO donhang(madonhang, ngaydat, ngaygiao, tinhtranggiaohang, dathanhtoan, id_khachhang)
VALUE ('3', '2024-02-15 07:23:11', '2024-02-19 08:05:03', 'đã giao hàng', '455100', '2');
INSERT INTO donhang(madonhang, ngaydat, ngaygiao, tinhtranggiaohang, dathanhtoan, id_khachhang)
VALUE ('4', '2024-02-15 10:43:00', '2024-02-15 17:59:08', 'đã giao hàng', '940500', '3');
INSERT INTO donhang(madonhang, ngaydat, ngaygiao, tinhtranggiaohang, dathanhtoan, id_khachhang)
VALUE ('5', '2024-02-15 12:00:17', '2024-02-16 13:55:03', 'đã giao hàng', '778100', '2');

INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '68000', '1', '1');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('2', '65000', '1', '2');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('5', '188100', '1', '4');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '134000', '2', '3');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '188100', '2', '4');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '68000', '3', '1');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '65000', '3', '2');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '134000', '3', '3');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('1', '188100', '3', '4');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('5', '188100', '4', '4');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('3', '134000', '5', '3');
INSERT INTO donhang_sach(soluong, dongia, id_donhang, id_sach) VALUE ('2', '188100', '5', '4');

INSERT INTO tacgia(matacgia, tentacgia, sodienthoai, tieusu, diachi)
VALUE ('1', 'Nguyễn Anh Dũng', '0974646469', 'Nguyễn Anh Dũng', '41/3 Trần Văn Mười, X. Xuân Thới Đông, H. Hóc Môn, TP. Hồ Chí Minh');
INSERT INTO tacgia(matacgia, tentacgia, sodienthoai, tieusu, diachi)
VALUE ('2', 'Nguyễn Vi Thiên Ái', '0976493063', 'Nguyễn Vi Thiên Ái', '914 Kha Vạn Cân, P. Trường Thọ, TP. Thủ Đức, TP. Hồ Chí Minh');
INSERT INTO tacgia(matacgia, tentacgia, sodienthoai, tieusu, diachi)
VALUE ('3', 'Hoa Cỏ', '0975267950', 'Hoa Cỏ là bạn trẻ thích mèo, thích ngắm mây trời, 
ao ước cuộc sống bình yên được trồng hoa, nằm dài trên cỏ, và thích làm nhiều điều để 
cuộc sống này đáng yêu hơn', '124/1H -124/1S Nguyễn Ảnh Thủ, X. Trung Chánh, H. Hóc Môn, TP. Hồ Chí Minh');

INSERT INTO tacgia_sach(vaitro, vitri, id_tacgia, id_sach) VALUE ('Tác giả', 'Vị trí 1 ', '1', '1');
INSERT INTO tacgia_sach(vaitro, vitri, id_tacgia, id_sach) VALUE ('Tác giả', 'Vị trí 2', '1', '2');
INSERT INTO tacgia_sach(vaitro, vitri, id_tacgia, id_sach) VALUE ('Tác giả', 'Vị trí 3', '2', '3');
INSERT INTO tacgia_sach(vaitro, vitri, id_tacgia, id_sach) VALUE ('Tác giả', 'Vị trí 4', '3', '4');
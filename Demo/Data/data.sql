create database QLSV
go
use QLSV
go
create table Khoa
(
	MaKhoa nvarchar(5) primary key,
	TenKhoa nvarchar(50),
	DiaDiem nvarchar(20),
	DienThoai varchar(15),
	Email varchar(50),
	TruongKhoa nvarchar(50)
)
go
create table SinhVien
(
	MaSV varchar(9) primary key,
	Ho nvarchar(50),
	Ten nvarchar(50),
	NgaySinh datetime,
	GioiTinh nvarchar(5),
	NoiSinh nvarchar(100),
	KhoaHoc varchar(5),
	MaKhoa nvarchar(5),
	foreign key (MaKhoa) references dbo.Khoa (MaKhoa)
)
go

insert dbo.Khoa values('CNTT', N'Công nghệ thông tin', N'390 Hoàng Văn Thụ', '5612303', 'contact@cntt.edu', N'Trương Đình Tuấn')
select * from dbo.Khoa

insert dbo.SinhVien values('15007989', N'Trình', N'Thanh Toàn', '1997/03/4', N'Nam', N'Hóc Môn', '2015', 'CNTT')
select * from dbo.SinhVien
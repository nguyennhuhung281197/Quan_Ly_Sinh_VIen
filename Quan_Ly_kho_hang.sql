create database QuanLyKhoHang ;
use QuanLyKhoHang ;

create table PhieuXuat(
SoPhieuXuat  int not null auto_increment primary key ,
NgayXuat datetime 
);

create table VatTu (
MaVatTu int not null auto_increment primary key , 
TenVatTu varchar (50)
);

create table Xuat (
SoLuongXuat int  ,
Dongia  float ,
SoPhieuXuat  int,
MaVatTu  int ,
unique (SoPhieuXuat , MaVatTu),
foreign key (SoPhieuXuat) references PhieuXuat (SoPhieuXuat),
foreign key (MaVatTu) references VatTu (MaVatTu)
);

create table PhieuNhap (
SoPhieuNhap int not null primary key ,
NgayNhap datetime 
) ;

create table Nhap (
SoLuongNhap  int ,
DongiaNhap float ,
SoPhieuNhap int ,
MaVatTu int ,
unique (SoPhieuNhap , MaVatTu ) ,
foreign key (SoPhieuNhap) references PhieuNhap (SoPhieuNhap) ,
foreign key (MaVatTu) references VatTu  (MaVatTu )    
) ;

create table NhaCungCap (
MaNhaCungCap  int not null primary key ,
TenNhaCungCap  varchar (20) ,
DiaChi varchar (50),
SDT  varchar (20) 
) ;

create table DonDatHang (
SoDatHang int not null primary key ,
NgayDatHang datetime ,
MaNhaCungCap int , 
unique (MaNhaCungCap) ,
foreign key (MaNhaCungCap ) references NhaCungCap (MaNhaCungCap) 
) ;


-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-07-25 15:34:26.829

-- tables
-- Table: Khach_hang
CREATE TABLE Khach_hang (
    id_khachhang int  NOT NULL,
    full_name nvarchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    CONSTRAINT Khach_hang_pk PRIMARY KEY  (id_khachhang)
);

-- Table: San_pham
CREATE TABLE San_pham (
    id_sanpham int  NOT NULL,
    id_loaisanpham int  NOT NULL,
    ten_sanmpham varchar(255)  NOT NULL,
    so_luong decimal(12,2)  NOT NULL,
    mota_sanpham varchar(1000)  NOT NULL,
    anh_sanpham nvarchar(255) NOT NULL,
    gia_sanpham int  NOT NULL,
    CONSTRAINT San_pham_pk PRIMARY KEY  (id_sanpham)
);

-- Table: chitiet_hoadon
CREATE TABLE chitiet_hoadon (
    id_chitiethoadon int  NOT NULL,
    id_sanpham int  NOT NULL,
    id_loaisanpham int  NOT NULL,
    id_khachhang int  NOT NULL,
    so_luong int  NOT NULL,
    donvi nvarchar  NOT NULL,
    CONSTRAINT chitiet_hoadon_pk PRIMARY KEY  (id_chitiethoadon)
);

-- Table: hoa_don
CREATE TABLE hoa_don (
    id_hoadon int  NOT NULL,
    ngaylap_hoadong char(12)  NOT NULL,
    id_khachhang int  NOT NULL,
    CONSTRAINT hoa_don_pk PRIMARY KEY  (id_hoadon)
);

-- Table: loai_sanpham
CREATE TABLE loai_sanpham (
    id_loaisanpham int  NOT NULL,
    ten_loaisanpham nvarchar(255)  NOT NULL,
    donvi int  NULL,
    CONSTRAINT loai_sanpham_pk PRIMARY KEY  (id_loaisanpham)
);

-- foreign keys
-- Reference: client_purchase (table: hoa_don)
ALTER TABLE hoa_don ADD CONSTRAINT client_purchase
    FOREIGN KEY (id_khachhang)
    REFERENCES Khach_hang (id_khachhang);

-- Reference: product_category_product (table: San_pham)
ALTER TABLE San_pham ADD CONSTRAINT product_category_product
    FOREIGN KEY (id_loaisanpham)
    REFERENCES loai_sanpham (id_loaisanpham);

-- Reference: product_category_product_category (table: loai_sanpham)
ALTER TABLE loai_sanpham ADD CONSTRAINT product_category_product_category
    FOREIGN KEY (donvi)
    REFERENCES loai_sanpham (id_loaisanpham);

-- Reference: product_purchase_item (table: chitiet_hoadon)
ALTER TABLE chitiet_hoadon ADD CONSTRAINT product_purchase_item
    FOREIGN KEY (id_loaisanpham)
    REFERENCES San_pham (id_sanpham);

-- Reference: purchase_purchase_item (table: chitiet_hoadon)
ALTER TABLE chitiet_hoadon ADD CONSTRAINT purchase_purchase_item
    FOREIGN KEY (id_sanpham)
    REFERENCES hoa_don (id_hoadon);

-- End of file.

	INSERT INTO dbo.Khach_hang (id_khachhang,full_name,email)
	VALUES (N'1', N'lương Tuấn Hưng', N'hungltph03955@fpt.edu.vn');
	INSERT INTO dbo.Khach_hang (id_khachhang,full_name,email)
	VALUES (N'2', N'nguyễn trường tiên', N'tiennt03955@fpt.edu.vn');
	INSERT INTO dbo.Khach_hang (id_khachhang,full_name,email)
	VALUES (N'3', N'bui thanh hùng', N'hungutph03955@fpt.edu.vn');
	INSERT INTO dbo.Khach_hang (id_khachhang,full_name,email)
	VALUES (N'4', N'nguyễn Tuấn Mạnh', N'manhdv03955@fpt.edu.vn');
	INSERT INTO dbo.Khach_hang (id_khachhang,full_name,email)
	VALUES (N'5', N'phạm hữa huân', N'huanpt03955@fpt.edu.vn');
	
	
	
	INSERT INTO dbo.hoa_don (id_hoadon,ngaylap_hoadong,id_khachhang)
	VALUES (N'1', N'26/7/2016', N'1');
	INSERT INTO dbo.hoa_don (id_hoadon,ngaylap_hoadong,id_khachhang)
	VALUES (N'2', N'27/7/2016', N'2');
	INSERT INTO dbo.hoa_don (id_hoadon,ngaylap_hoadong,id_khachhang)
	VALUES (N'3', N'28/7/2016', N'3');
	INSERT INTO dbo.hoa_don (id_hoadon,ngaylap_hoadong,id_khachhang)
	VALUES (N'4', N'29/7/2016', N'4');
	INSERT INTO dbo.hoa_don (id_hoadon,ngaylap_hoadong,id_khachhang)
	VALUES (N'5', N'30/7/2016', N'5');


	
	






	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'1', N'dientu', N'01');
	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'2', N'thucpham', N'02');
	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'3', N'dadung', N'03');
	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'4', N'mipham', N'04');
	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'5', N'thoitrang', N'05');
	INSERT INTO dbo.loai_sanpham (id_loaisanpham,ten_loaisanpham,donvi)
	VALUES (N'6', N'nhadat', N'06');
	

	INSERT INTO dbo.San_pham (id_sanpham,id_loaisanpham,ten_sanmpham,so_luong,mota_sanpham,anh_sanpham,gia_sanpham)
	VALUES (N'1', N'1', N'laptop',N'10', N'hangnhapkhau' , N'nul', N'1230506' );
	INSERT INTO dbo.San_pham (id_sanpham,id_loaisanpham,ten_sanmpham,so_luong,mota_sanpham,anh_sanpham,gia_sanpham)
	VALUES (N'2', N'2', N'thucphamchucnang',N'23', N'hangVN xuatkhau' , N'nul', N'123647856' );
	INSERT INTO dbo.San_pham (id_sanpham,id_loaisanpham,ten_sanmpham,so_luong,mota_sanpham,anh_sanpham,gia_sanpham)
	VALUES (N'3', N'3', N'bepga',N'13', N'hangnhapkhau' , N'nul', N'86589' );
	INSERT INTO dbo.San_pham (id_sanpham,id_loaisanpham,ten_sanmpham,so_luong,mota_sanpham,anh_sanpham,gia_sanpham)
	VALUES (N'4', N'4', N'sonUSA',N'100', N'hangnhapkhau' , N'nul', N'485684' );
	INSERT INTO dbo.San_pham (id_sanpham,id_loaisanpham,ten_sanmpham,so_luong,mota_sanpham,anh_sanpham,gia_sanpham)
	VALUES (N'5', N'5', N'aoadidas',N'800', N'hangnhapkhau' , N'nul', N'145236' );



	INSERT INTO dbo.chitiet_hoadon (id_chitiethoadon,id_sanpham,id_loaisanpham,id_khachhang,so_luong,donvi)
	VALUES (N'1', N'1', N'1',N'1', N'2' , N'1');
	INSERT INTO dbo.chitiet_hoadon (id_chitiethoadon,id_sanpham,id_loaisanpham,id_khachhang,so_luong,donvi)
	VALUES (N'2', N'2', N'2',N'2', N'10', N'2');
	INSERT INTO dbo.chitiet_hoadon (id_chitiethoadon,id_sanpham,id_loaisanpham,id_khachhang,so_luong,donvi)
	VALUES (N'3', N'3', N'3',N'3', N'20' ,N'5');
	INSERT INTO dbo.chitiet_hoadon (id_chitiethoadon,id_sanpham,id_loaisanpham,id_khachhang,so_luong,donvi)
	VALUES (N'4', N'4', N'4',N'4', N'23' , N'3');
	INSERT INTO dbo.chitiet_hoadon (id_chitiethoadon,id_sanpham,id_loaisanpham,id_khachhang,so_luong,donvi)
	VALUES (N'5', N'5', N'5',N'5', N'28' , N'7');








SELECT * FROM Khach_hang
SELECT * FROM dbo.hoa_don
SELECT * FROM dbo.loai_sanpham
SELECT * FROM dbo.San_pham
SELECT * FROM dbo.chitiet_hoadon

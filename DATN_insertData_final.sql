



USE DuAnTN_final
GO



-- insert value table KichThuoc
 Insert into KichThuoc (Ma, MoTa, NgaySua, NgayTao, NguoiSua, NguoiTao, Ten,TrangThai)
values
('KT001',N'Size giày nam','1/23/2024','1/23/2024',1,1,'40',1),
('KT002',N'Size giày nam','1/23/2024','1/23/2024',1,1,'41',1),
('KT003',N'Size giày nam','1/23/2024','1/23/2024',1,1,'42',1),
('KT004',N'Size giày nam','1/23/2024','1/23/2024',1,1,'43',1),
('KT005',N'Size giày nữ','1/23/2024','1/23/2024',1,1,'35',1),
('KT007',N'Size giày nữ','1/23/2024','1/23/2024',1,1,'36',1),
('KT008',N'Size giày nữ','1/23/2024','1/23/2024',1,1,'37',1),
('KT009',N'Size giày nữ','1/23/2024','1/23/2024',1,1,'38',1),
('KT010',N'Size giày nữ','1/23/2024','1/23/2024',1,1,'39',1)



-- insert value table SanPham

Insert into SanPham(Ma,Ten, MoTa, NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai)
values
('SP001',N'Nike Jordan',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP002',N'Nike Zoom',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP003',N'Nike Phantom GT',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP004',N'Nike Waffle Racer',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP005',N'Nike Tiempo',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP006',N'Nike City Rep',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('SP007',N'Nike Crater Remixa',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1)




-- insert value table MuiGiay

Insert into MuiGiay(Ma, Ten, MoTa, NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai)
values
('MG001',N'Mũi giày đầu tròn',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('MG003',N'Mũi giày vuông ',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1),
('MG005',N'Mũi giày phân tầng ',N'Mô tả tên giày','1/23/2024','1/23/2024',1,1,1)




-- insert value table ChucVu

Insert into ChucVu(Ma, Ten, NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai)
values
('CV001',N'Nhân viên','1/23/2024','1/23/2024',1,1,1),
('CV002',N'Quản lý','1/23/2024','1/23/2024',1,1,1)




-- insert value table Voucher
-- insert value table KhuyenMai 

--select * from PhieuGiamGia
-- PhieuGiamGia : la voucher 
-- Sắm tết thả ga, 10, %, max, 100k,  
delete from PhieuGiamGia
Insert into PhieuGiamGia(Ma,soLuong,TenPhieu, GiaTriGiam, HinhThucGiam, GiaTienXetDieuKien , NgayBatDau, NgayKetThuc , NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai)
values
('PG0001',10,N'Giảm 10k cho đơn từ 200k',10,'%',200000,'5/23/2024','5/29/2024','1/23/2024','1/23/2024',1,1,1),
('PG0002',20,N'Giảm 100k cho đơn từ 2 triệu',12,'%',2000000,'5/29/2024','5/5/2024','1/23/2024','1/23/2024',1,1,1),
('PG0003',30,N'Giảm 25k đơn từ 50k',25000,N'tiền mặt',50000,'4/10/2024','5/20/2024','1/23/2024','1/23/2024',1,1,1),
('PG0004',40,N'Giảm 20k đơn từ 500k',20000,N'tiền mặt',500000,'5/10/2024','5/20/2024','1/23/2024','1/23/2024',1,1,1)


-- DotKhuyenMai : giam gia truc tiep tren san pham
--select * from DotKhuyenMai
Insert into DotKhuyenMai(ma, tenDotKhuyenMai, GiaTriGiam , NgayBatDau, NgayKetThuc , NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai)
values 
('KM0001',N'Đợt 1 tháng 1 Tết 2024',30000,'1/23/2024','1/31/2024','1/23/2024','1/23/2024',1,1,1),
('KM0002',N'Đợt 2 tháng 2 Tết 2024',30000,'2/1/2024','2/15/2024','1/23/2024','1/23/2024',1,1,1),
('KM0003',N'Đợt 3 tháng 2 Tết 2024',30000,'2/16/2024','2/29/2024','1/23/2024','1/23/2024',1,1,1),
('KM0004',N'Đợt 4 tháng 3 Khai Xuân 2024',30000,'3/1/2024','3/10/2024','1/23/2024','1/23/2024',1,1,1)
 
INSERT INTO KhachHang (Ma, HoTen, TaiKhoan, MatKhau, Gioitinh, SoDT, Email, NgayTao, NgaySua,  NguoiTao,NguoiSua, TrangThai)
VALUES ( 'KH001', 'TuanAnh', 'kh01', '1234', 0, '123456789', 'tuananh@gmail.com', '2024-01-25', '2024-01-25', 1,1, 1),
( 'KH002', 'DangHoan', 'kh02', '1234', 1, '123456789', 'danghoan@gmail.com', '2024-01-25', '2024-01-25', 1,1, 1),
(  'KH003', 'PhamQuan', 'kh03', '1234',0, '123456789', 'phamquan@gmail.com', '2024-01-25', '2024-01-25', 1,1, 1),
 ( 'KH004', 'DucAnh', 'kh04', '1234', 0, '123456789', 'ducanh@gmail.com', '2024-01-25', '2024-01-25', 1,1, 1),
 ( 'KH005', 'TuanAnhDo', 'kh05', '1234',1, '123456789', 'tuananhdo@gmail.com', '2024-01-25', '2024-01-25', 1,1, 1)


 INSERT INTO ThuongHieu (Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('Giay123', 'Nike', 'Description', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('Giay456', 'Adidas', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay567', 'Balenciaga', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay678', 'LV', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay789', 'Jordan LoW', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay899', 'AF1', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay999', 'Jordan High', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1),
  ('Giay752', 'Conver', 'Another Description', '2024-01-29', '2024-01-29', 1, 1, 1)


   INSERT INTO DanhMuc(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('DAM0001', N'Nam', N'Các loại giày dành cho nam ', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('DAM0002', N'Nữ', N'Các loại giày dành cho nữ', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DAM0003', N'Unisex', N'Các loại giày dành cho cả nam, cả nữ ', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('DAM0004', N'Đôi', N'Các loại giày dành cho các cặp đôi', '2024-01-28', '2024-01-28', 1, 1, 1)


  -- table mauSac
     INSERT INTO MauSac(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('DAM0001', N'Đen', N'Đen', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('DAM0002', N'Trắng', N'Trắng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DAM0003', N'Trắng line đen', N'Hồng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DAM0004', N'Trắng line xanh', N'Xanh', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DAM0004', N'Hồng San Hô', N'Hồng', '2024-01-28', '2024-01-28',2, 1, 1)

  --select * from LoaiSanPham

     INSERT INTO LoaiSanPham(Ma, Ten, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('LSP0001', N'Sneaker', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('LSP0002', N'Chạy bộ', '2024-01-28', '2024-01-28',2, 1, 1),
  ('LSP0003', N'Thể thao', '2024-01-28', '2024-01-28',2, 1, 1),
  ('LSP0004', N'Đá bóng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('LSP0005', N'Đi chơi', '2024-01-28', '2024-01-28',2, 1, 1)

  --select * from DeGiay

INSERT INTO DeGiay(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('DG0001', N'Đế đen', N'Đen', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('DG0002', N'Đế trắng', N'Trắng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DG0003', N'Đế xám đỏ', N'Hồng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DG0004', N'Đế trắng xanh', N'Xanh', '2024-01-28', '2024-01-28',2, 1, 1),
  ('DG0005', N'Đế nâu', N'Nâu', '2024-01-28', '2024-01-28', 1, 1, 1)

  --select * from ChucVu
  --select * from NhanVien


  -- nhan vien 
  Insert into NhanVien(Ma, IdChucVu, HoTen, TaiKhoan, MatKhau, NgaySinh, GioiTinh, Sdt, Email, NgaySua, NgayTao, NguoiSua, NguoiTao,TrangThai,diaChi)
values
('NV001','DCEEB571-1855-4FE2-B7EF-29D62094A433',N'Nguyễn Văn Tiến','NV01@','1234','2/19/1998',0,'085977658','tienVan@gmail.com','1/23/2024','1/23/2024',1,1,1,N'123 Xuân Phương, Hà Nội'),
('NV002','093EE38E-D3F4-4722-ABED-42E7AC8331CE',N'Nguyễn Văn Tiến Linh','NV02@','1234','2/19/1998',0,'085977622','tienLinh@gmail.com','1/23/2024','1/23/2024',1,1,1,N'14 Hồ Tùng mậu, Hà Nội'),
('NV003','DCEEB571-1855-4FE2-B7EF-29D62094A433',N'Trần Thị Hoàng','NV03@','1234','2/19/1999',1,'085977646','hoangTran@gmail.com','1/23/2024','1/23/2024',1,1,1,N'5 Hồ Tùng mậu, Hà Nội'),
('NV004','093EE38E-D3F4-4722-ABED-42E7AC8331CE',N'Phan Thị Minh','ADMIN01@','1234','2/19/1989',1,'085977679','minhPhan@gmail.com','1/23/2024','1/23/2024',1,1,1,N'9 Hồ Tùng mậu, Hà Nội'),
('NV005','DCEEB571-1855-4FE2-B7EF-29D62094A433',N'Đào Văn Hùng','ADMIN02@','1234','2/19/1987',0,'085977685','hungDao@gmail.com','1/23/2024','1/23/2024',1,1,1,N'16 Mai Dịch, Hà Nội'),
('NV006','093EE38E-D3F4-4722-ABED-42E7AC8331CE',N'Hoàng Kim Luyến','NV06@','1234','8/2/1990',1,'085977665','luyenHoang13@gmail.com','2/12/2024','2/12/2024',1,1,1,N'12 Cầu Giấy, Hà Nội'),
('NV007','093EE38E-D3F4-4722-ABED-42E7AC8331CE',N'Nguyễn Mai Chung','ADMIN07@','1234','1/1/1999',0,'085977634','chung67@gmail.com','2/12/2024','2/12/2024',1,1,1,N'55 Mỹ Đình, Hà Nội')


-- trạng thái sản phẩm chi tiết có gì ?

-- giày nam: max = 255g - 285g
-- giày nữ: max = 214g - 255g
 
--select Ma, GiaTriSanPham, GiaTriGiam, KhoiLuong, MoTa, SoLuong, HinhAnh, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai from SanPhamCT
 Insert into SanPhamCT(Ma, GiaTriSanPham, GiaTriGiam, KhoiLuong, MoTa, SoLuong, HinhAnh, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
values 
('SPCT0001',320000,300000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0002',450000,400000,255,N'',15,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0003',750000,550000,255,N'',20,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0004',650000,500000,255,N'',30,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0005',320000,300000,255,N'',50,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0006',450000,400000,255,N'',1,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0007',750000,550000,255,N'',2,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0008',320000,300000,255,N'',2,'','2/12/2024','2/12/2024',1,1,1),
('SPCT0009',750000,550000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00010',650000,500000,255,N'',6,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00011',750000,550000,255,N'',8,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00012',320000,300000,255,N'',30,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00013',320000,300000,255,N'',2,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00014',750000,550000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00015',650000,500000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00016',750000,550000,255,N'',30,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00017',320000,300000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00018',750000,550000,255,N'',2,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00019',320000,300000,255,N'',2,'','2/12/2024','2/12/2024',1,1,1),
('SPCT00020',650000,500000,255,N'',10,'','2/12/2024','2/12/2024',1,1,1)



--select * from SanPham
--select * from DanhMuc
--select * from MuiGiay
--select * from DeGiay
--select * from MauSac

     INSERT INTO MauSac(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('MS0001', N'Đen', N'Đen', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('MS0002', N'Trắng', N'Trắng', '2024-01-28', '2024-01-28',2, 1, 1),
  ('MS0003', N'Trắng line đen', N'Trắng line đen', '2024-01-28', '2024-01-28',2, 1, 1),
  ('MS0004', N'Trắng line xanh', N'Trắng line xanh', '2024-01-28', '2024-01-28',2, 1, 1),
  ('MS0005', N'Nâu', N'Nâu', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('MS0007', N'Đen line xanh', N'Đen line xanh', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('MS0008', N'Xanh line trắng', N'Xanh line trắng', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('MS0009', N'Trắng line vàng', N'Trắng line vàng', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('MS0010', N'Trắng line xám đỏ', N'Trắng line xám đỏ', '2024-01-28', '2024-01-28', 1, 1, 1)


--  SELECT * from NhaSanXuat
     INSERT INTO NhaSanXuat(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('NSX0001', N'Nhà sản xuất 01', N'', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('NSX0002', N'Nhà sản xuất 02', N'', '2024-01-28', '2024-01-28',2, 1, 1)

--  select * from KieuDang
       INSERT INTO KieuDang(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('KD0001', N'Dáng đứng form', N'', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('KD0002', N'Dáng 2', N'', '2024-01-28', '2024-01-28',2, 1, 1)

         INSERT INTO ChatLieu(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('CL0001', N'Chất liệu 2', N'', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('CL0002', N'Chất liệu 1', N'', '2024-01-28', '2024-01-28',2, 1, 1)

           INSERT INTO DayGiay(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('DG0001', N'Dây giày 01', N'', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('DG0002', N'Dây giày 02', N'', '2024-01-28', '2024-01-28',2, 1, 1)

             INSERT INTO LotGiay(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
VALUES
  ('LG0001', N'Lót giày 01', N'', '2024-01-28', '2024-01-28', 1, 1, 1),
  ('LG0002', N'Lót giày 02', N'', '2024-01-28', '2024-01-28',2, 1, 1)





  -- url đường dẫn lưu ảnh sản phẩm 
--/user/assets/imagesgiay/giay11.jpg
--/user/assets/imagesgiay/giay12.jpg
--/user/assets/imagesgiay/giay13.jpg
--/user/assets/imagesgiay/giay15.jpg
--/user/assets/imagesgiay/giay10.jpg
--/user/assets/imagesgiay/giay17.jpg
--/user/assets/imagesgiay/giay18.jpg
--/user/assets/imagesgiay/giay19.jpg


--select * from DeGiay
--select * from LoaiSanPham


---- trang chu : cu hien thi cac anh của san pham chi tiet ( hoac la lay san pham van dung hon, con anh san pham van co cach lay ma ) 
---- có thể là trang chủ cần chỉnh sửa lại 


---- lay cac san pham chi tiet cua san pham voi ma = 1 
--select * from SanPham
--select * from SanPhamCT
--where IdSanPham = 'A8DF96D9-19C8-4D8C-82EC-54801E336E2B'


---- tinh tổng số lượng với sản phẩm mã = 1  => đúng 
--select sum(soLuong) as tongSL_sp from SanPhamCT where IdSanPham = 'A8DF96D9-19C8-4D8C-82EC-54801E336E2B'


-- vậy thì sẽ liên quan tới lúc thêm sản phẩm và sản phẩm chi tiết vào database 



-- them moi 1 san pham 
-- them moi 3 san pham chi tiet 
-- them moi cac anh cho san pham chi tiet

--select * from SanPham
--select * from KichThuoc


--select SanPhamCT.Id, DanhMuc.ten, MuiGiay.Ten, DeGiay.Ten, KichThuoc.Ten, MauSac.Ten, GiaTriSanPham, GiaTriGiam, HinhAnh from SanPhamCT 
--join DanhMuc on DanhMuc.Id = SanPhamCT.IdDanhMuc
--join MuiGiay on MuiGiay.Id = SanPhamCT.IdMuiGiay
--join DeGiay on DeGiay.Id = SanPhamCT.IdDeGiay
--join KichThuoc on KichThuoc.Id = SanPhamCT.IdKichThuoc
--join MauSac on MauSac.Id = SanPhamCT.IdMauSac
--where IdSanPham = '019ED57B-5A8D-4424-9E36-0EB677CC9F94'

--select * from MauSac

--select * from HinhAnhGiays



-- mỗi chi tiết sản phẩm đều được thêm vào các hình ảnh sản phẩm chi tiết 

--// làm sao để lấy được các mã màu sắc mà không bị trùng lặp - lấy mã màu sắc của các sản phẩm có idSanPham = ?


--select *  from SanPham where Id = '019ED57B-5A8D-4424-9E36-0EB677CC9F94'

--// lấy idsanPham từ cái bên trên tìm kiếm các sanPhamCT có idSanPham => lấy ra các mã màu sắc distinct => ko lấy giá trị trùng lặp
--select Distinct MauSac.Ten from SanPhamCT 
--join MauSac on MauSac.Id = SanPhamCT.IdMauSac
--where IdSanPham = '019ED57B-5A8D-4424-9E36-0EB677CC9F94'

----// lấy danh sách sản phẩm chi tiết theo idSanPham = ? 
--select SanPhamCT.Id, DanhMuc.ten, MuiGiay.Ten, DeGiay.Ten, KichThuoc.Ten, MauSac.Ten, GiaTriSanPham, GiaTriGiam, HinhAnh,SoLuong from SanPhamCT 
--join DanhMuc on DanhMuc.Id = SanPhamCT.IdDanhMuc
--join MuiGiay on MuiGiay.Id = SanPhamCT.IdMuiGiay
--join DeGiay on DeGiay.Id = SanPhamCT.IdDeGiay
--join KichThuoc on KichThuoc.Id = SanPhamCT.IdKichThuoc
--join MauSac on MauSac.Id = SanPhamCT.IdMauSac
--where SanPhamCT.id= 'ED239554-BFF9-461A-93DE-39AAA817FA63'



----// làm sao để lấy ra ảnh ko trùng , lấy được màu sắc = lệnh này giải quyết 2 vấn đề trên luôn 
--select distinct count (IdMauSac) from SanPhamCT 
--where IdSanPham = '019ED57B-5A8D-4424-9E36-0EB677CC9F94'

-- chỉ cần lấy 1 ảnh tương ứng với IdMauSac => có thể xử lý bên server, đâu nhất thiết bên jsp 
-- thêm idMAUsAC , HINH anh vao 1 list mới => duyệt ra đơn giản 

	
-- voi 2 dữ liệu trên => có thể lấy được hình ảnh ko ?
-- nếu lồng for => vẫn hiển thị được hình ảnh , nhưng kết quả trả về có vẻ ko khả thi 

-- sản phẩm trên là có chung idSanPham, khác hình ảnh, khác màu sắc 
-- lưu cái kết quả trên vào List => list ra hình ảnh và màu sắc 



--select * from SanPhamCT 
--where IdSanPham = '019ED57B-5A8D-4424-9E36-0EB677CC9F94' 
--and IdMauSac = '94B11A44-E066-4EF2-B16B-4A000CF2455F'
--select * from SanPhamCT

---- lấy ra 1 idSanPhamCT => lấy ra các hình ảnh => đưa chúng vào 1 list
--select * from HinhAnhGiays 
--where IdSanPhamCT = '9970DE8E-8EEC-4F5C-8F0E-F0BC859A7C8E'

--select * from LoaiSanPham

--update SanPhamCT 
--set ID_loaiSP = '9CD133FD-1CA1-49AD-94A7-811F1EDE3E5D'
--where IdSanPham= '019ED57B-5A8D-4424-9E36-0EB677CC9F94'
        

--update SanPhamCT 
--set SoLuong=2
--where id= 'ED239554-BFF9-461A-93DE-39AAA817FA63'
   
--select * from SanPhamCT 
--where id= 'ED239554-BFF9-461A-93DE-39AAA817FA63'


--select * from SanPham

--select distinct IdSanPham from SanPhamCT

--4104556a-084a-4aba-b01e-f8ba1bddc1b9
--select * from DanhMuc
--select * from MuiGiay
--select * from DeGiay
--select * from KichThuoc
--select * from MauSac
--select * from LoaiSanPham

--     INSERT INTO MauSac(Ma, Ten, MoTa, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
--VALUES
--('MS0001', N'Trắng line xanh lá', N'Trắng line xanh lá', '2024-01-28', '2024-01-28', 1, 1, 1),

--  ('MS0002', N'Đen line trắng', N'Đen line trắng', '2024-01-28', '2024-01-28', 1, 1, 1)

--      INSERT INTO HinhAnhGiays(IdSanPhamCT, duongDanAnh, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
--VALUES
--('046d3833-154f-46be-93fb-15316d524569', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_0_lineDen.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('046d3833-154f-46be-93fb-15316d524569', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_1_lineDen.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('046d3833-154f-46be-93fb-15316d524569', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_2_lineDen.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('046d3833-154f-46be-93fb-15316d524569', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_3_lineDen.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('046d3833-154f-46be-93fb-15316d524569', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_4_lineDen.jpg', '2024-01-28', '2024-01-28', 1, 1, 1)
    
--      INSERT INTO HinhAnhGiays(IdSanPhamCT, duongDanAnh, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
--VALUES
--('a3b1c30d-03e4-4cb5-9cf1-dba70150f663', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_0_lineTrang.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('a3b1c30d-03e4-4cb5-9cf1-dba70150f663', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_1_lineTrang.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('a3b1c30d-03e4-4cb5-9cf1-dba70150f663', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_2_lineTrang.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('a3b1c30d-03e4-4cb5-9cf1-dba70150f663', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_3_lineTrang.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('a3b1c30d-03e4-4cb5-9cf1-dba70150f663', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_4_lineTrang.jpg', '2024-01-28', '2024-01-28', 1, 1, 1)

--      INSERT INTO HinhAnhGiays(IdSanPhamCT, duongDanAnh, NgayTao, NgaySua, NguoiTao, NguoiSua, TrangThai)
--VALUES
--('281a1ed4-62a3-4c8b-b16b-e19c18512a40', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_0_lineXanhLa.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('281a1ed4-62a3-4c8b-b16b-e19c18512a40', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_1_lineXanhLa.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('281a1ed4-62a3-4c8b-b16b-e19c18512a40', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_2_lineXanhLa.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('281a1ed4-62a3-4c8b-b16b-e19c18512a40', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_3_lineXanhLa.jpg', '2024-01-28', '2024-01-28', 1, 1, 1),
--('281a1ed4-62a3-4c8b-b16b-e19c18512a40', '/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_4_lineXanhLa.jpg', '2024-01-28', '2024-01-28', 1, 1, 1)








--select * from PhieuGiamGia

--update PhieuGiamGia
--set soLuong = 50


---- dot giam
---- voucher 

--select * from SanPhamCT

---- sanPham 
---- giaGiam cua sanPhamCT 


--select * from HoaDonCT
--where IdHoaDon='b08b4dde-8ddb-4e9f-9a2f-6145235af968'

--select * from SanPhamCT

--select * from HoaDon
--where TrangThai=0

--select * from PhieuGiamGia
--where Id='93f6ca12-0232-4ee2-87e1-6e2b89677471'


--select * from PhieuGiamGia where soLuong > 0 and NgayKetThuc >= GETDATE()

--Update HoaDon
--set IdPhieuGiamGia ='93F6CA12-0232-4EE2-87E1-6E2B89677471'
--where Id='B08B4DDE-8DDB-4E9F-9A2F-6145235AF968'


--select TongTienGiamGia, TongTienThanhToan from HoaDon

---- ngày kết thúc >= ngày hiện tại 
---- ngày bắt đầu <= ngày hiện tại 
---- giá tiền so sánh >= giá trị điều kiện 

--select * from PhieuGiamGia
--where NgayBatDau <= GETDATE() and NgayKetThuc >=GETDATE() and soLuong>0 and GiaTienXetDieuKien <= 3620000

--select soLuong from PhieuGiamGia

--select * from HoaDon
--where TrangThai=0

--select TongTienDuocGiamGia, TongTienThanhToan from HoaDon
--where TrangThai=0


--select * from PhieuGiamGia 
--order by GiaTriGiam desc


--SELECT *
--FROM PhieuGiamGia
--where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE() 
--ORDER BY 
--    CASE 
--        WHEN HinhThucGiam = N'tiền mặt' THEN GiaTriGiam
--        WHEN HinhThucGiam = '%' THEN  ( 2410000 * (GiaTriGiam  / 100))
--		else 0
--    END desc;

--select * from PhieuGiamGia

--select ( GiaTienXetDieuKien * (GiaTriGiam  / 100)) , GiaTriGiam, GiaTienXetDieuKien
--FROM PhieuGiamGia
--where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE() and HinhThucGiam ='%'



--select * from HoaDon where TrangThai=0
--select * from HoaDonCT where TrangThai=1
--select * from PhieuGiamGia

--delete from HoaDonCT
--delete from HoaDon

--select * from HoaDon where TrangThai=1
--select * from HoaDonCT where TrangThai=1

--select * from SanPhamCT where Id='48375f42-a3d5-4786-9fb5-8721930db11b'

--select * from SanPhamCT

--select * from SanPham
--where ten like N'%Jordan Stadium 90%'

--select * from DanhMuc
--select * from MuiGiay

--select iDMuiGiay from SanPhamCT

--update SanPhamCT
--set IdMuiGiay='D13C18B1-9CBD-4B25-93CD-272BF76D79EC'

--select * from DeGiay
--select * from MauSac

--/user/assets/imagesgiay/killshot-2-leather-shoes-DqWZ4j_0_lineDen.jpg

--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_0
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_2
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_3
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_4

--select * from LoaiSanPham
--select * from HinhAnhGiays


--update HinhAnhGiays
--set NguoiTao=1, NguoiSua=1

--update HinhAnhGiays
--set duongDanAnh=duongDanAnh+'.jpg'
--where IdSanPhamCT='6C4AA306-E844-4759-91EF-E2EE6E159C23'


--select * from SanPhamCT
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_0.jpg
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_1.jpg
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_2.jpg
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_3.jpg
--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_4.jpg

--update SanPhamCT
--set HinhAnh=HinhAnh+'.jpg'
--where HinhAnh like '%/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_0%'

--select SanPhamCT.Id from SanPhamCT 
--left join HinhAnhGiays on HinhAnhGiays.IdSanPhamCT= SanPhamCT.Id
--where SanPhamCT.Id is null


--select SanPhamCT.Id, HinhAnhGiays.IdSanPhamCT from  SanPhamCT
--left join  HinhAnhGiays on SanPhamCT.Id =  HinhAnhGiays.IdSanPhamCT
--where HinhAnhGiays.IdSanPhamCT is null

--select * from HinhAnhGiays

--update HinhAnhGiays 
--SET NguoiTao=1
--where NguoiTao is null

--update HinhAnhGiays 
--SET TrangThai=1
--where TrangThai is null


--jordan-stadium-90-shoes-0cSSz3_1_0
--select * from KichThuoc

--update SanPhamCT
--SET IdKichThuoc='E9F92602-BAA7-4B58-8B1E-37BD1D8EEC6B'
--where Id='446576df-fe0f-40d2-a608-21dfb39f738b'

--select * from SanPhamCT
--where Id='6c4aa306-e844-4759-91ef-e2ee6e159c23'

--/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_0.jpg

--update SanPhamCT
--set HinhAnh='/user/assets/imagesgiay/jordan-stadium-90-shoes-0cSSz3_1_0.jpg'
--where IdMauSac='4DC5F712-D2D2-4AE3-99C0-38A76E903595'

--select * from SanPhamCT
--where IdSanPham='FCF43093-2B2A-4FB8-A5B0-8E0662EB85AE' 
--and IdMauSac='4DC5F712-D2D2-4AE3-99C0-38A76E903595'

--select * from SanPhamCT

--select ma from HoaDon

--select SanPham.Ten, MauSac.Ten from SanPhamCT
--join SanPham on SanPhamCT.IdSanPham = SanPham.Id
--join MauSac on SanPhamCT.IdMauSac = MauSac.Id
--where SanPham.Ten like N'%%'


---- tim kiem san pham 
--select SanPham.Ten, MauSac.Ten, KichThuoc.Ten,LoaiSanPham.Ten from SanPhamCT
--join SanPham on SanPhamCT.IdSanPham = SanPham.Id
--join MauSac on SanPhamCT.IdMauSac = MauSac.Id
--join KichThuoc on SanPhamCT.IdKichThuoc = KichThuoc.Id
--join LoaiSanPham on SanPhamCT.ID_loaiSP = LoaiSanPham.Id
--where SanPham.Ten like N'%nike%' 
--and MauSac.Ten like N'%đen%'
--and KichThuoc.Ten like N'%39%'
--and LoaiSanPham.Ten like N'%Chạy bộ%'

--select * from SanPhamCT
--join SanPham on SanPhamCT.IdSanPham = SanPham.Id
--join MauSac on SanPhamCT.IdMauSac = MauSac.Id
--join KichThuoc on SanPhamCT.IdKichThuoc = KichThuoc.Id
--join LoaiSanPham on SanPhamCT.ID_loaiSP = LoaiSanPham.Id
--where SanPham.Ten like N'%nike%' 
--and MauSac.Ten like N'%đen%'
--and KichThuoc.Ten like N'%39%'
--and LoaiSanPham.Ten like N'%Chạy bộ%'










--select * from HoaDon 
--where ngayMua = '2024-4-6'

--select * from HoaDon
--where trangThai=0

--delete from HoaDon 
--where TrangThai = 0

--select SanPhamCT.id, SoLuong from SanPhamCT 
--join SanPham on SanPhamCT.IdSanPham = SanPham.Id
--join KichThuoc on KichThuoc.Id = SanPhamCT.IdKichThuoc
--join MauSac on MauSac.Id = SanPhamCT.IdMauSac
--where SanPham.Ten like N'%Nike Killshot 2 Leather%'
--and KichThuoc.Ten = '39'
--and MauSac.Ten like N'%Trắng line đen%'

--select * from HoaDon
---- kiểm tra idSanPham có trong hóa đơn chi tiết hay không , với idHoaDon tương ứng 
--select * from HoaDonCT
--select sum(soLuong) from HoaDonCT where IdHoaDon = '8DFD73C5-4DE5-4963-85AE-B36E7C9B548E' and IdSanPhamCT = '9970DE8E-8EEC-4F5C-8F0E-F0BC859A7C8E'


--update SanPhamCT 
--set SoLuong=10
--where Id = '046D3833-154F-46BE-93FB-15316D524569'


--select SoLuong from SanPhamCT
--where Id = '046D3833-154F-46BE-93FB-15316D524569'
--select * from HoaDon
---- hoa don : can them tong so luong san pham trong hoa don 
--select * from HoaDonCT

---- thêm 1 sản phẩm chi tiết vào hóa đơn chi tiết 


--select * from KhachHang

--select * from DotKhuyenMai
--select * from PhieuGiamGia

---- cap nhat soLuongMua trong hoaDonChiTiet 
--update HoaDonCT
--set SoLuong = SoLuong + 2
--where IdHoaDon = 'C78B3005-0C9B-4ED5-ADE3-47771C32A68B'
--	and IdSanPhamCT = '9970DE8E-8EEC-4F5C-8F0E-F0BC859A7C8E'

--	select * from HoaDonCT 
--	where IdHoaDon = 'ed984f63-04a1-4dc5-b4d6-ff6502a8dcb0'

--	delete from HoaDon
--	where Id = '92E71702-E043-4E56-9396-0C5C3A666156'

--	select * from HoaDon where trangThai=0

--	select * from KhachHang 
--	where SoDT = '08589776584'

--	select HoTen from KhachHang



---- them moi san pham , so luong vao hoa don chi tiet 
---- da co ham ho tro roi, mk chi viec thêm vào hóa đơn thôi 


--select * from SanPham
--select * from SanPhamCT where idSanPham = '4104556A-084A-4ABA-B01E-F8BA1BDDC1B9'

--select * from HoaDon
--select * from HoaDonCT where IdHoaDon='39D8E39C-6FAF-4123-BFE0-6391E9E39C9A'

--select TrangThai from HoaDon 

---- 0: chờ xác nhận
---- 1: hoàn thành 
---- 2: ??
---- 3: ??

---- hóa đơn thiếu trường : loại hóa đơn 
---- trạng thái hóa đơn thì có rồi 
---- phần xóa hóa đơn 



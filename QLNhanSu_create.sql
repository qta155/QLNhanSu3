-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:21:57.071




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV tinyint  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong tinyint  NULL,
    TPhongBan_MaPhong tinyint  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong tinyint  NOT NULL,
    TenPhong nvarchar(30)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanVien_TPhongBan (table: TNhanVien)

ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongBan 
    FOREIGN KEY (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong)
;





-- End of file.


create database thuchanh1;
use thuchanh1;
-- Tạo bảng ĐƠN VỊ ĐH
CREATE TABLE DON_VI_DH (
    Ma_DV INT PRIMARY KEY,
    Ten_DV VARCHAR(255),
    Dia_Chi VARCHAR(255),
    Dien_Thoai VARCHAR(15)
);

-- Tạo bảng ĐƠN VỊ KH
CREATE TABLE DON_VI_KH (
    Ma_DV INT PRIMARY KEY,
    Ten_DV VARCHAR(255),
    Dia_Chi VARCHAR(255)
);

-- Tạo bảng HÀNG
CREATE TABLE HANG (
    Ma_Hang INT PRIMARY KEY,
    Ten_Hang VARCHAR(255),
    Don_Vi_Tinh VARCHAR(50),
    Mo_Ta_Hang TEXT
);

-- Tạo bảng NGƯỜI ĐẶT
CREATE TABLE NGUOI_DAT (
    Ma_So_ND INT PRIMARY KEY,
    Ho_Ten_ND VARCHAR(255)
);

-- Tạo bảng NƠI GIAO
CREATE TABLE NOI_GIAO (
    Ma_So_DDG INT PRIMARY KEY,
    Ten_Noi_Giao VARCHAR(255)
);

-- Tạo bảng NGƯỜI NHẬN
CREATE TABLE NGUOI_NHAN (
    Ma_So_NN INT PRIMARY KEY,
    Ho_Ten_NN VARCHAR(255)
);

-- Tạo bảng NGƯỜI GIAO
CREATE TABLE NGUOI_GIAO (
    Ma_So_NG INT PRIMARY KEY,
    Ho_Ten_NG VARCHAR(255)
);

-- Tạo bảng ĐƠN ĐẶT HÀNG
CREATE TABLE DON_DAT_HANG (
    So_Don_Hang INT PRIMARY KEY,
    Ma_DV_DH INT,
    Ma_So_ND INT,
    Ngay_Dat DATE,
    Ma_Hang INT,
    Don_Gia DECIMAL(10,2),
    So_Luong INT,
    FOREIGN KEY (Ma_DV_DH) REFERENCES DON_VI_DH(Ma_DV),
    FOREIGN KEY (Ma_So_ND) REFERENCES NGUOI_DAT(Ma_So_ND),
    FOREIGN KEY (Ma_Hang) REFERENCES HANG(Ma_Hang)
);

-- Tạo bảng PHIẾU GIAO HÀNG
CREATE TABLE PHIEU_GIAO_HANG (
    So_PGH INT PRIMARY KEY,
    Ma_DV_DH INT,
    Ma_So_NN INT,
    Ma_So_NG INT,
    Ngay_Giao DATE,
    Ma_Hang INT,
    Don_Gia DECIMAL(10,2),
    So_Luong INT,
    Thanh_Tien DECIMAL(10,2),
    FOREIGN KEY (Ma_DV_DH) REFERENCES DON_VI_DH(Ma_DV),
    FOREIGN KEY (Ma_So_NN) REFERENCES NGUOI_NHAN(Ma_So_NN),
    FOREIGN KEY (Ma_So_NG) REFERENCES NGUOI_GIAO(Ma_So_NG),
    FOREIGN KEY (Ma_Hang) REFERENCES HANG(Ma_Hang)
);
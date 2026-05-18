-- VTYS-1 Dönem Projesi
-- Çevrimiçi Yemek Sipariş Platformu Veritabanı Tasarımı

-- Müşteriler Tablosu
CREATE TABLE Musteriler
(
MusteriId INT PRIMARY KEY IDENTITY(1,1),
Ad NVARCHAR(50) NOT NULL,
Soyad NVARCHAR(50) NOT NULL,
Telefon NVARCHAR(20) NOT NULL UNIQUE,
Email NVARCHAR(100) NOT NULL UNIQUE,
Adres NVARCHAR(200) NOT NULL,
IhtiyacSahibiMi BIT NOT NULL DEFAULT 0,
IhtiyacSahibiOnayliMi BIT NOT NULL DEFAULT 0,
IsActive BIT NOT NULL DEFAULT 1,
KayitTarihi DATETIME NOT NULL DEFAULT GETDATE()
)

-- Restoranlar Tablosu
CREATE TABLE Restoranlar
(
RestoranId INT PRIMARY KEY IDENTITY(1,1),
RestoranAdi NVARCHAR(100) NOT NULL,
Telefon NVARCHAR(50) NOT NULL UNIQUE,
Adres NVARCHAR(200) NOT NULL,
Puan DECIMAL(2,1) NOT NULL CHECK (Puan BETWEEN 1 AND 5),
ToplamCiro DECIMAL(18,2) NOT NULL DEFAULT 0,
IsActive BIT NOT NULL DEFAULT 1,
KayitTarihi DATETIME NOT NULL DEFAULT GETDATE()
)

-- Kuryeler Tablosu
CREATE TABLE Kuryeler
(
KuryeId INT PRIMARY KEY IDENTITY(1,1),
Ad NVARCHAR(50) NOT NULL,
Soyad NVARCHAR(50) NOT NULL,
Telefon NVARCHAR(20) NOT NULL UNIQUE,
IsActive BIT NOT NULL DEFAULT 1,
IseBaslamaTarihi DATETIME NOT NULL DEFAULT GETDATE()
)

-- Kategoriler Tablosu
CREATE TABLE Kategoriler
(
KategoriId INT PRIMARY KEY IDENTITY(1,1),
KategoriAdi NVARCHAR(50) NOT NULL UNIQUE,
IsActive BIT NOT NULL DEFAULT 1,
OlusturmaTarihi DATETIME NOT NULL DEFAULT GETDATE()
)

-- Ürünler Tablosu
CREATE TABLE Urunler
(
UrunId INT PRIMARY KEY IDENTITY(1,1),
RestoranId INT NOT NULL,
KategoriId INT NOT NULL,
UrunAdi NVARCHAR(100) NOT NULL,
Aciklama NVARCHAR(500) NULL,
Fiyat DECIMAL(18,2) NOT NULL CHECK (Fiyat >= 0),
StokDurumu BIT NOT NULL DEFAULT 1,
IsActive BIT NOT NULL DEFAULT 1,
OlusturmaTarihi DATETIME NOT NULL DEFAULT GETDATE(),

 FOREIGN KEY (RestoranId)
 REFERENCES Restoranlar(RestoranId),

 FOREIGN KEY (KategoriId)
 REFERENCES Kategoriler(KategoriId)  
)

-- Siparişler Tablosu
CREATE TABLE Siparisler
(
SiparisId INT PRIMARY KEY IDENTITY(1,1),
MusteriId INT NOT NULL,
RestoranId INT NOT NULL,
KuryeId INT NOT NULL,
SiparisTarihi DATETIME NOT NULL DEFAULT GETDATE(),
ToplamTutar DECIMAL(18,2) NOT NULL CHECK (ToplamTutar >= 0),
SiparisDurumu NVARCHAR(30) NOT NULL,
TeslimatAdresi NVARCHAR(200) NOT NULL,
AskidaYemekKullanildiMi BIT NOT NULL DEFAULT 0,

FOREIGN KEY (MusteriId)
REFERENCES Musteriler(MusteriId),

FOREIGN KEY (RestoranId)
REFERENCES Restoranlar(RestoranId),

FOREIGN KEY (KuryeId)
REFERENCES Kuryeler(KuryeId)
)

-- Siparis Detayları Tablosu
CREATE TABLE SiparisDetaylari
(
SiparisDetayId INT PRIMARY KEY IDENTITY(1,1),
SiparisId INT NOT NULL,
UrunId INT NOT NULL,
Adet INT NOT NULL CHECK (Adet > 0),
BirimFiyat DECIMAL(10,2) NOT NULL,
AraToplam DECIMAL(10,2) NOT NULL,

FOREIGN KEY (SiparisId)
REFERENCES Siparisler(SiparisId),

FOREIGN KEY (UrunId)
REFERENCES Urunler(UrunId)
)

-- Ödemeler Tablosu
CREATE TABLE Odemeler
(
OdemeId INT PRIMARY KEY IDENTITY(1,1),
SiparisId INT NOT NULL,
OdemeTutari DECIMAL(10,2) NOT NULL CHECK (OdemeTutari >= 0),
OdemeYontemi NVARCHAR(50) NOT NULL,
OdemeTarihi DateTime NOT NULL DEFAULT GETDATE(),
OdemeDurumu NVARCHAR(50) NOT NULL,

FOREIGN KEY (SiparisId)
REFERENCES Siparisler(SiparisId)
)

-- Kuponlar Tablosu
CREATE TABLE Kuponlar
(
KuponId INT PRIMARY KEY IDENTITY(1,1),
KuponKodu NVARCHAR(50) NOT NULL UNIQUE,
IndirimOrani DECIMAL(5,2) NOT NULL CHECK (IndirimOrani >= 0 AND IndirimOrani <= 100),
SonKullanmaTarihi DateTime NOT NULL,
MinimumSepetTutari DECIMAL(10,2) NOT NULL CHECK (MinimumSepetTutari >= 0) DEFAULT 0,
IsActive BIT NOT NULL DEFAULT 1
)

-- Siparisler tablosuna kupon sistemi eklendi
ALTER TABLE Siparisler
ADD KuponId INT NULL

ALTER TABLE Siparisler
ADD FOREIGN KEY (KuponId)
REFERENCES Kuponlar(KuponId)

-- Askıda Bagışlar Tablosu
CREATE TABLE AskidaBagislar
(
BagisId INT PRIMARY KEY IDENTITY(1,1),
MusteriId INT NOT NULL,
BagisTutari DECIMAL(10,2) NOT NULL CHECK (BagisTutari > 0),
AnonimMi BIT NOT NULL DEFAULT 0,
BagisTarihi DateTime NOT NULL DEFAULT GETDATE(),
Aciklama NVARCHAR(500) NULL,

FOREIGN KEY (MusteriId)
REFERENCES Musteriler(MusteriId)
)

-- Askıda Kullanımlar Tablosu
CREATE TABLE AskidaKullanimlar
(
KullanimId INT PRIMARY KEY IDENTITY(1,1),
MusteriId INT NOT NULL,
SiparisId INT NOT NULL,
KullanilanTutar DECIMAL(10,2) NOT NULL CHECK (KullanilanTutar > 0),
KullanimTarihi DateTime NOT NULL DEFAULT GETDATE(),

FOREIGN KEY (MusteriId)
REFERENCES Musteriler(MusteriId),

FOREIGN KEY (SiparisId)
REFERENCES Siparisler(SiparisId)
)
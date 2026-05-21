-- Mock Data

-- Müşteriler Mock Data
INSERT INTO Musteriler
(Ad, Soyad, Telefon, Email, Adres, IhtiyacSahibiMi, IhtiyacSahibiOnayliMi)
VALUES
('Dilan', 'Solmaz', '05001111111', 'dilan@gmail.com', 'Van / Tuşba', 1, 1),

('Ömer', 'Demir', '05002222222', 'omer@gmail.com', 'Van / İpekyolu', 1, 1),

('Ulaş', 'Taşdemir', '05003333333', 'ulas@gmail.com', 'Van / Tuşba', 0, 0),

('Fatma', 'Çelik', '05004444444', 'fatma@gmail.com', 'Ankara / Çankaya', 0, 0),

('Ali', 'Şahin', '05005555555', 'ali@gmail.com', 'Gaziantep / Şehitkamil', 1, 1),

('Zeynep', 'Aydın', '05006666666', 'zeynep@gmail.com', 'Trabzon / Ortahisar', 0, 0),

('Can', 'Arslan', '05007777777', 'can@gmail.com', 'İstanbul / Kadıköy', 0, 0),

('Elif', 'Kurt', '05008888888', 'elif@gmail.com', 'Gaziantep / Şehitkamil', 1, 1),

('Burak', 'Özdemir', '05009999999', 'burak@gmail.com', 'Ankara / Çankaya', 0, 0),

('Merve', 'Taş', '05001234567', 'merve@gmail.com', 'Trabzon / Ortahisar', 0, 0),

('Eren', 'Yıldırım', '05002345678', 'eren@gmail.com', 'İstanbul / Kadıköy', 0, 0),

('Selin', 'Kara', '05003456789', 'selin@gmail.com', 'Ankara / Çankaya', 0, 0),

('Yusuf', 'Aksoy', '05004567890', 'yusuf@gmail.com', 'Gaziantep / Şehitkamil', 1, 1),

('Buse', 'Kılıç', '05005678901', 'buse@gmail.com', 'Trabzon / Ortahisar', 0, 0),

('Emir', 'Yalçın', '05006789012', 'emir@gmail.com', 'İstanbul / Kadıköy', 0, 0),

('Ceren', 'Acar', '05007890123', 'ceren@gmail.com', 'Ankara / Çankaya', 1, 1),

('Kerem', 'Bulut', '05008901234', 'kerem@gmail.com', 'Gaziantep / Şehitkamil', 0, 0),

('Melisa', 'Erdem', '05009012345', 'melisa@gmail.com', 'Van / İpekyolu', 0, 0),

('Tolga', 'Koç', '05001020304', 'tolga@gmail.com', 'Trabzon / Ortahisar', 0, 0),

('Sude', 'Türkmen', '05002030405', 'sude@gmail.com', 'İstanbul / Kadıköy', 1, 1)

-- Restoranlar Mock Data
INSERT INTO Restoranlar
(RestoranAdi, Telefon, Adres, Puan)
VALUES

('Van Kahvalti Sarayi', '05410000001', 'Van / İpekyolu', 4.7),

('Ankara Lezzet Evi', '05410000002', 'Ankara / Çankaya', 4.5),

('Gaziantep Kebap Salonu', '05410000003', 'Gaziantep / Şehitkamil', 4.8),

('Trabzon Pide Merkezi', '05410000004', 'Trabzon / Ortahisar', 4.4),

('İstanbul Burger House', '05410000005', 'İstanbul / Kadıköy', 4.6)

-- Kategoriler Mock Data
INSERT INTO Kategoriler
(KategoriAdi)
VALUES

('Kahvaltı'),
('Ev Yemekleri'),
('Kebap'),
('Pide'),
('Burger'),
('Tatlı'),
('İçecek')

-- Ürünler Mock Data
INSERT INTO Urunler
(RestoranId, KategoriId, UrunAdi, Aciklama, Fiyat)
VALUES

-- Van Kahvaltı Sarayı
(1, 1, 'Van Kahvaltısı', 'Geleneksel serpme kahvaltı', 350),
(1, 1, 'Menemen', 'Tereyağlı soğanlı menemen', 180),
(1, 1, 'Sucuklu Yumurta', 'Kasap sucuğuyla hazırlanır', 220),
(1, 1, 'Kavurmalı Yumurta', 'Van usulü kavurmalı yumurta', 260),
(1, 1, 'Otlu Peynir Tabağı', 'Yöresel Van otlu peynir', 140),
(1, 1, 'Bal Kaymak', 'Doğal yayla balı ve kaymak', 190),
(1, 7, 'Çay', 'Demleme çay', 25),
(1, 7, 'Türk Kahvesi', 'Geleneksel Türk kahvesi', 60),
(1, 6, 'Künefe', 'Hatay usulü künefe', 140),
(1, 6, 'Sütlaç', 'Fırın sütlaç', 95),

-- Ankara Lezzet Evi
(2, 2, 'Kuru Fasulye', 'Tereyağlı kuru fasulye', 210),
(2, 2, 'Pilav', 'Tereyağlı pirinç pilavı', 90),
(2, 2, 'Etli Nohut', 'Etli nohut yemeği', 240),
(2, 2, 'İzmir Köfte', 'Ev usulü İzmir köfte', 280),
(2, 2, 'Tavuk Sote', 'Sebzeli tavuk sote', 230),
(2, 2, 'Mercimek Çorbası', 'Günlük mercimek çorbası', 85),
(2, 2, 'Yaprak Sarma', 'Zeytinyağlı yaprak sarma', 170),
(2, 7, 'Ayran', 'Yayık ayranı', 35),
(2, 6, 'Baklava', 'Fıstıklı baklava', 180),
(2, 6, 'Revani', 'Şerbetli revani', 110),

-- Gaziantep Kebap Salonu
(3, 3, 'Adana Kebap', 'Acılı Adana kebap', 320),
(3, 3, 'Urfa Kebap', 'Acısız Urfa kebap', 310),
(3, 3, 'Beyti Kebap', 'Kaşarlı beyti kebap', 360),
(3, 3, 'Ali Nazik', 'Patlıcanlı Ali Nazik', 340),
(3, 3, 'Lahmacun', 'Taş fırında lahmacun', 95),
(3, 3, 'Kuşbaşı Kebap', 'Izgara kuşbaşı kebap', 390),
(3, 3, 'Ciğer Şiş', 'Gaziantep usulü ciğer şiş', 280),
(3, 7, 'Şalgam', 'Acılı şalgam suyu', 40),
(3, 6, 'Katmer', 'Fıstıklı katmer', 210),
(3, 6, 'Baklava', 'Gaziantep baklavası', 220),

-- Trabzon Pide Merkezi
(4, 4, 'Kaşarlı Pide', 'Trabzon usulü kaşarlı pide', 210),
(4, 4, 'Kuşbaşı Pide', 'Kuşbaşı etli pide', 290),
(4, 4, 'Karışık Pide', 'Karışık malzemeli pide', 320),
(4, 4, 'Kavurmalı Pide', 'Trabzon usulü kavurmalı pide', 340),
(4, 4, 'Sucuklu Pide', 'Kasap sucuklu pide', 260),
(4, 4, 'Kıymalı Pide', 'Taş fırında kıymalı pide', 240),
(4, 4, 'Yumurtalı Pide', 'Yumurtalı Trabzon pidesi', 200),
(4, 7, 'Kola', '330ml kutu kola', 45),
(4, 6, 'Laz Böreği', 'Trabzon usulü laz böreği', 170),
(4, 6, 'Sütlaç', 'Trabzon sütlacı', 100),

-- İstanbul Burger House
(5, 5, 'Cheeseburger', 'Cheddar peynirli burger', 260),
(5, 5, 'Double Burger', 'Çift katlı et burger', 340),
(5, 5, 'Chicken Burger', 'Çıtır tavuk burger', 240),
(5, 5, 'BBQ Burger', 'BBQ soslu özel burger', 310),
(5, 5, 'Mantarlı Burger', 'Mantar soslu burger', 290),
(5, 5, 'Patates Kızartması', 'Baharatlı patates kızartması', 90),
(5, 5, 'Soğan Halkası', 'Çıtır soğan halkası', 110),
(5, 7, 'Kola', '330ml kutu kola', 45),
(5, 6, 'Magnolia', 'Çilekli magnolia', 160),
(5, 6, 'San Sebastian', 'San Sebastian cheesecake', 190)


-- Kuryeler Mock Data
INSERT INTO Kuryeler
(Ad, Soyad, Telefon, IseBaslamaTarihi)
VALUES

-- Van Kuryeleri
('Ahmet', 'Kaya', '05510000001', '2022-03-14'),
('Mehmet', 'Demir', '05510000002', '2023-07-21'),
('Furkan', 'Yıldız', '05510000003', '2024-01-10'),

-- Ankara Kuryeleri
('Burak', 'Çetin', '05510000004', '2022-11-05'),
('Emre', 'Şahin', '05510000005', '2023-04-18'),
('Caner', 'Aydın', '05510000006', '2024-02-22'),

-- Gaziantep Kuryeleri
('Hasan', 'Koç', '05510000007', '2022-08-30'),
('Yusuf', 'Arslan', '05510000008', '2023-09-12'),
('Kerem', 'Bulut', '05510000009', '2024-05-03'),

-- Trabzon Kuryeleri
('Oğuz', 'Kurt', '05510000010', '2022-01-17'),
('Tolga', 'Erdem', '05510000011', '2023-06-25'),
('Mert', 'Aksoy', '05510000012', '2024-03-11'),

-- İstanbul Kuryeleri
('Ali', 'Yılmaz', '05510000013', '2022-10-09'),
('Batuhan', 'Özdemir', '05510000014', '2023-12-01'),
('Ege', 'Türkmen', '05510000015', '2024-04-27')


-- Kuponlar Mock Data
INSERT INTO Kuponlar
(KuponKodu, IndirimOrani, SonKullanmaTarihi, MinimumSepetTutari)
VALUES

('HOSGELDIN10', 10, '2026-12-31', 200),

('YEMEK20', 20, '2026-10-15', 300),

('GAZIANTEP15', 15, '2026-09-20', 250),

('PIDE25', 25, '2026-11-30', 400),

('BURGER30', 30, '2026-08-31', 500),

('TATLIM5', 5, '2026-12-01', 100),

('ASKIDA50', 50, '2026-07-15', 600),

('KAHVALTI15', 15, '2026-06-30', 250),

('INDIRIM10', 10, '2026-09-10', 150),

('YAZKAMPANYA20', 20, '2026-08-15', 350)


-- Siparisler Mock Data (1-25)
INSERT INTO Siparisler
(MusteriId, RestoranId, KuryeId, SiparisTarihi, ToplamTutar, SiparisDurumu, TeslimatAdresi, AskidaYemekKullanildiMi, KuponId)
VALUES

(1, 1, 1, '2026-05-01 09:15:00', 350, 'Teslim Edildi', 'Van / Tuşba', 0, 8),
(2, 1, 2, '2026-05-01 10:20:00', 220, 'Teslim Edildi', 'Van / İpekyolu', 1, NULL),
(3, 1, 3, '2026-05-01 11:05:00', 180, 'Hazırlanıyor', 'Van / Tuşba', 0, NULL),
(18, 1, 1, '2026-05-01 12:10:00', 540, 'Teslim Edildi', 'Van / İpekyolu', 0, 1),
(1, 1, 2, '2026-05-01 13:45:00', 260, 'Yolda', 'Van / Tuşba', 0, NULL),

(4, 2, 4, '2026-05-02 12:15:00', 300, 'Teslim Edildi', 'Ankara / Çankaya', 0, 2),
(9, 2, 5, '2026-05-02 13:10:00', 210, 'Hazırlanıyor', 'Ankara / Çankaya', 0, NULL),
(12, 2, 6, '2026-05-02 14:25:00', 390, 'Teslim Edildi', 'Ankara / Çankaya', 0, 9),
(16, 2, 4, '2026-05-02 15:40:00', 170, 'Teslim Edildi', 'Ankara / Çankaya', 1, NULL),
(4, 2, 5, '2026-05-02 17:00:00', 265, 'Yolda', 'Ankara / Çankaya', 0, NULL),

(5, 3, 7, '2026-05-03 11:20:00', 320, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 3),
(8, 3, 8, '2026-05-03 12:00:00', 430, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 7),
(13, 3, 9, '2026-05-03 13:35:00', 280, 'Hazırlanıyor', 'Gaziantep / Şehitkamil', 0, NULL),
(17, 3, 7, '2026-05-03 14:10:00', 610, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 2),
(5, 3, 8, '2026-05-03 15:30:00', 390, 'Yolda', 'Gaziantep / Şehitkamil', 0, NULL),

(6, 4, 10, '2026-05-04 10:45:00', 290, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(10, 4, 11, '2026-05-04 11:50:00', 340, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, 4),
(14, 4, 12, '2026-05-04 13:00:00', 210, 'Hazırlanıyor', 'Trabzon / Ortahisar', 0, NULL),
(19, 4, 10, '2026-05-04 14:20:00', 460, 'Teslim Edildi', 'Trabzon / Ortahisar', 1, NULL),
(6, 4, 11, '2026-05-04 15:40:00', 240, 'Yolda', 'Trabzon / Ortahisar', 0, NULL),

(7, 5, 13, '2026-05-05 12:05:00', 260, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, NULL),
(11, 5, 14, '2026-05-05 13:30:00', 430, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, 5),
(15, 5, 15, '2026-05-05 14:10:00', 310, 'Hazırlanıyor', 'İstanbul / Kadıköy', 0, NULL),
(20, 5, 13, '2026-05-05 15:45:00', 500, 'Teslim Edildi', 'İstanbul / Kadıköy', 1, 7),
(7, 5, 14, '2026-05-05 17:20:00', 290, 'Yolda', 'İstanbul / Kadıköy', 0, NULL)

-- Siparisler Mock Data (26-50)
INSERT INTO Siparisler
(MusteriId, RestoranId, KuryeId, SiparisTarihi, ToplamTutar, SiparisDurumu, TeslimatAdresi, AskidaYemekKullanildiMi, KuponId)
VALUES

(2, 1, 3, '2026-05-06 09:30:00', 410, 'Teslim Edildi', 'Van / İpekyolu', 1, 8),
(3, 1, 1, '2026-05-06 10:45:00', 190, 'Hazırlanıyor', 'Van / Tuşba', 0, NULL),
(18, 1, 2, '2026-05-06 12:00:00', 270, 'Teslim Edildi', 'Van / İpekyolu', 0, NULL),
(1, 1, 3, '2026-05-06 13:10:00', 620, 'Teslim Edildi', 'Van / Tuşba', 1, 7),
(2, 1, 1, '2026-05-06 15:25:00', 240, 'Yolda', 'Van / İpekyolu', 0, NULL),

(4, 2, 6, '2026-05-07 11:15:00', 310, 'Teslim Edildi', 'Ankara / Çankaya', 0, 2),
(9, 2, 4, '2026-05-07 12:20:00', 175, 'Hazırlanıyor', 'Ankara / Çankaya', 0, NULL),
(12, 2, 5, '2026-05-07 13:35:00', 450, 'Teslim Edildi', 'Ankara / Çankaya', 0, 9),
(16, 2, 6, '2026-05-07 14:50:00', 230, 'Teslim Edildi', 'Ankara / Çankaya', 1, NULL),
(4, 2, 4, '2026-05-07 16:00:00', 290, 'Yolda', 'Ankara / Çankaya', 0, NULL),

(5, 3, 9, '2026-05-08 10:10:00', 330, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 3),
(8, 3, 7, '2026-05-08 11:40:00', 580, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 7),
(13, 3, 8, '2026-05-08 12:55:00', 295, 'Hazırlanıyor', 'Gaziantep / Şehitkamil', 0, NULL),
(17, 3, 9, '2026-05-08 14:15:00', 420, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 2),
(5, 3, 7, '2026-05-08 16:20:00', 360, 'Yolda', 'Gaziantep / Şehitkamil', 1, NULL),

(6, 4, 12, '2026-05-09 09:50:00', 280, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(10, 4, 10, '2026-05-09 11:05:00', 340, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, 4),
(14, 4, 11, '2026-05-09 12:25:00', 210, 'Hazırlanıyor', 'Trabzon / Ortahisar', 0, NULL),
(19, 4, 12, '2026-05-09 13:45:00', 470, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(6, 4, 10, '2026-05-09 15:10:00', 250, 'Yolda', 'Trabzon / Ortahisar', 0, NULL),

(7, 5, 15, '2026-05-10 11:20:00', 310, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, NULL),
(11, 5, 13, '2026-05-10 12:40:00', 520, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, 5),
(15, 5, 14, '2026-05-10 13:55:00', 290, 'Hazırlanıyor', 'İstanbul / Kadıköy', 0, NULL),
(20, 5, 15, '2026-05-10 15:05:00', 610, 'Teslim Edildi', 'İstanbul / Kadıköy', 1, 7),
(7, 5, 13, '2026-05-10 16:30:00', 260, 'Yolda', 'İstanbul / Kadıköy', 0, NULL)

-- Siparisler Verileri (51-75)
INSERT INTO Siparisler
(MusteriId, RestoranId, KuryeId, SiparisTarihi, ToplamTutar, SiparisDurumu, TeslimatAdresi, AskidaYemekKullanildiMi, KuponId)
VALUES

(18, 1, 2, '2026-05-11 08:45:00', 380, 'Teslim Edildi', 'Van / İpekyolu', 0, 1),
(1, 1, 3, '2026-05-11 10:00:00', 245, 'Hazırlanıyor', 'Van / Tuşba', 1, NULL),
(2, 1, 1, '2026-05-11 11:20:00', 520, 'Teslim Edildi', 'Van / İpekyolu', 1, 7),
(3, 1, 2, '2026-05-11 12:35:00', 160, 'Yolda', 'Van / Tuşba', 0, NULL),
(18, 1, 3, '2026-05-11 14:10:00', 295, 'Teslim Edildi', 'Van / İpekyolu', 0, 8),

(4, 2, 5, '2026-05-12 11:00:00', 270, 'Teslim Edildi', 'Ankara / Çankaya', 0, NULL),
(9, 2, 6, '2026-05-12 12:15:00', 410, 'Teslim Edildi', 'Ankara / Çankaya', 0, 2),
(12, 2, 4, '2026-05-12 13:40:00', 185, 'Hazırlanıyor', 'Ankara / Çankaya', 0, NULL),
(16, 2, 5, '2026-05-12 15:00:00', 340, 'Teslim Edildi', 'Ankara / Çankaya', 1, NULL),
(4, 2, 6, '2026-05-12 16:25:00', 260, 'Yolda', 'Ankara / Çankaya', 0, 9),

(5, 3, 8, '2026-05-13 10:50:00', 390, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 3),
(8, 3, 9, '2026-05-13 12:05:00', 610, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 7),
(13, 3, 7, '2026-05-13 13:30:00', 320, 'Hazırlanıyor', 'Gaziantep / Şehitkamil', 0, NULL),
(17, 3, 8, '2026-05-13 14:55:00', 470, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 2),
(5, 3, 9, '2026-05-13 16:10:00', 280, 'Yolda', 'Gaziantep / Şehitkamil', 1, NULL),

(6, 4, 11, '2026-05-14 09:40:00', 310, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(10, 4, 12, '2026-05-14 10:55:00', 450, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, 4),
(14, 4, 10, '2026-05-14 12:15:00', 240, 'Hazırlanıyor', 'Trabzon / Ortahisar', 0, NULL),
(19, 4, 11, '2026-05-14 13:35:00', 520, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(6, 4, 12, '2026-05-14 15:00:00', 290, 'Yolda', 'Trabzon / Ortahisar', 0, NULL),

(7, 5, 14, '2026-05-15 11:10:00', 340, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, NULL),
(11, 5, 15, '2026-05-15 12:25:00', 590, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, 5),
(15, 5, 13, '2026-05-15 13:45:00', 260, 'Hazırlanıyor', 'İstanbul / Kadıköy', 0, NULL),
(20, 5, 14, '2026-05-15 15:10:00', 640, 'Teslim Edildi', 'İstanbul / Kadıköy', 1, 7),
(7, 5, 15, '2026-05-15 16:40:00', 310, 'Yolda', 'İstanbul / Kadıköy', 0, NULL)

-- Siparisler Verileri (76-100)
INSERT INTO Siparisler
(MusteriId, RestoranId, KuryeId, SiparisTarihi, ToplamTutar, SiparisDurumu, TeslimatAdresi, AskidaYemekKullanildiMi, KuponId)
VALUES

(2, 1, 1, '2026-05-16 09:10:00', 430, 'Teslim Edildi', 'Van / İpekyolu', 1, 8),
(3, 1, 2, '2026-05-16 10:25:00', 190, 'Hazırlanıyor', 'Van / Tuşba', 0, NULL),
(18, 1, 3, '2026-05-16 11:40:00', 510, 'Teslim Edildi', 'Van / İpekyolu', 0, 1),
(1, 1, 1, '2026-05-16 13:00:00', 280, 'Teslim Edildi', 'Van / Tuşba', 1, 7),
(2, 1, 2, '2026-05-16 14:30:00', 240, 'Yolda', 'Van / İpekyolu', 0, NULL),

(4, 2, 4, '2026-05-17 11:15:00', 320, 'Teslim Edildi', 'Ankara / Çankaya', 0, 2),
(9, 2, 5, '2026-05-17 12:40:00', 210, 'Hazırlanıyor', 'Ankara / Çankaya', 0, NULL),
(12, 2, 6, '2026-05-17 13:55:00', 470, 'Teslim Edildi', 'Ankara / Çankaya', 0, 9),
(16, 2, 4, '2026-05-17 15:10:00', 260, 'Teslim Edildi', 'Ankara / Çankaya', 1, NULL),
(4, 2, 5, '2026-05-17 16:25:00', 300, 'Yolda', 'Ankara / Çankaya', 0, NULL),

(5, 3, 7, '2026-05-18 10:20:00', 350, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 3),
(8, 3, 8, '2026-05-18 11:45:00', 620, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 1, 7),
(13, 3, 9, '2026-05-18 13:05:00', 310, 'Hazırlanıyor', 'Gaziantep / Şehitkamil', 0, NULL),
(17, 3, 7, '2026-05-18 14:20:00', 480, 'Teslim Edildi', 'Gaziantep / Şehitkamil', 0, 2),
(5, 3, 8, '2026-05-18 15:40:00', 390, 'Yolda', 'Gaziantep / Şehitkamil', 1, NULL),

(6, 4, 10, '2026-05-19 09:35:00', 300, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(10, 4, 11, '2026-05-19 10:50:00', 520, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, 4),
(14, 4, 12, '2026-05-19 12:05:00', 240, 'Hazırlanıyor', 'Trabzon / Ortahisar', 0, NULL),
(19, 4, 10, '2026-05-19 13:25:00', 560, 'Teslim Edildi', 'Trabzon / Ortahisar', 0, NULL),
(6, 4, 11, '2026-05-19 14:45:00', 280, 'Yolda', 'Trabzon / Ortahisar', 0, NULL),

(7, 5, 13, '2026-05-20 11:00:00', 340, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, NULL),
(11, 5, 14, '2026-05-20 12:20:00', 610, 'Teslim Edildi', 'İstanbul / Kadıköy', 0, 5),
(15, 5, 15, '2026-05-20 13:40:00', 290, 'Hazırlanıyor', 'İstanbul / Kadıköy', 0, NULL),
(20, 5, 13, '2026-05-20 15:05:00', 670, 'Teslim Edildi', 'İstanbul / Kadıköy', 1, 7),
(7, 5, 14, '2026-05-20 16:30:00', 320, 'Yolda', 'İstanbul / Kadıköy', 0, NULL)

-- SiparisDetaylari Mock Data (1-50)
INSERT INTO SiparisDetaylari
(SiparisId, UrunId, Adet, BirimFiyat, AraToplam)
VALUES

-- 1-5 Van
(1, 1, 1, 350, 350),
(2, 3, 1, 220, 220),
(3, 2, 1, 180, 180),
(4, 1, 1, 350, 350),
(4, 6, 1, 190, 190),
(5, 4, 1, 260, 260),

-- 6-10 Ankara
(6, 14, 1, 280, 280),
(7, 11, 1, 210, 210),
(8, 13, 1, 240, 240),
(8, 19, 1, 180, 180),
(9, 17, 1, 170, 170),
(10, 15, 1, 230, 230),
(10, 18, 1, 35, 35),

-- 11-15 Gaziantep
(11, 21, 1, 320, 320),
(12, 22, 1, 310, 310),
(12, 28, 3, 40, 120),
(13, 27, 1, 280, 280),
(14, 24, 1, 340, 340),
(14, 30, 1, 220, 220),
(15, 26, 1, 390, 390),

-- 16-20 Trabzon
(16, 32, 1, 290, 290),
(17, 34, 1, 340, 340),
(18, 31, 1, 210, 210),
(19, 33, 1, 320, 320),
(19, 39, 1, 170, 170),
(20, 36, 1, 240, 240),

-- 21-25 İstanbul
(21, 41, 1, 260, 260),
(22, 42, 1, 340, 340),
(22, 50, 1, 190, 190),
(23, 44, 1, 310, 310),
(24, 42, 1, 340, 340),
(24, 46, 1, 90, 90),
(25, 45, 1, 290, 290),

-- 26-30 Van
(26, 1, 1, 350, 350),
(26, 7, 2, 25, 50),
(27, 6, 1, 190, 190),
(28, 4, 1, 260, 260),
(29, 1, 1, 350, 350),
(29, 9, 1, 140, 140),
(30, 3, 1, 220, 220),

-- 31-35 Ankara
(31, 14, 1, 280, 280),
(31, 18, 1, 35, 35),
(32, 17, 1, 170, 170),
(33, 13, 1, 240, 240),
(33, 19, 1, 180, 180),
(34, 15, 1, 230, 230),
(35, 11, 1, 210, 210),
(35, 12, 1, 90, 90),

-- 36-40 Gaziantep
(36, 21, 1, 320, 320),
(37, 26, 1, 390, 390),
(37, 30, 1, 220, 220),
(38, 27, 1, 280, 280),
(39, 23, 1, 360, 360),
(39, 28, 1, 40, 40),
(40, 24, 1, 340, 340),
(40, 29, 1, 210, 210),

-- 41-45 Trabzon
(41, 32, 1, 290, 290),
(42, 34, 1, 340, 340),
(43, 37, 1, 200, 200),
(44, 33, 1, 320, 320),
(44, 40, 2, 100, 200),
(45, 35, 1, 260, 260),

-- 46-50 İstanbul
(46, 42, 1, 340, 340),
(47, 41, 1, 260, 260),
(47, 46, 1, 90, 90),
(48, 45, 1, 290, 290),
(49, 42, 1, 340, 340),
(49, 49, 1, 160, 160),
(50, 43, 1, 240, 240)

-- SiparisDetaylari Mock Data (51-100)
INSERT INTO SiparisDetaylari
(SiparisId, UrunId, Adet, BirimFiyat, AraToplam)
VALUES

-- 51-55 Van
(51, 1, 1, 350, 350),
(51, 7, 1, 25, 25),
(52, 6, 1, 190, 190),
(52, 8, 1, 60, 60),
(53, 1, 1, 350, 350),
(53, 9, 1, 140, 140),
(54, 2, 1, 180, 180),
(55, 4, 1, 260, 260),
(55, 7, 1, 25, 25),

-- 56-60 Ankara
(56, 14, 1, 280, 280),
(57, 11, 1, 210, 210),
(57, 18, 1, 35, 35),
(58, 13, 1, 240, 240),
(58, 19, 1, 180, 180),
(59, 15, 1, 230, 230),
(59, 12, 1, 90, 90),
(60, 17, 1, 170, 170),
(60, 20, 1, 110, 110),

-- 61-65 Gaziantep
(61, 21, 1, 320, 320),
(61, 28, 1, 40, 40),
(62, 26, 1, 390, 390),
(62, 30, 1, 220, 220),
(63, 27, 1, 280, 280),
(63, 25, 1, 95, 95),
(64, 24, 1, 340, 340),
(64, 29, 1, 210, 210),
(65, 22, 1, 310, 310),

-- 66-70 Trabzon
(66, 33, 1, 320, 320),
(67, 34, 1, 340, 340),
(67, 39, 1, 170, 170),
(68, 36, 1, 240, 240),
(69, 32, 1, 290, 290),
(69, 40, 2, 100, 200),
(70, 35, 1, 260, 260),
(70, 38, 1, 45, 45),

-- 71-75 İstanbul
(71, 42, 1, 340, 340),
(72, 41, 1, 260, 260),
(72, 46, 1, 90, 90),
(73, 45, 1, 290, 290),
(74, 42, 1, 340, 340),
(74, 49, 1, 160, 160),
(75, 44, 1, 310, 310),

-- 76-80 Van
(76, 1, 1, 350, 350),
(76, 7, 2, 25, 50),
(77, 6, 1, 190, 190),
(78, 1, 1, 350, 350),
(78, 9, 1, 140, 140),
(79, 4, 1, 260, 260),
(80, 3, 1, 220, 220),
(80, 7, 1, 25, 25),

-- 81-85 Ankara
(81, 14, 1, 280, 280),
(81, 18, 1, 35, 35),
(82, 11, 1, 210, 210),
(83, 13, 1, 240, 240),
(83, 19, 1, 180, 180),
(84, 15, 1, 230, 230),
(84, 12, 1, 90, 90),
(85, 17, 1, 170, 170),
(85, 20, 1, 110, 110),

-- 86-90 Gaziantep
(86, 21, 1, 320, 320),
(86, 28, 1, 40, 40),
(87, 26, 1, 390, 390),
(87, 30, 1, 220, 220),
(88, 27, 1, 280, 280),
(88, 25, 1, 95, 95),
(89, 24, 1, 340, 340),
(89, 29, 1, 210, 210),
(90, 22, 1, 310, 310),
(90, 28, 2, 40, 80),

-- 91-95 Trabzon
(91, 33, 1, 320, 320),
(91, 38, 1, 45, 45),
(92, 34, 1, 340, 340),
(92, 39, 1, 170, 170),
(93, 36, 1, 240, 240),
(94, 32, 1, 290, 290),
(94, 40, 2, 100, 200),
(95, 35, 1, 260, 260),
(95, 37, 1, 200, 200),

-- 96-100 İstanbul
(96, 42, 1, 340, 340),
(97, 41, 1, 260, 260),
(97, 46, 1, 90, 90),
(98, 45, 1, 290, 290),
(99, 42, 1, 340, 340),
(99, 49, 1, 160, 160),
(100, 44, 1, 310, 310),
(100, 50, 1, 190, 190)

-- SiparisDetaylari tablosundaki ürün toplamlarına göre
-- Siparisler tablosundaki ToplamTutar alanları güncellenir.
-- Böylece sipariş toplamları ile detay toplamları senkronize edilir.

UPDATE Siparisler
SET ToplamTutar = (
    SELECT SUM(AraToplam)
    FROM SiparisDetaylari
    WHERE SiparisDetaylari.SiparisId = Siparisler.SiparisId
)


-- Ödemeler Mock Data
-- Her sipariş için bir ödeme kaydı oluşturulur.
-- OdemeTutari, Siparisler tablosundaki güncel ToplamTutar değerinden alınır.
-- Böylece ödeme tutarı ile sipariş toplamı birebir uyumlu olur.

INSERT INTO Odemeler
(SiparisId, OdemeTutari, OdemeYontemi, OdemeTarihi, OdemeDurumu)
SELECT
    SiparisId,
    ToplamTutar,
    CASE
        WHEN AskidaYemekKullanildiMi = 1 THEN 'Askıda Yemek'
        WHEN SiparisId % 3 = 0 THEN 'Nakit'
        WHEN SiparisId % 3 = 1 THEN 'Kredi Kartı'
        ELSE 'Online Ödeme'
    END AS OdemeYontemi,
    DATEADD(MINUTE, 10, SiparisTarihi) AS OdemeTarihi,
    CASE
        WHEN AskidaYemekKullanildiMi = 1 THEN 'Askıda Karşılandı'
        WHEN SiparisDurumu = 'Hazırlanıyor' THEN 'Beklemede'
        ELSE 'Ödendi'
    END AS OdemeDurumu
FROM Siparisler;

SELECT COUNT(*) AS OdemeSayisi FROM Odemeler;
SELECT * FROM Odemeler;


-- AskidaBagislar Mock Data
-- İhtiyaç sahibi olmayan bazı müşterilerin askıda yemek sistemine yaptığı bağış kayıtları

INSERT INTO AskidaBagislar
(MusteriId, BagisTutari, AnonimMi, BagisTarihi, Aciklama)
VALUES

(3, 900, 0, '2026-05-01 18:30:00', 'Askıda yemek desteği'),

(4, 1000, 1, '2026-05-03 14:10:00', 'Anonim bağış'),

(7, 300, 0, '2026-05-05 19:45:00', 'İhtiyaç sahiplerine destek'),

(9, 800, 1, '2026-05-07 16:20:00', 'Askıda yemek bağışı'),

(10, 500, 0, '2026-05-09 13:35:00', 'Küçük bir destek'),

(11, 700, 0, '2026-05-11 20:00:00', 'Sosyal destek bağışı'),

(12, 1350, 1, '2026-05-13 15:25:00', 'Anonim askıda yemek desteği'),

(14, 1220, 0, '2026-05-15 12:40:00', 'Yemek desteği'),

(15, 200, 1, '2026-05-17 18:15:00', 'Askıda yemek katkısı'),

(17, 855, 0, '2026-05-19 17:50:00', 'İhtiyaç sahipleri için bağış');

-- AskidaKullanimlar Mock Data
-- İhtiyaç sahibi müşterilerin askıda yemek kullanım kayıtları

INSERT INTO AskidaKullanimlar
(MusteriId, SiparisId, KullanilanTutar, KullanimTarihi)
VALUES

(2, 2, 220, '2026-05-01 10:45:00'),

(16, 9, 170, '2026-05-02 16:05:00'),

(8, 12, 430, '2026-05-03 12:35:00'),

(19, 19, 460, '2026-05-04 14:50:00'),

(20, 24, 430, '2026-05-05 16:10:00'),

(2, 26, 400, '2026-05-06 09:55:00'),

(1, 29, 490, '2026-05-06 13:40:00'),

(16, 34, 230, '2026-05-07 15:15:00'),

(8, 37, 610, '2026-05-08 12:05:00'),

(1, 52, 250, '2026-05-11 10:25:00'),

(2, 53, 490, '2026-05-11 11:45:00'),

(16, 59, 320, '2026-05-12 15:20:00'),

(5, 61, 360, '2026-05-13 11:15:00'),

(8, 62, 610, '2026-05-13 12:30:00'),

(20, 74, 500, '2026-05-15 15:35:00'),

(2, 76, 400, '2026-05-16 09:40:00'),

(1, 79, 490, '2026-05-16 13:20:00'),

(16, 84, 260, '2026-05-17 15:35:00'),

(5, 86, 360, '2026-05-18 10:45:00'),

(8, 87, 610, '2026-05-18 12:05:00'),

(20, 99, 500, '2026-05-20 15:30:00');

-- Askıda kullanım tutarlarını,
-- ilgili siparişlerin güncel toplam tutarlarıyla eşitler.

UPDATE AskidaKullanimlar
SET KullanilanTutar = (
    SELECT ToplamTutar
    FROM Siparisler
    WHERE Siparisler.SiparisId = AskidaKullanimlar.SiparisId
)


-- Restoranların mevcut toplam ciroları güncellendi

UPDATE R
SET R.ToplamCiro = ISNULL((
    SELECT SUM(S.ToplamTutar)
    FROM Siparisler S
    WHERE S.RestoranId = R.RestoranId
      AND S.SiparisDurumu = 'Teslim Edildi'
), 0)
FROM Restoranlar R;
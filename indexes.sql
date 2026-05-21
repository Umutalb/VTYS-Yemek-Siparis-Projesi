-- INDEX YAPILARI
-- Çevrimiçi Yemek Sipariş Platformu

-- INDEX 1
-- Sipariş durumuna göre yapılan sorguları hızlandırır

CREATE INDEX IX_Siparisler_SiparisDurumu
ON Siparisler(SiparisDurumu)

GO


-- INDEX 2
-- Ürün adına göre yapılan aramaları hızlandırır

CREATE INDEX IX_Urunler_UrunAdi
ON Urunler(UrunAdi)

GO

-- INDEX TEST SORGUSU 1
-- Sipariş durumuna göre filtreleme

SELECT *
FROM Siparisler
WHERE SiparisDurumu = 'Teslim Edildi'

GO


-- INDEX TEST SORGUSU 2
-- Ürün adına göre arama

SELECT *
FROM Urunler
WHERE UrunAdi = 'Kuru Fasulye'

GO
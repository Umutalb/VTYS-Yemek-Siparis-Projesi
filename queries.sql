-- JOIN Sorguları

-- GROUP BY / HAVING Sorguları

-- SUBQUERY Sorguları


-- JOIN SORGUSU 1
-- Detaylı Sipariş Fişi

SELECT
    S.SiparisId,
    M.Ad + ' ' + M.Soyad AS Musteri,
    R.RestoranAdi,
    O.OdemeYontemi,
    O.OdemeDurumu,
    S.ToplamTutar,
    S.SiparisDurumu,
    S.SiparisTarihi

FROM Siparisler S

INNER JOIN Musteriler M
ON S.MusteriId = M.MusteriId

INNER JOIN Restoranlar R
ON S.RestoranId = R.RestoranId

INNER JOIN Odemeler O
ON S.SiparisId = O.SiparisId


-- JOIN SORGUSU 2
-- Müşteri - Restoran - Kurye İlişkisi

SELECT
    S.SiparisId,
    M.Ad + ' ' + M.Soyad AS Musteri,
    R.RestoranAdi,
    K.ad + ' ' + K.Soyad AS Kurye,
    S.SiparisDurumu,
    S.ToplamTutar

 FROM Siparisler S

 INNER JOIN Musteriler M
 ON S.MusteriId = M.MusteriId

 INNER JOIN Restoranlar R
 ON S.RestoranId = R.RestoranId

 INNER JOIN Kuryeler K
 ON S.KuryeId = K.KuryeId


-- JOIN SORGUSU 3
-- Sipariş + ürün detay sorgusu

SELECT
    SD.SiparisDetayId,
    S.SiparisId,
    U.UrunAdi,
    SD.Adet

 FROM SiparisDetaylari SD

 INNER JOIN Urunler U
 ON SD.UrunId = U.UrunId

 INNER JOIN Siparisler S
 ON SD.SiparisId = S.SiparisId


-- LEFT JOIN SORGUSU 4
-- Hiç bağış yapmamış müşteriler

SELECT 
    M.MusteriId,
    M.Ad + ' ' + M.Soyad AS Musteri,
    A.MusteriId AS BagisYapmisMi

FROM Musteriler M

LEFT JOIN AskidaBagislar A
ON M.MusteriId = A.MusteriId


-- GROUP BY SORGUSU 1
-- Her restoranın kaç sipariş aldığını bulmak

SELECT
    R.RestoranAdi,
    COUNT(*) AS SiparisSayisi

FROM Siparisler S

INNER JOIN Restoranlar R
ON S.RestoranId = R.RestoranId

GROUP BY R.RestoranAdi


-- GROUP BY SORGUSU 2
-- Restoranların toplam cirosunu hesaplamak

SELECT
    R.RestoranAdi,
    SUM(S.ToplamTutar) AS ToplamCiro

FROM Siparisler S

INNER JOIN Restoranlar R
ON S.RestoranId = R.RestoranId

GROUP BY R.RestoranAdi


-- GROUP BY SORGUSU 3
-- Restoranların ortalama sipariş tutarını hesaplamak

SELECT
    R.RestoranAdi,
    AVG(S.ToplamTutar) AS OrtalamaSiparisTutari

FROM Siparisler S

INNER JOIN Restoranlar R
ON S.RestoranId = R.RestoranId

GROUP BY R.RestoranAdi


-- HAVING SORGUSU 1
-- 10’dan fazla sipariş alan restoranları listelemek

SELECT
    R.RestoranAdi,
    COUNT(*) AS SiparisSayisi

FROM Siparisler S

INNER JOIN Restoranlar R
ON S.RestoranId = R.RestoranId

GROUP BY R.RestoranAdi
HAVING COUNT(*) > 10


-- SUBQUERY SORGUSU 1
-- Hiç bağış yapmamış müşteriler

SELECT
    M.MusteriId,
    M.Ad + ' ' + M.Soyad AS BagisYapmamisMusteri

FROM Musteriler M

WHERE NOT EXISTS
(
    SELECT *
    FROM AskidaBagislar A
    WHERE A.MusteriId = M.MusteriId
)


-- SUBQUERY SORGUSU 2
-- Askıda yemek kullanan müşteriler

SELECT
    M.MusteriId,
    M.Ad + ' ' + M.Soyad AS AskidaYemekKullananMusteri

FROM Musteriler M

WHERE EXISTS
(
    SELECT *
    FROM AskidaKullanimlar A
    WHERE A.MusteriId = M.MusteriId
)


-- SUBQUERY SORGUSU 3
-- Kupon kullanan müşteriler

SELECT
    M.MusteriId,
    M.Ad + ' ' + M.Soyad AS KuponKullananMusteri

FROM Musteriler M

WHERE EXISTS
(
    SELECT *
    FROM Siparisler S
    WHERE S.MusteriId = M.MusteriId
    AND S.KuponId IS NOT NULL
)


-- SUBQUERY SORGUSU 4
-- Askıda yemek kullanan müşteriler (IN kullanımı)

SELECT
    M.MusteriId,
    M.Ad + ' ' + M.Soyad AS Musteri

FROM Musteriler M

WHERE M.MusteriId IN
(
    SELECT MusteriId
    FROM AskidaKullanimlar
)
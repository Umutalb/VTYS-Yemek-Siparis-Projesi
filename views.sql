-- VIEW YAPILARI
-- Çevrimiçi Yemek Sipariş Platformu

-- VİEW 1 
-- Aktif restoranların aktif ürünlerini göstermek

CREATE VIEW vw_AktifRestoranUrunleri AS

SELECT
	R.RestoranAdi,
	U.UrunAdi,
	U.Fiyat

FROM Urunler U

INNER JOIN Restoranlar R
ON U.RestoranId = R.RestoranId

WHERE 
	U.IsActive = 1
	AND R.IsActive = 1  
GO

SELECT * FROM vw_AktifRestoranUrunleri

GO

-- VİEW 2
-- Askıda yemek sisteminin genel durumunu göstermek

CREATE VIEW vw_AskidaYemekDurumu AS

SELECT
(
    SELECT SUM(BagisTutari)
    FROM AskidaBagislar
) AS ToplamBagis,

(
    SELECT SUM(KullanilanTutar)
    FROM AskidaKullanimlar
) AS ToplamKullanim,

(
    SELECT SUM(BagisTutari)
    FROM AskidaBagislar
)
-
(
    SELECT SUM(KullanilanTutar)
    FROM AskidaKullanimlar
) AS KalanDestek

GO

SELECT * FROM vw_AskidaYemekDurumu
GO
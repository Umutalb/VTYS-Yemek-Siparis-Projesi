-- TRIGGER YAPILARI
-- Çevrimiçi Yemek Sipariş Platformu

-- Trigger 1
-- Sipariş teslim edilince restoran cirosunu günceller

CREATE TRIGGER trg_RestoranCiroGuncelle
ON Siparisler

AFTER UPDATE
AS

BEGIN

    UPDATE R
    SET R.ToplamCiro = R.ToplamCiro + I.ToplamTutar

    FROM Restoranlar R

    INNER JOIN inserted I
    ON R.RestoranId = I.RestoranId

    WHERE I.SiparisDurumu = 'Teslim Edildi'

END

GO


-- Trigger 2
-- Askıda yemek kullanıldığında otomatik kullanım kaydı oluşturur

CREATE TRIGGER trg_AskidaKullanimOlustur
ON Siparisler

AFTER INSERT
AS

BEGIN

    INSERT INTO AskidaKullanimlar
    (MusteriId, SiparisId, KullanilanTutar, KullanimTarihi)

    SELECT
        I.MusteriId,
        I.SiparisId,
        I.ToplamTutar,
        GETDATE()

    FROM inserted I

    WHERE I.AskidaYemekKullanildiMi = 1

END

GO


-- Trigger 1 Test Etme

SELECT
    RestoranId,
    RestoranAdi,
    ToplamCiro
FROM Restoranlar

SELECT
    SiparisId,
    RestoranId,
    ToplamTutar,
    SiparisDurumu
FROM Siparisler

UPDATE Siparisler
SET SiparisDurumu = 'Teslim Edildi'
WHERE SiparisId = 3


-- Trigger 2 Test Etme

INSERT INTO Siparisler
(
    MusteriId,
    RestoranId,
    KuryeId,
    ToplamTutar,
    SiparisDurumu,
    TeslimatAdresi,
    AskidaYemekKullanildiMi
)

VALUES
(
    2,
    1,
    1,
    250,
    'Hazırlanıyor',
    'Van Merkez',
    1
)


SELECT * FROM AskidaKullanimlar
ORDER BY KullanimId DESC
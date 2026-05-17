# İş Kuralları

## Genel Sistem Kuralları

- Sistem çevrimiçi yemek sipariş platformu mantığıyla çalışmaktadır.
- Her tabloda birincil anahtar (Primary Key) kullanılmaktadır.
- Tablolar arasındaki ilişkiler Foreign Key yapıları ile kurulmuştur.
- Sistemde veri tekrarını azaltmak için normalizasyon kuralları uygulanmıştır.
- Pasif kayıtları tamamen silmek yerine soft delete mantığı için `IsActive` alanı kullanılmıştır.

---

# Müşteri Kuralları

- Her müşteri benzersiz telefon numarasına sahip olmalıdır.
- Her müşteri benzersiz e-posta adresine sahip olmalıdır.
- Bir müşteri birden fazla sipariş verebilir.
- İhtiyaç sahibi kullanıcılar sistem tarafından onaylanmalıdır.
- İhtiyaç sahibi durumu `IhtiyacSahibiMi` alanı ile tutulmaktadır.

---

# Restoran Kuralları

- Her restoranın benzersiz telefon numarası bulunmalıdır.
- Restoran puanı 1 ile 5 arasında olmalıdır.
- Bir restoran birden fazla ürün ekleyebilir.
- Bir restoran birden fazla sipariş alabilir.

---

# Kurye Kuralları

- Her kurye benzersiz telefon numarasına sahip olmalıdır.
- Bir kurye birden fazla siparişi teslim edebilir.

---

# Kategori Kuralları

- Her kategori benzersiz kategori adına sahip olmalıdır.
- Bir kategori altında birden fazla ürün bulunabilir.

---

# Ürün Kuralları

- Her ürün yalnızca bir restorana ait olabilir.
- Her ürün yalnızca bir kategoriye ait olabilir.
- Ürün fiyatı negatif olamaz.
- Ürün stok durumu sistem tarafından takip edilmektedir.

---

# Sipariş Kuralları

- Bir sipariş yalnızca bir müşteriye ait olabilir.
- Bir sipariş yalnızca bir restorandan oluşturulabilir.
- Bir siparişe yalnızca bir kurye atanabilir.
- Sipariş toplam tutarı negatif olamaz.
- Sipariş teslimat adresi zorunludur.
- Bir siparişte askıda yemek desteği kullanılabilir.
- Bir siparişte en fazla bir kupon kullanılabilir.

---

# Sipariş Detay Kuralları

- Bir sipariş birden fazla ürün içerebilir.
- Sipariş detayındaki ürün adedi 0’dan büyük olmalıdır.
- Sipariş sırasında ürün fiyatı `BirimFiyat` alanında saklanır.
- `AraToplam` alanı ürün adedi ve birim fiyat bilgisini temsil eder.

---

# Ödeme Kuralları

- Her ödeme bir siparişe bağlı olmalıdır.
- Ödeme tutarı negatif olamaz.
- Ödeme yöntemi sistemde kayıt altına alınır.
- Ödeme durumu takip edilir.

---

# Kupon Kuralları

- Her kupon benzersiz kupon koduna sahip olmalıdır.
- Kupon indirim oranı 0 ile 100 arasında olmalıdır.
- Kuponlar minimum sepet tutarına göre uygulanabilir.
- Süresi dolmuş kuponlar kullanılamaz.

---

# Askıda Yemek Kuralları

- Müşteriler askıya bağış yapabilir.
- Askıda bağış anonim olarak yapılabilir.
- Bağış tutarı 0’dan büyük olmalıdır.
- Askıda kullanım işlemleri kayıt altına alınır.
- Askıda kullanılan tutar sipariş ile ilişkilendirilir.
- Askıda yemek sistemi ihtiyaç sahibi kullanıcıları desteklemek amacıyla tasarlanmıştır.
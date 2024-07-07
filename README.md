# **Takım İsmi**

Takım Flutter 52

# Ürün İle İlgili Bilgiler
"Sinefili", kullanıcıların film ve dizi deneyimlerini kolayca yönetebilecekleri bir mobil uygulamadır. Kullanıcılar, IMDb API'si aracılığıyla geniş bir film ve dizi veritabanına erişebilir, favori içeriklerini keşfedip listelerine ekleyebilir ve izlediklerini takip edebilirler. Ayrıca, profil özellikleri sayesinde diğer kullanıcılarla etkileşimde bulunabilir ve film/dizi yorumları ile puanlamaları yapabilirler.
## Takım Elemanları
- Seymen Ay: Scrum Master / Developer
- Emine Sena Top : Product Owner / Developer
- Eylül Ezgi Özer: Aktif Olmayan Üye
- Emirhan Özbay: Aktif Olmayan Üye
- Elif Özcan : Aktif Olmayan Üye

## Ürün İsmi

--Sinefili--

## Product Backlog URL

[Flutter Team 52 Miro Backlog Board](https://miro.com/app/board/)

### Ürün Açıklaması
"Sinefili", kullanıcıların film ve dizi deneyimlerini kolayca yönetebilecekleri bir mobil uygulamadır. Kullanıcılar, IMDb API'si aracılığıyla geniş bir film ve dizi veritabanına erişebilir, favori içeriklerini keşfedip listelerine ekleyebilir ve izlediklerini takip edebilirler. Ayrıca, profil özellikleri sayesinde diğer kullanıcılarla etkileşimde bulunabilir ve film/dizi yorumları ile puanlamaları yapabilirler.

### Ürün Özellikleri

1. *Giriş Ekranı:*
   - Kullanıcılar, kişisel hesaplarıyla giriş yapabilirler.

2. *Alt Navbar:*
   - Dört ana bölümden oluşur: Diziler, Filmler, Keşfet ve Profil.

3. *Keşfet Kısmı:*
   - IMDb API'si kullanılarak çekilen film ve dizi bilgilerini gösterir.
   - Kullanıcılar buradan dizi ve film sectionlarına ekleme/çıkartma yapabilirler.

4. *Diziler Bölümü:*
   - İki pencere: İzlenecekler listesi ve İzlenenler listesi.
   - Kullanıcılar, keşfet kısmında seçtikleri dizileri izlenecek veya izlenmiş olarak ekleyebilirler.
   - Diziler izlendikten sonra "İzlenecek" kısmından "İzlenenler" listesine taşınabilir.

5. *Filmler Bölümü:*
   - İki pencere: İzlenecekler listesi ve İzlenenler listesi.
   - Kullanıcılar, keşfet kısmında seçtikleri filmleri izlenecek veya izlenmiş olarak ekleyebilirler.
   - Filmler izlendikten sonra "İzlenecek" kısmından "İzlenenler" listesine taşınabilir.

6. *Profil Bölümü:*
   - Kullanıcının profil resmi, takipçileri, takip ettikleri, favori dizileri, favori filmleri (ve attığı yorumlar) gösterilir.
   - Kullanıcılar, ekledikleri her dizi veya film için yorum yapabilir ve puanlama verebilirler.

### Hedef Kitle

- *Film ve Dizi Severler:*
  - Düzenli olarak film ve dizi izleyen, yeni içerikler keşfetmekten hoşlanan bireyler.
  - İzledikleri içerikleri organize etmek isteyen kullanıcılar.

- *Sosyal İzleyiciler:*
  - Film ve dizi izleme deneyimlerini arkadaşları ve aileleriyle paylaşmak isteyen kullanıcılar.
  - Başkalarının yorumlarını ve puanlarını dikkate alarak izleme listelerini oluşturan kişiler.

- *Kendini Geliştirmek İsteyen İzleyiciler:*
  - İzledikleri içerikler hakkında daha fazla bilgi edinmek ve bu bilgileri paylaşmak isteyen bireyler.
  - İzleme alışkanlıklarını daha verimli ve düzenli bir şekilde yönetmek isteyen kullanıcılar.

- *Genç Yetişkinler ve Öğrenciler:*
  - Yoğun hayat temposunda izlemek istedikleri içerikleri takip etmek isteyen gençler ve öğrenciler.
  - Arkadaşlarıyla film ve dizi tavsiyeleri paylaşan ve alan kişiler.


# Sprint 1

- **Sprint içinde tamamlanması tahmin edilen puan**: 25 Puan
Sprint İçinde Tamamlanması Tahmin Edilen Puan:
Toplamda 25 puanlık iş tahmin edildi. Puanlama şöyle dağıldı:

+ Figma tasarımı: 4 puan
+ IMDb API entegrasyonu: 7 puan
+ Giriş sayfasi: 3 puan
+ Profil sayfasi: 3 puan
+ İzleyecekler listesi: 3 puan
+ Alt navbar ve ikonların eklenmesi: 2 puan
+ Keşfet kısmında film ve dizi verilerinin gösterimi: 3 puan

**Puan Tamamlama Mantığı:**
Tahmin edilen 25 puanın 15 puanı tamamlandı. IMDb API entegrasyonu ve keşfet kısmındaki veri gösterimi başarıyla gerçekleştirildi, Figma tasarimi ve alt navbar da tamamlandı. Ancak, diziler ve filmler bölümlerindeki giris sayfasi, izleyecekler listesi ve profil sayfası henüz tamamlanmadı.

**Backlog Düzeni - Story Seçimleri ve Sprint board update**: 
Product Backlog ve sprint görevleri, iş gücü seviyelerine göre puanlandırılarak düzenlendi. En önemli ve acil görevler üst sıralara yerleştirildi. Story seçimleri:
Sprint board screenshotları: 


![sprint1](https://github.com/seymenay/bootcamp-group52/assets/114770554/136b4880-a5d6-4683-9067-8aa1693064e7)


## Daily Scrum: 
5 kişilik ekibin 3 üyesi ile iletişim kurulamadığı için sadece 2 kişi çalışmak zorunda kaldık ve projeye geç başladık. Bu sebeple yalnızca iki günlük daily scruma sahibiz.

**1. Gün:** 
+ Yapılanlar: Figma tasarımı üzerinde çalışıldı. Uygulamanın kullanıcı arayüzü tasarlandı ve temel ekranlar oluşturuldu.
+ Karşılaşılan Sorunlar: Tasarım aşamasında birkaç kullanıcı deneyimi (UX) problemi yaşandı, ancak takım içi tartışmalarla çözüldü.
+ Günlük Hedefler: Tüm ana ekranların ve kullanıcı akışlarının tasarımlarına başlamak ve ilerlemek.

**2. Gün:**
+ Yapılanlar: IMDb API ile veri çekimi yapıldı. API entegrasyonu sağlandı ve gerekli veriler uygulamaya başarıyla getirildi, Figma tasarımına devam edildi.
+ Karşılaşılan Sorunlar: API entegrasyonu sırasında bazı bağlantı ve veri formatlama sorunları yaşandı, ancak dokümantasyon ve debug işlemleri ile çözüldü.
+ Günlük Hedefler: API entegrasyonunu tamamlayarak, çekilen verileri uygulama içinde yerleştirmek.




# Ürün Durumu: 

Ekran görüntüleri:

**Keşfet Sayfası:** API ile veri çekim denemesi yapıldı, kullanıcı buradan film ve dizi arayabilecek.

![kesfet](https://github.com/seymenay/bootcamp-group52/assets/114770554/071d78ff-cf3c-438f-a28c-a95e7ded1e59)

**Wishlist Sayfası:** Kullanıcının izlediği/izleyeceği dizi ve filmlerin tutulduğu sayfa olacak, henüz tamamlanmadı.

![wishlist](https://github.com/seymenay/bootcamp-group52/assets/114770554/0a3e8d77-8f5a-4801-9184-27745b736c87)

**Profil Sayfası:** Kullanıcının profilini ve favorilediği film ve dizileri gösteren sayfa olacak, henüz tamamlanmadı. 

![profil](https://github.com/seymenay/bootcamp-group52/assets/114770554/4ef93fdf-3741-4a49-9640-5c389d3f2dd4)

Uygulamada tamamlanmamış bölümler için örnek Figma tasarımı:

![detail ve profile](https://github.com/seymenay/bootcamp-group52/assets/114770554/b1f4aeb0-3197-433c-ab99-f7ab29544dc3)


# Sprint Review
Bu sprint boyunca, Figma’da uygulamanın temel arayüzünü tasarımını ve IMDb API entegrasyonunu tamamladık. Keşfet kısmında film ve dizi verilerini başarıyla çekip gösterebiliyoruz. Ancak, diziler ve filmler bölümlerindeki izlenecek/izlenen listeleri ve profil sayfası hala geliştirilme aşamasında.


# Sprint Retrospective

**İyi Yanlar:**

o IMDb API entegrasyonu bazı engeller çıksa da sonunda gerçekleştirildi.

o Uygulamanın temel arayüzü tasarımı başarıyla tamamlandı.

o İki kişilik ekip olarak verimli çalıştık ve planlanan işlerin bir kısmını tamamladık.


**Geliştirilmesi Gereken Yanlar:**

o Ekip iletişimi konusunda sorunlar yaşandı. 

o Proje planlanandan daha az kişi ile geliştirildiği için geri kalan görevlerin tamamlanması için daha fazla zaman ve iş gücü planlanmalı.


**Kararlar:**

o Daily Scrum toplantılarının düzenli olarak yapılmasına devam edilecek.

o Tamamlanmayan görevler bir sonraki sprintte önceliklendirilecek.
 


---

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

---

<details>
  <summary> <h1> Sprint 1</h1></summary>

## Sprint Notları:

Bu sprint boyunca 5 kişilik ekibimizden sadece 2 kişi aktif olarak çalıştı. Diğer takım üyeleriyle iletişim kuramadık ve projeye geç başladık. Sprint süresince, temel uygulama arayüzünü Figma aracılığıyla oluşturduk ve IMDb API'sini kullanarak birkaç film verisi çekebilen basit bir arayüz geliştirdik.



**Sprint içinde tamamlanması tahmin edilen puan**: 25 Puan
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
 
</details>

---




<details>

 <summary> <h1> Sprint 2</h1></summary>

## Sprint Notları: 
5 kişilik ekipten iki kişi çalıştı. Firebase konusunda yaşanan sorun nedeniyle bu kısımda tek kişi (Sena) çalışsa da süreç boyunca iletişim devam etti. Bu sprint boyunca Firebase bağlantısı sağlandı, movie detail - login - register sayfaları iskeleti tamamlandı. Tasarım özelleştirme çalışmaları bu sprintte yer almadı.

**Sprint içinde tamamlanması tahmin edilen puan**:
Toplamda 40 puanlık iş tahmin edildi. Puanlama şöyle dağıldı:

+ Giriş Kayıt Ekranı Oluşturması - 5 Puan
+ Firebase Bağlantısı - 15 Puan
+ Profil Sayfası Oluşturması - 7 Puan
+ Discover Kısmına Search Özelliği Eklenmesi - 3 Puan
+ Movie Detail Sayfası Oluşturması - 10 Puan

**Puan Tamamlama Mantığı:**
Tahmin edilen 40 puanın 28 puanı tamamlandı. 
Profil sayfası oluşturulmadığı için 7 puan ve movie detail sayfasına yorum ve puanlama özelliği eklenilmediği için 5 puan tamamlanamadı.

**Backlog Düzeni - Story Seçimleri ve Sprint board update**: 
Product Backlog ve sprint görevleri, iş gücü seviyelerine göre puanlandırılarak düzenlendi. En önemli ve acil görevler üst sıralara yerleştirildi. Story seçimleri:
- Giriş Kayıt Ekranı Oluşturması (Tamamlandı) 
- Firebase Bağlantısı (Tamamlandı)
- Profil Sayfası Oluşturması (Tamamlanamadı)
- Discover Kısmına Search Özelliği Eklenmesi (Tamamlandı)
- Movie Detail Sayfası Oluşturması (Tamamlandı, yorum ekleme ve puanlama kısmı eksik)

Sprint board screenshotları: 
(Ekran görüntüleri)

## Daily Scrum: 

Daily Scrum toplantılarında her gün ilerleme ve karşılaşılan engeller tartışıldı. Firebase bağlanmada çeşitli problemler yaşandı, çözüldü hatasız çalışma sağlandı. GitHub Actions problemleri sürekli takip edilerek çözüm yolları arandı ancak henüz bulunamadı. Movie detail sayfası oluşturuldu, ancak yorum ekleme ve puanlama kısmı tamamlanamadı.


# Ürün Durumu: 

Ekran görüntüleri:

**Giriş ve Kayıt Sayfaları** 

![login](https://github.com/user-attachments/assets/2de10f67-2c14-4223-925f-608cd60f568f) ![register](https://github.com/user-attachments/assets/a4e8185b-a60b-4083-a903-4e90cc4d43b3)

**Keşfet Sayfası:** Film ismi veya türüne göre arama özelliği eklendi.

![discover_search](https://github.com/user-attachments/assets/ce135ef8-66de-41bf-94ec-36ee1aee42cb)

**Keşfet Sayfası:**  Film üzerine tıklandığında detaylı bilgi alınan ve wishliste eklenebilen sayfa.

![detail_screen](https://github.com/user-attachments/assets/f6491c76-697b-4048-9ce0-023f820644c2)

**Wishlist Sayfası:**

![wishlist](https://github.com/user-attachments/assets/dc95d99b-e304-4730-a34b-b22fc32c19b7)

# Sprint Review

Sprint Review toplantısında tamamlanan görevler gözden geçirildi. Giriş kayıt ekranı ve Firebase bağlantısı başarıyla entegre edildi. Discover kısmına arama özelliği eklendi. Movie detail sayfası oluşturuldu, ancak yorum ekleme ve puanlama kısmı eksik kaldı. Profil sayfası tamamlanamadı ve GitHub Actions ile ilgili bazı problemler yaşandı. Bu sorunların çözümü için planlar yapıldı. Ayrıca, arayüzün detaylı özelleştirme tasarımının sonraki adımlarda yapılması kararlaştırıldı.

# Sprint Retrospective

**İyi Yanlar:**

o Giriş kayıt ekranı başarılı bir şekilde tamamlandı ve basit bir arayüz iskeleti sağlandı.

o Firebase bağlantısı sorunsuz şekilde kuruldu.

o Discover kısmına eklenen arama özelliği kullanıcı deneyimini artırdı.

o Movie detail sayfası oluşturuldu ve temel fonksiyonlar eklendi.

**Geliştirilmesi Gereken Yanlar:**

o Profil sayfasının oluşturulması sürecinde daha fazla planlama ve kaynak tahsisi yapılmalı.

o GitHub Actions ile ilgili yaşanan problemler için daha fazla araştırma ve çözüm odaklı çalışma yapılmalı.

o Movie detail sayfasına yorum ekleme ve puanlama fonksiyonları eklenmeli.

o Kullanıcının wishlist'ine eklediği filmlerin kaydedilmesi ve kullanıcı yeniden giriş yaptığında bu filmlere ulaşabilmesi sağlanmalı.

**Kararlar:**

o Profil sayfasının tamamlanması için bir sonraki sprintte daha fazla zaman ve kaynak ayrılması.

o GitHub Actions problemleri için bilgi paylaşımı yapılması.

o Daily Scrum toplantılarında karşılaşılan sorunların daha detaylı ele alınması ve çözüm yollarının hızlıca uygulanması.

o Arayüz detaylı özelleştirme tasarımının sonraki sprintlerde ele alınması.

o İşbirliği arttırılmalı.


</details>

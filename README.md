# MOLER

Proje kullanıcının en basit şekilde kullanabileceği işlevsel ve basit bir ara yüze sahip olacak şekilde masaüstü uygulaması olarak tasarlanmıştır.

Sisteme yönetici, kullanıcı ve veteriner hekim olmak üzere 3 farklı türde giriş yapılmaktadır.


![Ekran görüntüsü 2022-04-20 220840](https://user-images.githubusercontent.com/98388628/164305517-892d9062-3cbb-430c-b353-c778c287d08f.png)


### Yönetici girişinde gerçekleşecek işlemler;
Verilerin güvenliği için daha önceden veri tabanı üzerinde önceden verilmiş olan yönetici yetkisine sahip kullanıcı,
veri tabanı üzerinde kayıtlı kullanıcı adı ve şifresiyle sisteme başarılı bir giriş işlemi yaptığında yönetici ekranına yönlendirilmektedir. Yönetici bu kısımda sistemi kullanan kullanıcıları görüntüleyip, yeni kullanıcılar ekleyip, kullanıcı bilgilerini güncelleyip ve kullanıcı silme işlemini gerçekleştirmektedir. Böylece programa erişip işlem gerçekleştiren kullanıcıların kontrolü yönetici kontrolünde gerçekleştirilmektedir.

![Ekran görüntüsü 2022-04-20 220919](https://user-images.githubusercontent.com/98388628/164306084-9cea84dd-49a4-4aa6-a9f1-946c4634d876.png)



### Kullanıcı girişinde gerçekleşecek işlemler;
Sistemde kullanıcı yetkisine sahip kullanıcı, kullanıcı adı ve şifresiyle başarılı bir giriş
işlemi gerçekleştirdiğinde; ana ekrana yönlendirilecek.

Kullanıcı girişi ile sistemde kontrol edilecek işlemler;
- Çiftlik bilgilerini yönetmek
- Ziyaretçi bilgilerini yönetmek
- Hayvan hareketlerini yönetmek
- Çalışan bilgilerini yönetmek
- Rasyon bilgilerini yönetmek
- Depo hareketlerini yönetmek
- Ekipman hareketlerini yönetmek
- Gelir-gider hareketlerini yönetmek
 
 
![anaekran](https://user-images.githubusercontent.com/98388628/164306118-c6c2854e-8b39-452d-b9ac-bca89abae6aa.png)

#### Ziyaretçi Yönetimi;

Kullanıcı “ZİYARETÇİ” butonuna tıkladığında; çiftlik ziyaretine gelen misafir bilgilerinin yer aldığı ekrana yönlendirilmektedir. Burada 2 farklı sekme yer alacaktır. İlk sekme misafir kayıtlarının yer alacağı ikinci sekme ise çiftliğe giriş yapan araç kayıtlarının yer alacağı 2 ayrı sekme bulunmaktadır. Çiftlik ziyaretine gelen misafirlerin kimlik bilgilerini ve ne amaçla geldiği bilgisi; Çiftliğe giriş yapan araçların plakaları ve amaçla geldiği bilgileri tutulacaktır.

![ziyaretci](https://user-images.githubusercontent.com/98388628/164374014-b43f17c5-88c6-4665-908d-6fe154967ad0.png)

#### Hayvan Yönetimi;

Kullanıcı “HAYVANLAR” butonuna tıkladığında; hayvan bilgilerinin yer aldığı sayfaya yönlendirilmektedir. Burada hayvan hareketlerine dair tüm işlemler gerçekleştirilmektedir. Çiftlik bünyesinde bulunan hayvan bilgilerinin kayıt ve güncelleme, yeni alınan veya doğan hayvan bilgilerinin kayıt ve güncelleme, satılan ya da ölen hayvan olduğunda silme veya satıldı olarak işaretleme işlemi gerçekleşmektedir. Hayvan bilgileri kaydedilirken; Hayvanların kimlik bilgileri, cinsiyeti, cinsi, yaşı, verimi, anne baba bilgileri, doğum tarihi gibi hayvanların tüm bilgileri detaylı olarak kaydedimektedir.

![hayvan](https://user-images.githubusercontent.com/98388628/164375450-4584e95a-e8d5-4f4c-9607-2a673f382c24.png)
 
#### Personel Yönetimi;

Kullanıcı “PERSONEL” butonuna tıkladığında; çiftlikte çalışan personel bilgilerinin yer aldığı sayfaya yönlendirilmektedir. Burada çiftlikte çalışanların bilgilerine dair işlemler gerçekleştirilecektir. Çiftlik çalışanlarının bilgileri görüntülenecek bu bilgiler; ad soyad, tcno, vesikalık fotoğrafı, telefon, adres, yaş, maaş, işe başlama tarihi, görevi gibi bilgileri tutulacak. Yeni çalışan kaydı, güncelleme, görevden ayrılma ve silme işlemleri de uygulanacak.
 
 ![personel](https://user-images.githubusercontent.com/98388628/164376068-8b8928f3-47f5-47e6-a43e-21705d9a16ef.png)

#### Ekipman Yönetimi;

Kullanıcı “EKİPMANLAR” butonuna tıkladığında; çiftlikte kullanılan ekipman bilgilerinin yer aldığı sayfaya yönlendirilmektedir. Burada çiftlik bünyesinde bulunan ekipman bilgileri görüntülenip yeni ekipman eklenip mevcutta bulanan ekipman bilgileri güncellenip ekipman silinebilemktedir.

![ekipman](https://user-images.githubusercontent.com/98388628/164376384-86456983-f29d-438b-948a-bdbddeb81b8e.png)

#### Rasyon Yönetimi;

Kullanıcı "RASYON" butonuna tıkladığında; Hayvanların bir günde yiyeceği besin (yem) mikartlarını girecek. Bu değerler hesaplama işlemine tabi tutularak yıllık depolanacak yem katkı maddelerinin hesaplamasında kullanılıcak.

![rasyon](https://user-images.githubusercontent.com/98388628/164376848-46a8acbc-5e03-4d3c-88ef-e6c620bdb16c.png)

#### Depo Yönetimi;

Kullanıcı “DEPOLAR” butonuna tıkladığında; depo bilgilerinin yer aldığı sayfaya yönlendirilecektir. Burada hayvanların ihtiyaçlarını karşılayacak yeterli miktar yem depolanmasını sağlamak amacıyla Saman - Kuru ot - Silaj - Fabrika yemi  adında 4 sekmeden oluşan bir sayfa karşılayacak, burada kullanıcı öngörülen hayvan kapasitelerini girerek bir yıl için yetecek deplanması gereken yem değerleri hesaplanacak. Hesaplanan veriler kaydedilerek o miktarda yem depolanması için yönlendirme işlemi yapılacak. 

![depo](https://user-images.githubusercontent.com/98388628/164378503-e8dd1783-82c4-482e-81ec-e0ea52eb2e4e.png)

#### Gelir-Gider Yönetimi;

Kullanıcı “GELİR-GİDER” butonuna tıkladığında; çiftlik gelir giderinin yer aldığı sayfaya yönlendirilecektir. Burada 3 farklı sekme bulunacaktır. 1. sekme gelir bilgilerinin kaydedildiği sekme olarak kullanıcının karşısına çıkacaktır. Burada çiftlikte üretip satılan ürün ve hayvanlar yani çiftliğe para kazandıran faktörlerin bilgileri, aynı zamanda ne kadar kazanç getirdiği bilgileri tutulmaktadır. 2. Sekmede ise çiftlik giderlerinin yer aldığı bir sekme olarak kullanıcının karşısına çıkacaktır. Burada çiftlik gider bilgileri yer alacak. Bunlar; yem maliyetleri, hayvan sağlığına harcanan ilaç maliyetleri, ekipmanlara harcanan maliyetler yani çiftlikte oluşan tüm giderler burada hesaplanacak. 3. Sekmede ise fatura sekmesi olarak kullanıcının karşısına çıkmaktadır. Burada gelir elde edilen değerler için bir fatura kesim işlemi yapılmaktadır. ve aynı zamanda bu veriler yazdırılmaktadır.

![gelir](https://user-images.githubusercontent.com/98388628/164380293-938ff2cb-564a-4d24-9fec-455a8126cc53.png)

#### Çiftlik Yönetimi;

Kullanıcı “ÇİFTLİK” butonuna tıkladığında; çiftlik bilgilerinin yer aldığı sayfaya yönlendirilecektir. Burada çiftlik bilgilerine ait; adres telefon kapasite gibi bilgileri kaydedip, görüntüleyip ve bu bilgileri güncelleyebilecektir.

![ciftlik](https://user-images.githubusercontent.com/98388628/164380884-05c8d95f-189a-4884-bc53-89df12dfe329.png)


### Veteriner Hekim girişinde gerçekleşecek işlemler;
Sistemde veteriner hekim yetkisine sahip kullanıcı, kullanıcı adı ve şifresiyle veteriner girişi ekranından başarılı bir
giriş işlemi gerçekleştirdiğinde gerçekleştirmek istediği işlemi seçeceği veteriner hekim sayfasına yönlendirilecek.

![veteriner](https://user-images.githubusercontent.com/98388628/164305829-6c3d5d34-c2a2-4cc7-95a8-29486e83a7bc.png)

#### Hayvan Tedavilerinin Yönetimi;

Veteriner hekim “TEDAVİ” butonuna tıkladığında; Hayvanların hastalık ve tedavi bilgilerinin yer aldığı sayfaya yönlendirilecektir. Burada hayvanlar üzerinde koydukları teşhis bilgilerini ve uyguladıkları tedavi bilgileri yönetilecektir.

![tedavi](https://user-images.githubusercontent.com/98388628/164381829-4a0d3334-ab83-4c7a-9cfd-9b027ffd4564.png)
 
#### Hayvanların Aşı Takvimini Yönetmek;

Veteriner hekim “AŞI” butonuna tıkladığında; Hayvanların aşı bilgilerinin yer aldığı sayfaya yönlendirilecektir. Burada hayvanlara uygulanan aşı bilgileri ve bir sonraki aşı bilgileri gibi verileri tutup yönetebilecektir.

![asi](https://user-images.githubusercontent.com/98388628/164382225-94a06601-1687-4e8d-adbb-116976174cb1.png)

#### Çiftlik Ecza Deposu Yönetimi;

Veteriner hekim “ECZA DEPOSU” butonuna tıkladığında; Çiftlikte bulunan ilaç bilgilerinin bulunduğu sayfaya yönlendirilecektir. Burada yeni ilaç kaydı ve kullanılan ilaçların silme işlemi gerçekleştirmektedir.

![ecza](https://user-images.githubusercontent.com/98388628/164382598-b34a5368-dfd9-4d92-b5a3-2579b333c7dd.png)


 


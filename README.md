# MOLER

### Projenin tasarım aşamasında sisteme yönetici, kullanıcı ve veteriner hekim olmak üzere 3 farklı türde giriş
sağlanacak.

![Ekran görüntüsü 2022-04-20 220840](https://user-images.githubusercontent.com/98388628/164305517-892d9062-3cbb-430c-b353-c778c287d08f.png)

- Yönetici girişinde gerçekleşecek işlemler;
Verilerin güvenliği için daha önceden veri tabanı üzerinde önceden verilmiş olan yönetici yetkisine sahip kullanıcı,
yönetici giriş ekranı ile veri tabanı üzerinde kayıtlı kullanıcı adı ve şifresiyle sisteme başarılı bir giriş işlemi
yaptığında yönetici ekranına yönlendirilecektir. Yönetici bu kısımda sistemi kullanan kullanıcıları görüntüleyip, yeni
kullanıcılar ekleyip, kullanıcı bilgilerini güncelleyip ve kullanıcı silme işlemini gerçekleştirecektir. Yönetici yeni bir
kullanıcı eklediğinde o kullanıcıya otomatik bir ID atanarak kullanıcı karşılıklılığın önüne geçilebilecektir. Bu işlem
sayesinde programa erişip işlem gerçekleştiren kullanıcıların kontrolü yönetici kontrolünde gerçekleştirilmiş
olacaktır.


- Kullanıcı girişinde gerçekleşecek işlemler;
Sistemde kullanıcı yetkisine sahip kullanıcı, kullanıcı adı ve şifresiyle kullanıcı girişi ekranından başarılı bir giriş
işlemi gerçekleştirdiğinde Gerçekleştirmek istediği işlemi seçebileceği ana ekrana yönlendirilecek.
Kullanıcı girişi ile sistemde kontrol edilecek işlemler;
 Çiftlik bilgilerini yönetmek
 Ziyaretçi bilgilerini yönetmek
 Hayvan hareketlerini yönetmek
 Çalışan bilgilerini yönetmek
 Depo hareketlerini yönetmek
 Ekipman hareketlerini yönetmek
 Gelir-gider hareketlerini yönetmek
 
Ana ekranın yapısı, ana ekran içerinde yönlendirme butonlarının yer aldığı bir menü sayfası olarak kullanıcının
karşısına çıkmaktadır. Menü içerisinde yer alan butonlar;
 ÇİFTLİK
 ZİYARETÇİ
 HAYVANLAR
 PERSONEL
 DEPOLAR
 EKİPMANLAR
 GELİR-GİDER
Kullanıcı “ÇİFTLİK” butonuna tıkladığında; çiftlik bilgilerinin yer aldığı sayfaya yönlendirilecektir. Burada çiftlik
bilgilerine ait; adres telefon kapasite gibi bilgileri kaydedip, görüntüleyip ve bu bilgileri güncelleyebilecektir.

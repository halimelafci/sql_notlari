create table personel
(
id char(4),
isim varchar(50),
maas int
);
insert into personel values('1001', 'Ali Can', 70000);
insert into personel values('1002', 'Veli Mert', 85000);
insert into personel values('1003', 'Ayşe Tan', 65000);
insert into personel values('1004', 'Derya Soylu', 95000);
insert into personel values('1005', 'Yavuz Bal', 80000);
insert into personel values('1006', 'Sena Beyaz', 100000);
insert into personel values('1007', 'Eena Beyaz', 100000);
insert into personel values('1008', 'Bana Bayar', 100000);
insert into personel values('1009', 'Yeliz Bakar', 100000);
/*
SELECT - LIKE koşulu
LIKE : Sorgulama yaparken belirli (pattern) kalıp ifadeleri kullanabilmemizi sağlar
ILIKE : Sorgulama yaparken büyük/küçük harfe duyarsız olarak eşleştirir
LIKE : ~~
ILIKE : ~~*
NOT LIKE : !~~
NOT ILIKE :!~~*
% --> 0 veya daha fazla karakteri belirtir.
_ --> Tek bir karakteri belirtir
*/
-- Ismi A harfi ile baslayan personeli listele
-- Ismi t harfi ile biten personeli listele
-- Isminin 2. harfi e olan personeli listeleyiniz
-- 'a' ile başlayıp 'n' ile biten personel isimlerini listeleyiniz
-- ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
-- İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
-- 2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
-- a harfi olmayan personeli listeleyin
-- 1. harfi A ve 7. harfi a olan personeli listeleyin
--Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.


--SELECT LİKE İLE --
-- Ismi A harfi ile baslayan personeli listele
--select like ile :
select isim from personel where isim  ~~ 'A%';
--selecten sonra * konunca butun bilgiler gelir bu sekilde daha spesifik.

-- Ismi t harfi ile biten personeli listele
  select isim from personel where isim ~~'%t';

-- Isminin 2. harfi e olan personeli listeleyiniz
 select isim from personel where isim ~~ '_e%';

-- 'a' ile başlayıp 'n' ile biten personel isimlerini listeleyiniz
select isim from personel where isim ~~* 'a%n';

-- ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
select isim from personel where isim ~~* '_a_u%';


-- İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
select isim from personel where isim ~~* '%er%' or isim ~~*'e%'or isim ~~*'%r';


-- 2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
 select isim from personel where isim ~~ '_e%y%' or isim ~~*'ye%';


-- a harfi olmayan personeli listeleyin
  select isim from personel where isim !~~* '%a%'

-- 1. harfi A ve 7. harfi a olan personeli listeleyin
 select isim from personel where isim ~~* 'A_____a%'


--Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
 select isim from personel where isim ~~* '%r_';

update personel
set isim ='Yeliz Bakar' where isim='Yalcin Bakar';

select * from personel;

--SİMİLAR TO İLE --

-- Ismi A harfi ile baslayan personeli listele
 select isim from personel where isim similar to 'A%'
  
-- Ismi t harfi ile biten personeli listele
  select isim from personel where isim similar to '%t'


-- Isminin 2. harfi e olan personeli listeleyiniz
 select isim from personel where isim similar to '_e%'
 
 
-- 'a' ile başlayıp 'n' ile biten personel isimlerini listeleyiniz
 select isim from personel where isim similar to 'A%n'

-- ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
 select isim from personel where isim similar to '_a_u%'


-- İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
 select isim from personel where isim similar to '%er%' or isim similar to 'e%' or isim similar to '%e' 
or  isim similar to 'r%' or isim similar to '%r'


-- 2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
 select isim from personel where isim similar to '_e%y%'

-- a harfi olmayan personeli listeleyin
 select isim from personel where isim similar to ''
 
 
-- 1. harfi A ve 7. harfi a olan personeli listeleyin
 select isim from personel where isim similar to 'A_____a%'
 
 
--Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
 select isim from personel where isim similar to '%r_'






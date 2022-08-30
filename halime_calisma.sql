CREATE TABLE calisanlar2
(
id int,
isim VARCHAR(50),
sehir VARCHAR(50),
maas int,
isyeri VARCHAR(20)
);
INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');


CREATE TABLE markalar
(
marka_id int,
marka_isim VARCHAR(20),
calisan_sayisi int
);
INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

select * from calisanlar2
select * from markalar


--calisanlar2 tablosunun max maaşlarini listeleyin. 

select max(maas) from calisanlar2;

--calisanlar2 tablosunun maaşlarin toplamini listeleyin.

select sum(maas) from calisanlar2

--calisanlar2 tablosunundaki maaş ortalamasini listeleyin.
select avg(maas) from calisanlar2

select round (avg(maas)) from calisanlar2

select round (avg(maas),2) from calisanlar2

--calisanlar2 tablosunun min maaşlarini listeleyin.

select min(maas) from calisanlar2;

--calisanlar2 tablosunda kac kisinin maaş aldigini listeleyin.

select count(maas) from calisanlar2;

--her markanin ismini calisan sayisini ve o markaya ait calisanlarin toplam maasini listeleyin

select marka_isim,calisan_sayisi,(select sum(maas)from calisanlar2 where marka_isim=isyeri )
as toplam_maas from markalar


-- Her markanin ismini, calisan sayisini ve
--o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.

select marka_isim,calisan_sayisi,(select max(maas)from calisanlar2 where marka_isim=isyeri) 
as max_maas,(select min(maas) from calisanlar2 where marka_isim=isyeri)as  min_maas from markalar;

--Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

select marka_id,marka_isim,(select count(sehir)from calisanlar2 where marka_isim=isyeri)as toplam_sehir from markalar

--interview question en yıksek ikinci maas listeleyin

select max(maas) as ikinci_maas from calisanlar2 where maas<(select max(maas)from calisanlar2)







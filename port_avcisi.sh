#! /bin/bash


echo "Hedef ip adresini giriniz:"
read ip

echo " "
echo "1-Tüm Portların Taraması"
echo "2-TCP ve Versiyon Bilgisi"
echo "3-UDP ve Versiyon Bilgisi"
echo "4-Hızlı Tarama"
echo "5-İşletim Sistemi Keşfi"
echo "6-TCP ACK Taraması"
echo "7-FIN Taraması"
echo "8-Sadece Açık Port Taraması"
echo "9-Detaylı script Taraması"
echo "10-En Çok Kullanılan Portlar Taraması"
echo #boş satır
echo "Yapmak istediğiniz tarama türünü seçiniz:"
read deger

echo "Çiktiyi Kayıt Etmek İster Misin? (E/H): " 
 read istek

echo #
echo "-----------------------------------"
echo #
echo "Tarama gerçekleştiriliyor, lütfen bekleyiniz."
echo #
echo "-----------------------------------"
echo #
if [ $istek == "E" ] || [ $istek == "e" ]
then
echo #
echo "Raporunuz rapor.txt olarak hazirlaniyor."
echo #
if [ $deger -eq 1 ]
then
nmap -p- -oN rapor.txt $ip

elif [ $deger -eq 2 ]
then
nmap -sS -sC -sV -v -oN rapor.txt $ip

elif [ $deger -eq 3 ]
then
nmap -sU -sV -v -oN rapor.txt $ip

elif [ $deger -eq 4 ]
then
nmap -oN rapor.txt $ip

elif [ $deger -eq 5 ]
then
nmap -O -v -oN rapor.txt $ip

elif [ $deger -eq 6 ]
then
nmap -sA -v -oN rapor.txt $ip

elif [ $deger -eq 7 ]
then
nmap -sF -v -oN rapor.txt $ip

elif [ $deger -eq 8 ]
then
nmap --open -v -oN rapor.txt $ip

elif [ $deger -eq 9 ]
then
nmap -A -oN rapor.txt $ip

elif [ $deger -eq 10 ]
then
nmap --top-ports 10 -oN rapor.txt $ip

else 
echo "Yanlis deger girdiniz ."
fi
fi

if [ $istek == "H" ] || [ $istek == h ]
then
if [ $deger -eq 1 ]
then
nmap -p- $ip

elif [ $deger -eq 2 ]
then
nmap -sS -sC -sV -v $ip

elif [ $deger -eq 3 ]
then
nmap -sU -sV -v $ip

elif [ $deger -eq 4 ]
then
nmap $ip

elif [ $deger -eq 5 ]
then
nmap -O -v $ip

elif [ $deger -eq 6 ]
then
nmap -sA -v $ip

elif [ $deger -eq 7 ]
then
nmap -sF -v $ip

elif [ $deger -eq 8 ]
then
nmap --open -v $ip

elif [ $deger -eq 9 ]
then
nmap -A $ip

elif [ $deger -eq 10 ]
then
nmap --top-ports 10 $ip

else 
echo "Yanlis deger girdiniz ."

fi
fi
echo #

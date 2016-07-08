set gnu=D:\tools\gnu\GetGnuWin32\gnuwin32\bin
set base=D:\freebase\bd.gz
set inst=e:\freebase\instances1.gz
set names=e:\freebase\names.gz
set m=d:\freebase\m.gz
set en=e:\freebase\en1.gz
set txt=e:\freebase\en.txt
set zip="C:\Program Files\7-Zip\7z.exe"

set needle="02ht34g"
rem set needle="location.citytown"
set needle="automotive.model"

gzip.exe -cdq %m% | head



rem | grep -vP "\x1a" |grep "@en" | cut -f 1,3 | sed -r "s/.+(m\.[^>]+)>/\1/" | sed "s/@en//" >  %txt%


rem grep "@en" e:\freebase\en3.txt > e:\freebase\en4.txt

rem tr -d "\x22" < e:\freebase\en5.txt > e:\freebase\en6.txt

rem sed -i "s/\"//g" e:\freebase\en5.txt

rem grep "^m\." %txt% > e:\freebase\en1.txt

rem gzip.exe -cdq %en% | cut -d "/" -f 5 | sed "s/>\t/\t/" > e:\freebase\en2.txt

rem grep -vE \"$ 

rem > e:\freebase\en2.txt

rem grep -v "common" | sed "s/\t/;/" > en2.txt

rem gzip.exe -cdq %inst% | grep -v "common" | sed "s/\t/;/" > inst.txt

rem gzip.exe -cdq %inst% | grep %needle% | gzip > cars.gz


rem | cut -d "/" -f 5,9 | tr -d ">" | sed "s/<http:\///"

set base=D:\freebase\bd.gz
set inst=D:\freebase\instances.gz
set names=e:\freebase\names.gz
set m=d:\freebase\m.gz
set en=e:\freebase\en.gz

set needle="02ht34g"
rem set needle="location.citytown"

set needle="automotive.model"
set zip="C:\Program Files\7-Zip\7z.exe"

rem type.instance
rem type.object.name


rem gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | cut -d "/" -f 5 | tr -d ">" | cut -d "@" -f 1 | gzip > e:\freebase\en1.gz

rem gzip.exe -cdq %inst% | cut -d "/" -f 5,9 | tr -d ">" | sed "s/<http:\///" | gzip > e:\freebase\instances1.gz

rem gzip.exe -cdq %m% | grep "@en" | gzip > %en%

gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | gzip > e:\freebase\en1.gz


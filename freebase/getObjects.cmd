set base=D:\freebase\bd.gz
set names=e:\freebase\names.gz
set m=d:\freebase\m.gz
set ru=d:\freebase\ru.gz
set en=e:\freebase\en.gz
set txt=e:\freebase\obj.txt


set needle=type.object.name

rem gzip.exe -cdq %base% | grep -vP "\x1a" | grep %needle% | cut -f 1,3 | gzip > %names%

rem gzip.exe -cdq %names% | grep "<http://rdf.freebase.com/ns/m." | grep "@en" | sed -r "s/.+(m\.[^>]+)>/\1/" | gzip > %m%

rem gzip.exe -cdq %names% | grep "<http://rdf.freebase.com/ns/m." | grep "@ru" | sed -r "s/.+(m\.[^>]+)>/\1/" | gzip > %ru%

gzip.exe -cdq %m% | grep @en$ | grep -P "^m\.[^\"]+\t\"" > %txt%

rem > %txt%

rem grep -v "^m.user" 

rem | head 

rem gzip > %m%

rem gzip.exe -cdq %base% | cut -d "/" -f 5 | tr -d ">" | cut -d "@" -f 1 | gzip > e:\freebase\en1.gz


rem gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | cut -d "/" -f 5 | tr -d ">" | cut -d "@" -f 1 | gzip > e:\freebase\en1.gz



rem gzip.exe -cdq %m% | grep "@en" | gzip > %en%

rem gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | gzip > e:\freebase\en1.gz


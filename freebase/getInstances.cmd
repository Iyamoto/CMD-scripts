set base=D:\freebase\bd.gz
set inst=e:\freebase\instances.gz
set txt=e:\freebase\inst.txt


set needle=type.instance

rem gzip.exe -cdq %base% | grep -vP "\x1a" | grep %needle% | cut -f 1,3 | gzip > %inst%

gzip.exe -cdq %inst% | head

rem gzip.exe -cdq %inst% | grep  "^base\." | grep "\tm\." 

rem gzip.exe -cdq %names% | grep "<http://rdf.freebase.com/ns/m." | grep "@en" | sed -r "s/.+(m\.[^>]+)>/\1/" | gzip > %m%

rem gzip.exe -cdq %inst% | grep  "^base\." | grep "\tm\." 

rem > %txt%


rem grep @en$  > %txt%

rem | head 

rem gzip > %m%

rem gzip.exe -cdq %base% | cut -d "/" -f 5 | tr -d ">" | cut -d "@" -f 1 | gzip > e:\freebase\en1.gz


rem gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | cut -d "/" -f 5 | tr -d ">" | cut -d "@" -f 1 | gzip > e:\freebase\en1.gz



rem gzip.exe -cdq %m% | grep "@en" | gzip > %en%

rem gzip.exe -cdq %en% | grep -vP "\x1a" | cut -f 1,3 | gzip > e:\freebase\en1.gz


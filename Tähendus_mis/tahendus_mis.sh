#!/bin/bash

mkdir tahendus_mis
 for f in `ls *.xml`
do
	myInput=${f}
	myOutput=${myInput/.xml/.txt}
	echo == in file $myInput
	echo == out file $myOutput
cat $myInput \
| sed 's/></>#</g' | tr '#' '\012' | egrep 'tahendus="mis"' | egrep 'lemma="kes"' \
> $myOutput
echo completed

done

mv *.txt tahendus_mis

exit


#see skript leiab tekstist kõik sõnad, millel on märgend tähendus=mis
# tegemist on tsüklilise skriptiga, mis korraga viib läbi samad käsud kõikidel
# xml-failidel, mis on valitud kaustas, milles skript käivitatakse
#3. rida: loob uue kausta, kuhu lõpuks väljundfailid salvestatakse
#11. rida: lisab iga märgendi vahele trellid # ja muudab need reavahetusteks,
# siis jätab alles ainult need read, kus on märgend tähendus=mis, 
# ja kus lisaks eelnevale märgendusele on ka lemma 'kes', sest märgend 
# tähendus=mis on lisatud teatud juhtudel ka muudele sõnadele
#12. rida: väljastab saadud loendi väljundfaili
#17. rida: salvestab saadud väljundfailid 3. real loodud kausta

#!/bin/bash

mkdir kes_loend
 for f in `ls *.xml`
do
	myInput=${f}
	myOutput=${myInput/.xml/.txt}
	echo == in file $myInput
	echo == out file $myOutput
cat $myInput \
| sed 's/></>#</g' | tr '#' '\012' | grep 'lemma="kes"' \
> $myOutput
echo completed

done

mv *.txt kes_loend

exit

#see skript leiab tekstist kõik sõnad, millel on märgend lemma=kes
# tegemist on tsüklilise skriptiga, mis viib korraga läbi samad käsud kõikidel
# xml-failidel, mis on valitud kaustas, milles skript käivitatakse
#3. rida: loob uue kausta, kuhu lõpuks väljundfailid salvestatakse
#11. rida: lisab iga märgendi vahele trellid # ja muudab need reavahetusteks,
# siis jätab alles ainult need read, kus on märgend lemma=kes
#12. rida: väljastab saadud loendi väljundfaili
#17. rida: salvestab saadud väljundfailid 3. real loodud kausta

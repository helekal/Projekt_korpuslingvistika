#!/bin/bash

mkdir mis_uhendid
 for f in `ls *.xml`
do
	myInput=${f}
	myOutput=${myInput/.xml/.txt}
	echo == in file $myInput
	echo == out file $myOutput
cat $myInput \
| sed 's/></>#</g' | tr '#' '\012' | grep -v 'meta="vahemärk"' > read1.txt
cat read1.txt | tail -n +2 > read2.txt
paste -d ' ' read1.txt read2.txt | grep 'lemma="mis"' \
> $myOutput
echo completed

done

rm read*
mv *.txt mis_uhendid

exit

#see skript koostab üksteisele järgnevate sõnapaaride loetelu, kus üheks sõnapaari
# osaks on sõna 'mis' (kusjuures selle skripti tulemusena võib 'mis' olla nii
# sõnapaari esimene kui ka teine osis)
# tegemist on tsüklilise skriptiga, mis viib korraga läbi samad käsud kõikidel
# xml-failidel, mis on valitud kaustas, milles skript käivitatakse
#3. rida: loob uue kausta, kuhu lõpuks väljundfailid salvestatakse
#11. rida: lisab iga märgendi vahele trellid # ja muudab need reavahetusteks,
# siis kustutab ära kõik read, kus on tegemist mingi vahemärgiga (seda on tehtud
# seetõttu, et kui keelejuht teeb kahe sõna vahel pausi, et siis saadud sõnapaari 
# üks osa ei oleks paus, vaid siiski pausile eelnenud või järgnenud sõna) ja 
# lõpuks salvestab saadud sõnade loendi faili read1.txt
#12. rida: võtab selle sama faili read1.txt sisendfailiks, kustutab esimese rea
# ja moodustab sellest uue faili read2.txt
#13. rida: liidab saadud kaks faili ridade kaupa kokku nii, et kahe sõna vahel on
# tühik ja jätab alles ainult need read, kus üheks sõnapaari osaks on sõna 'mis'
#14. rida: väljastab saadud sõnapaaride loendi lõplikku väljundfaili 
#19. rida: kustutab kaustast ära vahefailid, mis algavad sõnaga 'read'
#20. rida: salvestab saadud väljundfailid 3. real loodud kausta

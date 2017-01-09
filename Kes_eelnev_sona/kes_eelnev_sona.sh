#! /bin/bash

grep -v '^.*lemma="kes".*lemma.*$' \
| grep '^.*liik="[P]*[r]*[o]*S".*liik.*$' \
| sed 's/^\(.*" lemma="\)\([^"]*\)\(".*lemma.*$\)/\2/g' \
| sed 's/^\([^+]*\)+\([^+]*\)+*/\1\2/' \
| grep -v 'lemma="kes"' \
| sort | uniq -c | sort -nr

# Sellele skriptile eelnevalt on ühe murde kõikide keelejuhtide sõnapaaride loendid koondatud üheks failiks käsuga cat *.txt > kes_uhendid_murre.txt
# 3. rida: Et vaja on leida kes-ile eelnevad sõnad, siis kustutatakse ära read, kus "kes" on esimene sõna.
# 4. rida: Võetakse välja read, kus kes-ile eelnev sõna on kas nimisõna või asesõna (et määrata elusust).
# 5. rida: Jäetakse alles ainult lemma, muu info selle ümber eemaldatakse.
# 6. rida: Liitsõnadest kustutatakse + märk.
# 7. rida: Ainus rida, mis eelneva tulemusena valel kujul alles jäi, oli nt <sone id="l12_s9" lemma="kes" liik="ProS" vorm="sg.kom.">kellegaq</sone> <sone id="l12_s11" liik="" meta="poolik sõna">l-</sone>, see kustutatakse.
# 8. rida: Koostatakse sagedusloend kes-ile eelnevate sõnade lemmadest.



# Tulemus salvestatud vastavatesse failidesse:

#cat kes_uhendid_ida.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_ida.txt
#cat kes_uhendid_kesk.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_kesk.txt
#cat kes_uhendid_kirde.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_kirde.txt
#cat kes_uhendid_laane.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_laane.txt
#cat kes_uhendid_mulgi.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_mulgi.txt
#cat kes_uhendid_ranna.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_ranna.txt
#cat kes_uhendid_saarte.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_saarte.txt
#cat kes_uhendid_setu.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_setu.txt
#cat kes_uhendid_tartu.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_tartu.txt
#cat kes_uhendid_voru.txt | ./kes_eelnev_sona.sh > kes_eelnev_sona_voru.txt
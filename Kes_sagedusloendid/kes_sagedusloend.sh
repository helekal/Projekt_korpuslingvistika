#!/bin/bash

sed 's/\(.*vorm=\"\)\([^<]*\)/\2/g' \
| sed 's/\([^"]*\)".*$/\1/g' \
| grep -v '<sone id=' \
| sort | uniq -c | sort -nr

# Sellele skriptile eelnevalt on ühe murde kõikide keelejuhtide sõnaloendid koondatud üheks failiks käsuga cat *.txt > kes_loend_murre.txt
# 3. rida: eemaldab osa ebavajalikust infost, nt id, lemma, liigi.
# 4. rida: jätab alles ainult käände.
# 5. rida: kustutab ära sellised read, kus on sõnad, millel puudub info käändevormi kohta.
# 6. rida: koostab sagedusloendi.



# Tulemus salvestatud vastavatesse failidesse:

#cat kes_loend_ida.txt | ./kes_sagedusloned.sh > kes_sagedus_ida.txt
#cat kes_loend_kesk.txt | ./kes_sagedusloned.sh > kes_sagedus_kesk.txt
#cat kes_loend_kirde.txt | ./kes_sagedusloned.sh > kes_sagedus_kirde.txt
#cat kes_loend_laane.txt | ./kes_sagedusloned.sh > kes_sagedus_laane.txt
#cat kes_loend_mulgi.txt | ./kes_sagedusloned.sh > kes_sagedus_mulgi.txt
#cat kes_loend_ranna.txt | ./kes_sagedusloned.sh > kes_sagedus_ranna.txt
#cat kes_loend_saarte.txt | ./kes_sagedusloned.sh > kes_sagedus_saarte.txt
#cat kes_loend_setu.txt | ./kes_sagedusloned.sh > kes_sagedus_setu.txt
#cat kes_loend_tartu.txt | ./kes_sagedusloned.sh > kes_sagedus_tartu.txt
#cat kes_loend_voru.txt | ./kes_sagedusloned.sh > kes_sagedus_voru.txt
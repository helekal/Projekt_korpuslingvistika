#! /bin/bash

grep 'lemma="see"' \
| wc -l

# Sellele skriptile eelnevalt on ühe murde kõikide keelejuhtide sõnapaaride loendid koondatud üheks failiks käsuga cat *.txt > kes_uhendid_murre.t$
# 3. rida: võetakse välja read, kus on sõna "see" (mis-i ees või mis-i järel)
# 4. rida: loeb kokku kõik read failis ehk leiab, kui palju esineb failis selliseid ühendeid
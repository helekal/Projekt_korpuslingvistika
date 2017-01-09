#! /bin/bash

sed 's/></>#</g' | tr '#' '\012' \
| egrep '^<sone' | egrep -v ' meta=' \
| wc -l


#sellele skriptile eelnevalt on kõik ühe murde keelejuhtide tekstid koondatud üheks failiks
# käsuga cat *.xml > tekstid_koos_murre.txt
#3. rida: lisab trellid # kõikide märgendite vahele ja muudab trellid enteriteks,
# nii et iga märgend oleks eraldi real
#4. rida: jätab alles ainult need read, kus on tegemist sõnega
# (seega kustutab ära päise ja muu ebavajaliku info teksti sees)
#5. rida: loeb kokku kõik read failis ehk faili sõnade arvu

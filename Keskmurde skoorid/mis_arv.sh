#! /bin/bash

sed 's/></>#</g' | tr '#' '\012' \
| egrep 'lemma="mis"' \
| wc -l


#sellele skriptile eelnevalt on kõik ühe murde keelejuhtide tekstid koondatud üheks failiks
# käsuga cat *.xml > tekstid_koos_murre.txt
#3. rida: lisab trellid # kõikide märgendite vahele ja muudab trellid enteriteks,
# nii et iga märgend oleks eraldi real
#4. rida: jätab alles ainult need read, milles on lemmaks 'mis'
#5. rida: loeb kokku kõik read failis ehk faili sõnade arvu


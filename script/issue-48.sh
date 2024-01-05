for f in *.text; do
    sed -i '' \
	-e 's/[[:<:]]assembléia[[:>:]]/assembleia/g' \
	-e 's/[[:<:]]assembléias[[:>:]]/assembleias/g' \
	-e 's/[[:<:]]Assembléia[[:>:]]/Assembleia/g' \
	-e 's/[[:<:]]Assembléias[[:>:]]/Assembleias/g' \
	-e 's/[[:<:]]idéia[[:>:]]/ideia/g' \
	-e 's/[[:<:]]idéias[[:>:]]/ideias/g' \
	-e 's/[[:<:]]Idéia[[:>:]]/Ideia/g' \
	-e 's/[[:<:]]Idéias[[:>:]]/Ideias/g' \
	-e 's/[[:<:]]conseqüente[[:>:]]/consequente/g' \
	-e 's/[[:<:]]freqüentou[[:>:]]/frequentou/g' \
	-e 's/[[:<:]]freqüencia[[:>:]]/frequencia/g' \
	-e 's/[[:<:]]freqüencias[[:>:]]/frequencias/g' \
	-e 's/[[:<:]]freqüente[[:>:]]/frequente/g' \
	-e 's/[[:<:]]freqüentes[[:>:]]/frequentes/g' \
	-e 's/[[:<:]]freqüentemente[[:>:]]/frequentemente/g' \
	-e 's/[[:<:]]conseqüência[[:>:]]/consequencia/g' \
	-e 's/[[:<:]]conseqüências[[:>:]]/consequencias/g' \
	-e 's/[[:<:]]conseqüentemente[[:>:]]/consequentemente/g' \
	-e 's/[[:<:]]co-autor[[:>:]]/coautor/g' \
	-e 's/[[:<:]]co-autoria[[:>:]]/coautoria/g' \
	-e 's/[[:<:]]apóia[[:>:]]/apoia/g' $f;
done

for f in *.text; do
    sed -i '' -e 's/[[:<:]]assembléia[[:>:]]/assembleia/g' \
	-e 's/[[:<:]]assembléias[[:>:]]/assembleias/g' \
	-e 's/[[:<:]]Assembléia[[:>:]]/Assembleia/g' \
	-e 's/[[:<:]]Assembléias[[:>:]]/Assembleias/g' \
	-e 's/[[:<:]]idéia[[:>:]]/ideia/g' \
	-e 's/[[:<:]]idéias[[:>:]]/ideias/g' \
	-e 's/[[:<:]]Idéia[[:>:]]/Ideia/g' \
	-e 's/[[:<:]]Idéias[[:>:]]/Ideias/g' \
	-e 's/[[:<:]]conseqüente[[:>:]]/consequente/g' \
	-e 's/[[:<:]]freqüentou[[:>:]]/frequentou/g' \
	-e 's/[[:<:]]conseqüência[[:>:]]/consequencia/g' \
	-e 's/[[:<:]]conseqüências[[:>:]]/consequencias/g' $f;
done

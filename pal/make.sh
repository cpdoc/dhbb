
for f in $(ls ../text/*.text); do
    BASE=$(basename $f .text)
    awk 'BEGIN { text=0; } text>1 {print} /^---$/ { text = text + 1; }' $f > $BASE.raw ;
    cat $BASE.raw | /opt/palavras/por.pl --role > $BASE.role ;
    # cat $BASE.role | /opt/palavras/bin/visldep2malt.pl --lang pt | /opt/palavras/bin/extra2sem > $BASE.malt ;
done

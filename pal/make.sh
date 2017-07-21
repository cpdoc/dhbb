
for f in ../raw/*.raw; do
    BASE=$(basename $f .raw)
    cat ../raw/$BASE.raw | /opt/palavras/por.pl --role > $BASE.tmp ;
    awk -f clean.awk $BASE.tmp > $BASE.role;
    rm $BASE.tmp;
    # cat $BASE.role | /opt/palavras/bin/visldep2malt.pl --lang pt | /opt/palavras/bin/extra2sem > $BASE.malt ;
done

#!/bin/sh

echo lemma,poscode,surface
while read f; do echo $f,3,$f; done < $1

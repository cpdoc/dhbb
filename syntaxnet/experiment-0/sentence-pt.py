#!/usr/bin/python3
# -*- encoding: utf-8 -*-
import os
import glob
import sys
import json

# update this according to your local Freeling installation
sys.path.append('/home/fcbr/repos/FreeLing-4.0/APIs/python')

import freeling
import codecs
import re
import time
import csv
from datetime import date

# retokenize: do => de + o
rtk = False

ner = True
mwe = False

# update this according to your local Freeling installation
FREELINGDIR = "/home/fcbr/bin/freeling-4.0"
DATA = FREELINGDIR+"/share/freeling/"
LANG="pt"

freeling.util_init_locale("default") 

op = freeling.maco_options(LANG)

op.set_data_files( "",
                   DATA + "common/punct.dat",
                   DATA + LANG + "/dicc.src",
                   DATA + LANG + "/afixos.dat",
                   "",
                   DATA + LANG + "/locucions.dat",
                   DATA + LANG + "/np.dat",
                   "", # DATA + LANG + "/quantities.dat",
                   DATA + LANG + "/probabilitats.dat");

op.set_retok_contractions(True)

mf = freeling.maco(op)

#                     umap  num  pun  dat  dic  aff  comp  rtk mw  ner qt    prb
mf.set_active_options(False,True,True,True,True,True,False,rtk,mwe,ner,False,True)

la  = freeling.lang_ident(DATA+"common/lang_ident/ident.dat")
tk  = freeling.tokenizer(DATA+LANG+"/tokenizer.dat")
sp  = freeling.splitter(DATA+LANG+"/splitter.dat")
sid = sp.open_session()

def tag (txt,o):
    l = tk.tokenize(txt)

    ls = sp.split(sid,l,True)
    
    ss = []

    for s in ls:
        ws = s.get_words()
        o.write(txt[ws[0].get_span_start():ws[-1].get_span_finish()].replace('\n', ' '))
        o.write('\n')

for a in sys.argv[1:]:
    txt = a
    with codecs.open(txt, "r", "utf-8") as f:
        with codecs.open("{}.sentences".format(txt), "w", "utf-8") as o:
            tag(f.read(), o)

sp.close_session(sid)

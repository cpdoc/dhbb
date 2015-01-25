dhbb
====

This repo is composed of three different dictionaries:
- DHBB: Dicionario Historico-Biografico Brasileiro
- DHBPR: Dicionario Historico Biografico da Primeira Republica
- DPRRJ: Dicionário da Politica Republicana do Rio de Janeiro

Each dictionary has (at least) six directories: 
1) html
Holds the original html files for each dictionary entry.

2) md
Holds the markdown files from of each html file entry.

3) meta
Holds the processed meta data information compiled in the first paragraph of each dictionary entry.
Each meta file holds the following fields:
a) title
b) each position is comprised of 5 different fields (represented by a list, each position entry means an item of list for each field): cargoss (position), cargos_esp (detail of the position), datas_ini (initial date), datas_fim (end date), estados (state where the position was taken).
c) autor (author of the entry)

4) ref
Holds the reference text in each dictionary entry.

5) txt
Holds the text body in each dictionary entry.

6) json
Holds the son files containing the meta data, text and ref information structured in a json file.

DHBB also contains another folder called meta_flat which holds the meta data information from the old database system.
Each meta file holds the following fields:
a) layout (always ‘verbete’)
b) title (list of possible titles)
c) published (boolean)
d) edition  
e) updated (date of last update)
f) type (B for biographic or T for thematic)
g) subtype (when biographic, its subtype)
h) each position is comprised of 5 different fields (represented by a list, each position entry means an item of list for each field): codigos (id in DB), starts (starting date), ends (ending date), cities (city where the position was taken), ufs (state where the position was taken), countries (country where the position was taken), institutions (institution of the position), cargoss (name of the position), cargo_abbrevs (abbreviation of the position), cargo_types (type of position), funcoes (function related to the position), governments (governments in which the position was taken), government_inis (starting date of the government), government_ends (ending date of the government)




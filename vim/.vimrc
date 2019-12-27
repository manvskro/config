" SUMMARY
" NAVIGATION
" INTERFACES
" ABBREVIATIONS
" MAPPING
" PLUS

" XXX NAVIGATION
" enable the mouse use
set mouse=a
" copy the indentation from the previous line, when starting a new line
set autoindent
" enable wrapping
let languageall = ['h', 'c', 'cpp']
if index(languageall, &filetype)
    " zk déplace le curseur sur le repli précédent
    " za bascule l’état du repli sous le curseur
    " zo ouvre le repli sous le curseur
    " zO ouvre tout les replis sous le curseur
    " zc fermer un repli sous le curseur
    " zR Décrémente le niveau du foldlevel à 0 == tous les replis sont ouverts
    " zM ferme tout les replis
    " zd supprime tout les replis sous le curseur
    " zE supprime tout les replis
    " [z se déplacer au début du repli
    " ]z se déplacer à la fin du relpli
    set foldmethod=syntax " fold spécifié selon la syntaxe du langage
    set nofoldenable      " par défaut on laisse tout visible 
    set foldlevel=1       " on repli pour le premier niveau
endif

" XXX INTERFACE
" disable the line breaking
set nowrap
" print lines numbers
set nu
" print invisible chars
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" transforms tabulations into spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" 80rule : EPITA-style 80 red column
highlight ColorColumn ctermbg=gray
set colorcolumn=80
" 80rule : highlight if it overlength
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" XXX ABBREVIATIONS
let languagec = ['h', 'c', 'cpp']
if index(languagec, &filetype) == -1
    iab #i #include
    iab #f #include <stddef.h>#include <stdio.h>#include <stdlib.h>
    iab main int main(int argc, char *argv[]){return 0;}
    iab print printf("", );
    iab for for (int i = 0; i < ; i++){}
    iab while while (){}
endif

" XXX MAPPING
" open a new tab
map <C-n> :tabe. 
" add ; at the end of the line
map <C-;> A;<ESC>

" XXX PLUS
" activate english correction
if &spell
    map <F2> :set nospell!<CR>
else
    map <F2> :set spell!<CR>
    set spelllang=en
    hi SpellBad ctermfg=Red ctermbg=NONE
end

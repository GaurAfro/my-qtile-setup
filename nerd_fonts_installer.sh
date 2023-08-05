#!/usr/bin/env bash

sudo nala install unzip -y
if [[ ! -d ~/.local/share/fonts/ ]]; then
    mkdir -p ~/.local/share/fonts/
fi

cd /tmp
fonts=( 
"CascadiaCode"
"ComicShannsMono"
"FiraCode"
"FiraMono"
"Hack"
"Inconsolata"
"JetBrainsMono"
"Monoid"
"Mononoki"
"NerdFontsSymbolsOnly"
"OpenDyslexic"
"SourceCodePro"
"Ubuntu"
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/${font}.zip
	unzip $font -d $HOME/.local/share/fonts/$font/
    rm $font
done
fc-cache

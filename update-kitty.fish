#!/usr/bin/fish
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | vipe --suffix sh | sh /dev/stdin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/bin/kitty
ln -sf ~/.local/kitty.app/bin/kitten ~/.local/bin/kitten

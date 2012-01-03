#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

git clone git://github.com/ycyang/dotvim.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

ls -s ~/.vim/vimrc ~/.vimrc

echo "ycyang's vimrc is installed."

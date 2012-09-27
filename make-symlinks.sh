#!/bin/bash

cd "$( dirname "$0" )"

ln -s ${PWD}/emacs/main ~/.emacs
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/zsh/ ~/.zsh
ln -s ${PWD}/sublime/ ~/.config/sublime-text-2/
mkdir -p ~/.mc/ && ln -s ${PWD}/mc/ini ~/.mc/ini


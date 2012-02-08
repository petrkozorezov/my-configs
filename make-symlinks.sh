#!/bin/bash

cd "$( dirname "$0" )"

ln -s ${PWD}/emacs/main ~/.emacs
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/zsh/ ~/.zsh/
mkdir -p ~/.mc/ && ln -s ${PWD}/mc/ini ~/.mc/ini


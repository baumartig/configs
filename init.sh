# /usr/env bash

# Zuordnung internes Verzeichniss zu Link Ziel

LINKS="tmux/tmux_config .tmux.conf
nvim/init.vim .config/nvim/init.vim
zsh/zshrc .zshrc"
CURRENT=$(pwd)

#for i in $LINKS ; doi IFS=","; set $i; echo $1 $2; done
echo "$LINKS" | while read src link ; do
	mkdir -p $HOME/${link%/*}
	ln -svf $CURRENT/$src $HOME/$link
done

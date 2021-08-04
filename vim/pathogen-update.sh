#!/bin/bash
cd ~/.vim/bundle
(cat << EOF
  https://github.com/ctrlpvim/ctrlp.vim
  https://github.com/tpope/vim-fugitive
  https://github.com/tpope/vim-pathogen
  https://github.com/tpope/vim-cucumber
  https://github.com/junegunn/vim-easy-align
  https://github.com/airblade/vim-gitgutter
  https://github.com/vim-airline/vim-airline
  https://github.com/vim-airline/vim-airline-themes
  https://github.com/preservim/nerdtree.git
  https://github.com/Xuyuanp/nerdtree-git-plugin
EOF
) | \
while read rep ;do
    dir=${rep##*/}
    echo "* $dir - $rep"
    if [[ -d $dir ]] ;then
        git -C $dir pull
    else
        git clone $rep
    fi
done


#!/bin/bash
cd ~/.vim/bundle
(cat << EOF
  https://github.com/tpope/vim-fugitive
  https://github.com/tpope/vim-pathogen
  https://github.com/tpope/vim-cucumber
  https://github.com/junegunn/vim-easy-align
  https://github.com/airblade/vim-gitgutter
  https://github.com/ycm-core/YouCompleteMe
  https://github.com/vim-airline/vim-airline
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


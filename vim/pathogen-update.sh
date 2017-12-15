#!/bin/sh

cd ~/.vim/bundle
for i in `ls`; do
  cd "$i"
  echo "Package $i -> "
  git pull
  cd ..
done

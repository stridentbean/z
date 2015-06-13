#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  echo ". "`pwd`"/z.sh" >> ~/.bash_profile
  echo ". "`pwd`"/z.sh" >> ~/.zshrc
  echo ". "`pwd`"/z.sh" >> ~/.bashrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Put something like this in your $HOME/.bashrc or $HOME/.zshrc: '. /path/to/z.sh'"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo ". "`pwd`"/z.sh" >> ~/.bash_profile
  echo ". "`pwd`"/z.sh" >> ~/.zshrc
  echo ". "`pwd`"/z.sh" >> ~/.bashrc
fi
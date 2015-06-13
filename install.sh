#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  echo ". "`pwd`"/z.sh" >> ~/.bash_profile
  echo ". "`pwd`"/z.sh" >> ~/.zshrc
  echo ". "`pwd`"/z.sh" >> ~/.bashrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Do something under Linux platform
  echo "linux"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  # Do something under Windows NT platform
  echo "windows"
fi
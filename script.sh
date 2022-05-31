#!/bin/bash

# git rev-parse --short HEAD

# if [[ $(printf "0.1.r%s.%s") $(git rev-list --count HEAD) $(git rev-parse --short HEAD) == 4ece641 ]]; then
#   # echo "FLAG!"
#   printf "0.1.r%s.%s" "$(git rev-list --count HEAD)"
#   echo ""
# else
#   echo "Nothing to do here..."
# fi

git clone https://github.com/codewithjom/jdos.git
# echo $(git rev-list --count HEAD)
count=$(git log --oneline | wc -l)

if [[ $count = $(cd jdos;git rev-list --count HEAD) ]]; then

  echo "Updating..."
  # git clone https://github.com/codewithjom/jdos ~/test/jdos-update
  rm -rf jdos 

else
  
  echo "Nothing to do here"
  rm -rf jdos 
  
fi

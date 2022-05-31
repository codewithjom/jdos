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
echo $(git rev-list --count HEAD)

if [[ $(git rev-list --count HEAD) == $(cd jdos;git rev-list --count HEAD) ]]; then

  echo "Nothing to do here"
  rm jdos
else
  
  echo "Updating..."
  
fi

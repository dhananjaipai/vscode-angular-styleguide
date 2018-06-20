#!/bin/bash

ls /Applications/Visual\ Studio\ Code.app > /dev/null

if [ $? -eq 0 ]; then
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ./extensions/prettier.vsix
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ./extensions/beautify.vsix
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ./extensions/tslint.vsix
else
  echo "VSCode installation not found, try installing manually"
fi


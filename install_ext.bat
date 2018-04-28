@echo off
IF EXIST "C:\Program Files\Microsoft VS Code\bin\code" (
    SET vscode="C:\Program Files\Microsoft VS Code\bin\code"
    goto :install
)
IF EXIST "C:\Program Files (x86)\Microsoft VS Code\bin\code" (
    SET vscode="C:\Program Files (x86)\Microsoft VS Code\bin\code"
    goto :install
)
goto :skip
:install
echo "VSCode installation found, installing extensions"
%vscode% --install-extension .\extensions\beautify.vsix && %vscode% --install-extension .\extensions\prettier.vsix && %vscode% --install-extension .\extensions\tslint.vsix
:skip
echo "VSCode installation not found, try installing manually"
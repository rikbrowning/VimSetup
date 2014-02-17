$px86 = (Get-Item "Env:ProgramFiles(x86)").Value
if(!(Test-Path "$px86\Git\bin")){
    echo "Could not find git"
    exit
}
$git = "$px86\Git\bin\git.exe"
cd $HOME
If (Test-Path _vimrc){
	Remove-Item _vimrc
}
echo "Get my vimrc"
&$git clone https://github.com/rikbrowning/VimSetup.git
mv .\VimSetup\_vimrc .
rm -r -force VimSetup


echo "Move to vimfiles"

cd "$px86\Vim\vimfiles" 

echo "Clone solarized"
&$git clone https://github.com/altercation/vim-colors-solarized.git
mv .\vim-colors-solarized\colors\solarized.vim .\colors -Force
rm .\vim-colors-solarized -Force -Recurse 

echo "Clone Powershell syntax"
&$git clone https://github.com/PProvost/vim-ps1.git
mv .\vim-ps1\doc .\doc -Force
mv .\vim-ps1\ftdetect .\ftdetect -Force
mv .\vim-ps1\ftplugin .\ftplugin -Force
mv .\vim-ps1\indent .\indent -Force
mv .\vim-ps1\syntax .\syntax -Force
rm .\vim-ps1 -Recurse -Force

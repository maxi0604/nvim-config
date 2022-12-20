if [ -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]
then
  echo "packer already installed"
else
  echo "installing packer"
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [ -n $TERMUX_VERSION ]; then
  echo "termux detected. running pkg install"
  yes | pkg install rust-analyzer lua-language-server
fi

echo "installing python through pip"
pip install python-lsp-server

echo "TODO: getting newest version of JDT"

echo "starting nvim" 
nvim +'PackerSync' 
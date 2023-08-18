# fbyq-nvim

## Personal neovim configuration

## premise
```bash
yay -S unzip

yay -S anaconda

source /opt/anaconda/bin/activate root
conda create -n nvim python=3.10
source activate nvim
pip3 install neovim

sudo apt-get install python3-venv #ubuntu
yay -S nodejs npm

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

npm install -g neovim

cd ~\AppData\Local\nvim-data\site\pack\packer\start\markdown-preview.nvim
npm install
npm build
```


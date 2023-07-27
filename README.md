# fbyq-nvim

## Personal neovim configuration

## premise
```bash
yay -S anaconda

source /opt/anaconda/bin/activate root
conda create -n nvim python=3.10
source activate nvim
pip3 install neovim

yay -S nodejs npm

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

npm install -g neovim
```

# fbyq-nvim

## Personal neovim configuration

## premise
```bash
yay -S unzip

yay -S xclip 

yay -S clang

yay -S anaconda

yay -S fortune-mod

source /opt/anaconda/bin/activate root
conda create -n nvim python=3.10
conda activate nvim
pip install neovim

yay -S nodejs npm

npm config set proxy=http://127.0.0.1:7890

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

npm install -g neovim

```


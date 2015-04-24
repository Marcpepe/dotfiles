# Setting up a nice dev environment

## Dev tools (Ubuntu gnome 14.04 & 14.10)
- Install chrome and connect to your gmail account : you get all your favorites and nav bar automatically
- Install atom
- Install git / tmux / vim / zsh / curl with `sudo apt-get install git tmux vim zsh curl`
- Clone the project : `git clone git@github.com:Marcpepe/dotfiles.git .dotfiles`
- Make symbolic links : `cd .dotfiles && ./init.sh`
- Set zsh as default shell : `chsh -s /bin/zsh` (you may need to restart your computer if stopping and reoping a terminal doesn't cut it)
- Setup github ssh : 
```bash
ssh-keygen -t rsa -C "marc.perrinpelletier@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
- then add key to github (copy it first with following):
```bash
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
```

## Icons & Themes
```bash
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle numix-gtk-theme
```
then set them in tweak tool


## Troubleshooting

#### Vim : Monokai not found
```bash
mkdir ~/.vim/colors
touch ~/.vim/colors/monokai.vim
ln -s ~/.dotfiles/monokai.vim ~/.vim/colors/monokai.vim
```
then change line "colorscheme Monokai" to "colorscheme monokai" in ~/.vimrc

#### Git keeps prompting me for my password

This probably means that you have cloned https repos and not ssh

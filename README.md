# Setting up a nice dev environment

## Dev tools (Ubuntu gnome 14.04 & 14.10)
- Install chrome and connect to your gmail account : you get all your favorites and nav bar automatically
- Install atom
- Install git / tmux / vim / zsh / curl with `sudo apt-get install git tmux vim zsh curl`
- Install tmuxinator (needed if we have binary?): `sudo apt-get install ruby` then `gem install tmuxinator`
- Clone the project : `git clone git@github.com:Marcpepe/dotfiles.git .dotfiles`
- Make symbolic links : `cd .dotfiles && ./init.sh`
- Update vim plugins by starting vim and `:source ~/.vimrc` then `:PluginInstall`
- Update tmux with `tmux source ~/.tmux.conf`
- Set new font for console (required by vim airline): in console, click Edit > Set profile preference. Then change font (Powerline) and font size.
- Set C-M-Space (Toggle fullscreen), C-M-x (Close window) and C-M-b (launche browser) (C-M-t launches console by default) in "Keyboard"/"Clavier" then "Shorcuts"/"Raccourcis"
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

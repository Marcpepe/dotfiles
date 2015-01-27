# Setting up a nice dev environment

## Dev tools (Ubuntu gnome 14.04 & 14.10)
- Install chrome and connect to your gmail account : you get all your favorites and nav bar automatically
- Install atom
- Install git / tmux / vim / zsh / curl with `sudo apt-get install git tmux vim zsh curl`
- Clone the project : `git clone https://github.com/Marcpepe/dotfiles.git .dotfiles`
- Make symbolic links : `cd .dotfiles && ./init.sh`
- Set zsh as default shell : `chsh -s /bin/zsh` (you may need to restart your computer if stopping and reoping a terminal doesn't cut it)

## Icons & Themes
```bash
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle numix-gtk-theme
```
then set them in tweak tool

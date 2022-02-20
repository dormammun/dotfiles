FROM sickcodes/docker-osx

COPY . .dotfiles
COPY . .origin-dotfiles

WORKDIR .dotfiles/brew


# brew
# bash .dotfiles/brew/install.sh

# hyper
#bash .dotfiles/hyper/install.sh

# mas
#bash .dotfiles/mas/install-mas.sh
#bash .dotfiles/mas/install-packages.sh
#
# zsh
#bash .dotfiles/zsh/install-zsh.sh
# update plugins -> find list and replace
#bash .dotfiles/zsh/install-packages.sh
# if exists remove and pass; create .config if not exists
#cp bash .dotfiles/zsh/starship.toml ~/.config

# create function for config files: check file/folder and if exsits delete and copy from dontfiles

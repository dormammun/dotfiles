install_package () {
	brew ls $1
	last_exit_code=$?

	if [ $last_exit_code -ne 0 ]; then
		brew install "$1"
	fi

}

install_package "google-chrome"

install_package "notion"
install_package "spotify"

install_package "nvim"
install_package "nnn"
install_package "git"
install_package "lazygit"
install_package "tmux"
install_package "fzf"

install_package "font-fira-code"
install_package "font-fira-mono-nerd-font"
install_package "font-jetbrains-mono-nerd-font"
install_package "font-noto-nerd-font"

install_package "n"
install_package "yarn"

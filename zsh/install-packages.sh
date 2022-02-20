install_package () {
	brew ls $1
	last_exit_code=$?

	if [ $last_exit_code -ne 0 ]; then
		brew install "$1"
	fi

}

install_package "autojump"

install_package "starship"
bash ./copy-starship-config.sh

install_package "zsh-syntax-highlighting"

install_package "zsh-autosuggestions"

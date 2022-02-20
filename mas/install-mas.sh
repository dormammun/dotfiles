install_package () {
	brew ls $1
	last_exit_code=$?
	

	if [ $last_exit_code -ne 0 ]; then
		brew install "$1"
	fi

}

install_package "mas"

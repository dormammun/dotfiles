install_package () {
	hyper ls | grep -E "^$1$"
	last_exit_code=$?

	if [ $last_exit_code -ne 0 ]; then
		hyper install "$1"
	fi

}

install_package "hypercwd"
install_package "hyperlinks"
install_package "hyper-quit"

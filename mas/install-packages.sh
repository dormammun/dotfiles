install_package () {
	mas list | grep -E "$1"
	last_exit_code=$?

	if [ $last_exit_code -ne 0 ]; then
		mas install "$1"
	fi

}

# Alfred: Maybe needed installed from website
# mas install 405843582

# Magnet
install_package "441258766"

# Lightshot Screenshot
install_package "526298438"

# OS Cleaner
install_package "1084211765"

# Spark
install_package "1176895641"

# Mate Translate
install_package "1005088137"

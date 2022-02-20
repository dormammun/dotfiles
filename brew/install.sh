bash ./install-brew.sh
last_exit_code=$?

if [ $last_exit_code -eq 0 ]; then
	bash ./install-packages.sh
fi

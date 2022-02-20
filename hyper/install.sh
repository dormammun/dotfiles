bash install-hyper.sh
last_exit_code=$?

if [ $last_exit_code -eq 0 ]; then
	bash copy-config.sh
	last_exit_code=$?
fi

if [ $last_exit_code -eq 0 ]; then
	bash install-packages.sh
fi

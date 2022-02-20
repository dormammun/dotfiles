last_exit_code=0
zsh_path="$(command -v zsh)"
if [[ ! -x "$zsh_path" ]]; then
	brew install zsh
	last_exit_code=$?
fi


if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
	if [ "$last_exit_code" -eq 0 ]; then
		sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	fi
fi

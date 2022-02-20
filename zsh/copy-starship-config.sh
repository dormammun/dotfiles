if [[ ! -d "./.dump" ]]; then
	mkdir "./.dump"
fi

if [[ ! -d "$HOME/.config" ]]; then
	mkdir "$HOME/.config"
fi

if [[ -f "$HOME/.config/starship.toml" ]]; then
	mv ~/.config/starship.toml "./.dump/starship.toml-$(date)"
fi

cp ./starship.toml $HOME/.config

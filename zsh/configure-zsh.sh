if [[ ! -d "./.dump" ]]; then
	mkdir "./.dump"
fi

if [[ -f "$HOME/.zshrc" ]]; then
	cp "$HOME/.zshrc" "./.dump/.zshrc-$(date)"
fi

# make able to paste multi line
plugins_string="plugins=(docker docker-compose yarn tmux git vi-mode autojump web-search zsh-navigation-tools zsh-interactive-cd colored-man-pages zsh-autosuggestions)"

# write regexp to avoid group; make searched patter and one match without group
sed -E "s/^plugins=\(\n?(\n.+)*.*(\n.+)*/${plugins_string}/" ./.zshrc

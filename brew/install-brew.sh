brew_path="$(command -v brew)"
if [[ ! -x "$bash_path" ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${HOME}/.zprofile"
	eval "$(/opt/homebrew/bin/brew shellenv)"

	brew tap homebrew/cask-fonts
fi

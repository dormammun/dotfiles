if [[ ! -d "./.dump" ]]; then
	mkdir "./.dump"
fi

if [[ -f "$HOME/.hyper.js" ]]; then
	mv "$HOME/.hyper.js" "./.dump/.hyper.js-$(date)"
fi

echo "copy .hyper.js to $HOME"
cp ./.hyper.js $HOME

NPM=(
	n
	ntl
	now
	serve
	stylestats
	vtop
	rimraf
	alfred-emoj
	alfred-npms
	create-react-app
	hpm-cli
	alfred-apple-notes-search
	canvas-sketch-cli
	emma-cli
	emoj
	fx
	ibrew
	jscodeshift
	majestic
	np
	npkill
	partyparrot
	plop
	prettier
	release-it
	terser
	yalc
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

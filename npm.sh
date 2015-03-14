NPM=(
	grunt-cli
	npm-check-updates
	yo
	bower
	generator-kickoff
	finch
	gulp
	jshint
	jscs
	stylestats
	csslint
	tmi
	psi
	a11y
	gg
	nodemon
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

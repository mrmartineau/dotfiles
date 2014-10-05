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
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

NPM=(
	grunt-cli
	npm-check-updates
	yo
	bower
	generator-kickoff
	generator-generator
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
	jasmine
	browserify
	watchify
	phantomas
	karma-cli
	istanbul
	gh
	dploy
	vtop
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

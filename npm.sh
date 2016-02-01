NPM=(
	grunt-cli
	gulp
	webpack
	
	yo
	bower
	generator-kickoff
	generator-generator
	
	nodemon
	npm-check-updates
	
	jshint
	jscs
	stylestats
	csslint
	
	tmi
	psi
	a11y
	
	browserify
	watchify
	disc
	inherits
	
	karma-cli
	istanbul
	jasmine
	phantomas
	
	gh
	gg
	dploy
	
	vtop
	
	finch
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

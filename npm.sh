NPM=(
	grunt-cli
	gulp
	webpack

	browserify
	watchify
	disc
	inherits

	yo
	bower
	generator-kickoff
	generator-generator

	nodemon
	npm-check-updates
	ntl

	eslint
	stylestats
	csslint

	tmi
	psi
	a11y

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

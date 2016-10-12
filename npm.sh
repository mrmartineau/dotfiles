NPM=(
	grunt-cli
	webpack

	browserify
	watchify
	disc
	inherits

	yo
	generator-kickoff
	generator-generator
	
	n
	nodemon
	ntl
	npm-check
	live-server
	learnyounode
	
	now
	now-serve

	eslint
	stylestats

	tmi
	psi
	a11y

	karma-cli
	istanbul
	jasmine
	phantomas

	gh
	gg

	vtop

	finch
	
	commitizen
	
	concurrently
	parallelshell
	
	gifi
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

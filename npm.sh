NPM=(
	webpack
	gulp-cli
	grunt-cli

	yo
	generator-kickoff
	generator-generator

	n
	nodemon
	ntl
	npm-check
	live-server

	now
	serve

	prettier
	eslint
	stylestats

	tmi
	psi
	a11y
	lighthouse

	vtop

	concurrently

	rimraf

	alfred-emoj
	alfred-npms

	create-react-app

	david
)

echo "Installing global npm packages..."
npm install -g ${NPM[@]}

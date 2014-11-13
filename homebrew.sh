# kill on error
set -e

# Homebrew taps
TAPS=(
	homebrew/dupes
	homebrew/versions
	caskroom/cask
	caskroom/fonts
	caskroom/versions
	# for sitespeedio
	sitespeedio/sitespeedio
	tobli/browsertime
)

# Homebrew Formulas
FORMULAS=(
	coreutils
	moreutils
	findutils
	bash
	caskroom/cask/brew-cask
	wget --enable-iri
	z
	git
	bash-completion
	node
	tree
	mongodb
	phantomjs
	macvim --override-system-vim --custom-icons --with-lua
	imagemagick --with-webp
	nginx
	mysql
	todo-txt
	ctags
	# Python & work related stuff
	python #2.7.8
	gdal #1.11.1
	geos #3.4.2
	postgis #2.1.4
	postgresql #9.3.5
	proj #4.8.0
	elasticsearch-0.20 #0.20.6
	libmemcached #1.0.18
	redis
	lynx
	pigz
	rename
	rhino
	webkit2png
	zopfli
	p7zip
	hub
	pv
	ack
	homebrew/dupes/grep
	josegonzalez/homebrew-php/php55
	homebrew/versions/lua52
	sitespeedio
)

# Homebrew casks
# APPS=(
# 	dropbox
# 	transmission
# 	torbrowser
# 	google-chrome
# 	google-chrome-canary
# 	firefox
# 	firefox-aurora
# 	firefox-nightly
# 	webkit-nightly
# 	opera
# 	opera-next
# 	caffeine
# 	alfred
# 	dash
# 	imagealpha
# 	imageoptim
# 	iterm2
# 	sequel-pro
# 	sublime-text-3
# 	the-unarchiver
# 	sketch
# 	skype
# 	transmit
# 	virtualbox
# 	vlc
# 	betterzipql
# 	recordit
# 	transmission
# 	appcleaner
# 	qlcolorcode
# 	qlstephen
# 	qlmarkdown
# 	quicklook-json
# 	qlprettypatch
# 	quicklook-csv
# 	betterzipql
# 	webp-quicklook
# 	suspicious-package
# )

FONTS=(
	font-font-input
	font-inconsolata
	font-source-code-pro
	font-droid-sans-mono
)


# Specify the location of the apps
appdir="/Applications"

homebrew() {
	if test ! $(which brew); then
		echo "Installing homebrew..."
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
}

main() {
	brew update
	brew upgrade

	brew tap ${TAPS[@]} && brew install ${FORMULAS[@]}

	# install apps
	echo "installing apps..."
	brew cask install --appdir=$appdir ${APPS[@]}

	brew cask alfred link
	# Remove outdated versions from the cellar
	brew cleanup
}

main "$@"
exit 0

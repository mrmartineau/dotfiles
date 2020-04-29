# kill on error
set -e

# Homebrew taps
TAPS=(
	homebrew/dupes
	homebrew/versions
	homebrew/completions
	caskroom/cask
	caskroom/fonts
	caskroom/versions
)

# Homebrew Formulas
FORMULAS=(
	autojump
	awscli
	brew-cask
	brew-cask-completion
	circleci
	coreutils
	exa
	ffmpeg --with-libvpx
	findutils
	fish
	fzf
	gh
	grep
	git
	git-flow
	git-lfs
	git-standup
	hadolint
	highlight
	hub
	imagemagick --with-webp
	iperf3
	jq
	lazygit
	lua
	lynx
	mkcert
	mongodb
	moreutils
	mtr
	n
	nginx
	nmap
	node
	nspr
	nss
	openssh
	openssl
	python
	rbenv
	readline
	ripgrep
	sqlite
	starship
	telnet
	tree
	unbound
	watchman
	webp
	wget --enable-iri
	wtfutil
	yarn
	youtube-dl
)

# Homebrew casks
APPS=(
	qlcolorcode
	qlstephen
	qlmarkdown
	quicklook-json
	qlprettypatch
	quicklook-csv
	betterzipql
	qlimagesize
	webpquicklook
	quicklookase
	qlvideo
	insomnia
	google-chrome
	firefox
	postman
	visual-studio-code
	station
	slack
	tower
	spotify
	1password
	signal
	dash
	notion
	alfred
	bartender
	choosy
	fantastical
	charles
	daisydisk
	docker
	figma
	flux
	gas-mask
	hyper
	iina
	iterm2
	imageoptim
	istat-menus
	kap
	karabiner-elements
	virtualbox
	virtualbox-extension-pack
	ngrok
	balenaetcher
	transmission
	mounty
	meld
	keka
	graphiql
	suspicious-package
	aerial
	aerial
	bettertouchtool
	keepingyouawake
	tableplus
	keycastr
)

FONTS=(
	font-font-input
	font-inconsolata
	fira-code
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

	# Remove outdated versions from the cellar
	brew cleanup
}

main "$@"
exit 0

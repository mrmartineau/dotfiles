GEM=(
	sass
	jekyll
	redcarpet
	rouge
)

echo "Installing Ruby gems..."
gem install ${GEM[@]}

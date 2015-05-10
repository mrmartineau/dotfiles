GEM=(
	sass
	jekyll
	redcarpet
	rouge
	travis
)

echo "Installing Ruby gems..."
gem install ${GEM[@]}

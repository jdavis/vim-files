# Go to the directory
builtin cd ~/.vim/bundle

# Vim plugins
git clone https://github.com/scrooloose/nerdtree.git
git clone git://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/snipmate-snippets.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git
git clone git://github.com/msanders/cocoa.vim.git

# Update all of the bundles just in case.
for path in `ls ~/.vim/bundle`
do
	cd ~/.vim/bundle/$path
	echo Updating Git repository $path...
	git pull
done

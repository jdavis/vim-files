# Go to the directory
builtin cd ~/.vim/

if [[ ! -d bundle ]] ; then
	mkdir bundle
fi

builtin cd bundle

# Vim plugins
# For file browsing
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/jistr/vim-nerdtree-tabs.git

# For the best snippet functionality
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/snipmate-snippets.git

# Required for snipMate
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git

# For tab completion
git clone https://github.com/ervandew/supertab.git

# Various commenting capabilities
git clone https://github.com/scrooloose/nerdcommenter.git

# I don't use this to it's full capabilities...
#git clone https://github.com/tpope/vim-surround.git

# Matches stuff... lol
#git clone https://github.com/edsono/vim-matchit.git

# Autocloses characters
git clone https://github.com/Townk/vim-autoclose.git

# For checking the syntax of any file
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/wincent/Command-T.git

# For JavaScript checking
git clone https://github.com/hallettj/jslint.vim.git

# Vim and Git, sayyyy whatttt
git clone https://github.com/tpope/vim-fugitive.git

# Old and stale plugins
#git clone https://github.com/Raimondi/delimitMate.git
#git clone https://github.com/docunext/closetag.vim.git
#git clone https://github.com/sukima/xmledit.git
#git clone https://github.com/msanders/cocoa.vim.git
#git clone https://github.com/scrooloose/snipmate-snippets.git scrooloose-snippets
#git clone https://github.com/majutsushi/tagbar.git


# Update all of the bundles just in case.
for path in `ls ~/.vim/bundle`
do
	cd ~/.vim/bundle/$path
	echo Updating Git repository $path...
	git pull
done

# Go to the directory
builtin cd ~/.vim/

if [[ ! -d bundle ]] ; then
	mkdir bundle
fi

builtin cd bundle

# Vim plugins
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/snipmate-snippets.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/msanders/cocoa.vim.git
git clone https://github.com/ervandew/supertab.git
#git clone https://github.com/scrooloose/snipmate-snippets.git scrooloose-snippets
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/edsono/vim-matchit.git
#git clone https://github.com/Raimondi/delimitMate.git
#git clone https://github.com/docunext/closetag.vim.git
git clone https://github.com/sukima/xmledit.git
git clone https://github.com/Townk/vim-autoclose.git
git clone https://github.com/jistr/vim-nerdtree-tabs.git

# Update all of the bundles just in case.
for path in `ls ~/.vim/bundle`
do
	cd ~/.vim/bundle/$path
	echo Updating Git repository $path...
	git pull
done

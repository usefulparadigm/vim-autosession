# vim-autosession

vim-autosessoin is a tiny little plugin to save/restore vim sessions automatically. It detects a 'autosession file' from the project root directory and, if exists, runs plugin automatically.

To enable autosession, create an (empty) autosession file in your project root directory and then run vim without any arguments.

	$ touch .session.vim
 
If you change the autosession file's name(default: .session.vim), you can edit your .vimrc and enter the following command:

	set g:autosession_file = 'something.vim'

You can also specify various **sessionoptions** in your .vimrc file as usual. For more information, see `:help sessionoptions` within you Vim. 

	set sessionoptions=blank,buffers,curdir,tabpages,winpos,folds

## Installation

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/usefulparadigm/vim-autosession.git

## FAQ

None yet.

## License

Copyright (c) Useful Paradigm.  Distributed under the same terms as Vim itself.
See `:help license`.


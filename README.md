# Alejandro's Vim setup

## Dependencies
- Vim 9
  - The out-of-the-box vim installation on mac and linux is incompatible with
      some of these plugins. I recommend using `brew install vim` to install the
      latest version on mac. 
  - Installing on linux without sudo is more annoying. The workaround I found is
      making a `conda` environment and install vim using conda. Here I make an
      environment called `editor` using `python=3.14`, but you can use any name
      you want as long as your python version is >=3.10.
      ```
      conda create -n editor python=3.14
      conda activate editor
      conda install conda-forge::vim
      ```
      - If vim hangs when trying to open it inside your conda environment, you
          may have an issue with X11 forwarding. If so, you'll want to call vim
          as `vim -X` to disable X11. Consider adding this as an alias by adding the following line in your `.bashrc`: `alias vim="vim -X"`
- Fuzzy finder
  - Fuzzy finder ([fzf](https://github.com/junegunn/fzf)) is a very useful and powerful tool for executing fuzzy
      search. I highly recommend installing it to use in the terminal. [fzf.vim](https://github.com/junegunn/fzf.vim) brings fzf functionality into vim, and it benefits greatly from installing the following dependencies. 
      - Mac: `brew install bat ripgrep the_silver_searcher perl universal-ctags`
      - Conda: 
          ```
          conda config --append channels defaults
          conda config --append channels conda-forge
          conda install bat ripgrep the_silver_searcher perl universal-ctags
          ```
- Optional: Tmux
  - Mac: `brew install tmux`
  - Usually comes bundled with Linux distribution

## Installation
1. Install vim plugin manager. I use (and recommend) [vim-plug](https://github.com/junegunn/vim-plug).
2. Install vim plugins using vim-plug: open vim and execute `:PlugInstall`
3. Install fuzzy finder. Do `~/.vim/plugged/fzf/install`. 

## Plugin list
convenient functionality
- [tpope/vim-sensible](https://github.com/tpope/vim-sensible):  set baseline vim preferences
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary):  toggle comment
- [tpope/vim-surround](https://github.com/tpope/vim-surround):   auto surround selected text with delimiters
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline):  status bar at bottom of window
- [bling/vim-bufferline](https://github.com/bling/vim-bufferline):  show active buffers in status bar 
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator):  navigate between vim and tmux panes
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs):  automatically insert right delimeter when left delimeter is inserted

linting, formatting, autocomplete
- [dense-analysis/ale](https://github.com/dense-analysis/ale):  linting and formatting
- [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim):  python syntax completion
- [ervandew/supertab](https://github.com/ervandew/supertab):  tab completion

themes, display, syntax highlighting
- [preservim/nerdtree](https://github.com/preservim/nerdtree) :  file tree 
- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot):  syntax highlighting language support
- [vim/colorschemes](https://github.com/vim/colorschemes):  all vim colorschemes
- [tomasiser/vim-code-dark](https://github.com/tomasiser/vim-code-dark):  vs-code inspired theme 

git functionality
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive):  vim git commands
- [rbong/vim-flog](https://github.com/rbong/vim-flog):  shows git branch

fuzzy finder!
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)

markdown 
- [preservim/vim-markdown](https://github.com/preservim/vim-markdown):  enable folding 
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim):  markdown preview in browser 
## Resources
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/)



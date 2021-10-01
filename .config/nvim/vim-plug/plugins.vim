" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " colorscheme
    Plug 'morhetz/gruvbox'

    " css3 syntax highlight
    Plug 'hail2u/vim-css3-syntax'

    " less syntax highlight
    Plug 'groenewege/vim-less'

    " Elixir syntax highlight
    Plug 'elixir-editors/vim-elixir'

    " Shakespeare (Yesod templating)
    Plug 'pbrisbin/vim-syntax-shakespeare'

    " file tree
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

    " fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " commenting text
    Plug 'tpope/vim-commentary'

    " git wrapper
    Plug 'tpope/vim-fugitive'

    " Show indentation
    Plug 'Yggdroot/indentLine'

    " Highlink yank for a second
    Plug 'machakann/vim-highlightedyank'

    " isual local history
    Plug 'sjl/gundo.vim'

    " Surround text with something
    Plug 'tpope/vim-surround'

    " Allow repeating of custom commands like surround
    Plug 'tpope/vim-repeat'

    " Typescript autocomplete
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
    Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
    Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile && yarn build'}
    Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

    " Haskell highlighting
    Plug 'neovimhaskell/haskell-vim'

    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

    " Handlebars highlight
    Plug 'mustache/vim-mustache-handlebars'

    " Smart replace, abbreviations, convert case
    Plug 'tpope/vim-abolish'

    " Multifile replace
    Plug 'wincent/ferret'

    " Show list of merge conflicts
    Plug 'wincent/vcs-jump'

    " Functions for manipulating highlight groups
    Plug 'wincent/pinnacle'

    " Vim elm syntax
    Plug 'andys8/vim-elm-syntax'
    
    " Theme
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'


    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Ranger
    Plug 'kevinhwang91/rnvimr'

    "FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Commentary
    Plug 'tpope/vim-commentary'
    " Rainbow & Color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Startify
    Plug 'mhinz/vim-startify'
    " Snippets
    Plug 'honza/vim-snippets'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Which key
    Plug 'liuchengxu/vim-which-key'

    " Quickscope
    Plug 'unblevable/quick-scope'
    
    " prettier
    Plug 'sbdchd/neoformat'
    " c++ things
    Plug 'cdelledonne/vim-cmake'
    Plug 'antoinemadec/FixCursorHold.nvim'
    
    " | React Development
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

call plug#end()
    

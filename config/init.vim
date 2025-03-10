call plug#begin('~/.local/share/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-commentary' " Comment stuff
Plug 'tpope/vim-surround' " Allows me to change { to [ and what not
Plug 'wellle/targets.vim' " Adds more targets like [ or , - lazy but useful 
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'

Plug 'lewis6991/spellsitter.nvim' " Spellchecker
set spell spelllang=en_us  " Set language for spell checker
autocmd FileType tex setlocal spell spelllang=en_us
Plug 'dense-analysis/ale'     " Grammar and linting for LaTeX

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better parsing

"Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

noremap <C-n> :NERDTreeToggle<CR>

" Spelling correct by castel
setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Enable Treesitter (parsing) for LaTeX
let g:loaded_treesitter = 1
autocmd VimEnter * :TSInstall latex
autocmd FileType tex :setlocal syntax=off

filetype plugin indent on
syntax on " Activates syntax highlighting among other things
set background=dark " Set hg group to dark
set backspace=indent,eol,start " Fixes the backspace
set conceallevel=1 " Allows me to conceal latex syntax if not on line
set encoding=utf-8
set expandtab
set foldlevel=99
set foldmethod=indent " Fold your code.
set hidden " Work with multiple unsaved buffers.
set incsearch " Highlights as you search
set ignorecase
set smartcase
set rnu nu " Sets line numbers
set splitbelow splitright
set termguicolors " True colors term support
set viminfo+=n~/.vim/viminfo
set omnifunc=syntaxcomplete#Complete
set undodir="~/.vim/undo/"
set undofile
set laststatus=2
set showcmd
set guifont=MesloLGMDZ\ Nerd\ Font\ Bold\ 16

" Key remapping
let mapleader = ","
noremap <leader>s :source ~/.vim/vimrc<cr>
noremap <leader>e <C-w><C-w>
noremap <leader>z [s1z=
noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>f :Files<cr>
noremap <leader>c :cd %:p:h<cr>:pwd<cr>
noremap <leader><cr> o<Esc>
noremap <space>h <C-w>h
noremap <space>j <C-w>j
noremap <space>k <C-w>k
noremap <space>l <C-w>l
noremap <down> :resize +2<Cr>
noremap <up> :resize -2<cr>
noremap <right> :vertical resize +2<CR>
noremap <left> :vertical resize -2<CR>
inoremap jk <Esc>
vnoremap <leader>y "*y :let @+=@*<cr>
nmap <leader>1 :bn<cr>
nmap <leader>2 :bp<cr>
nmap <leader>3 :retab<cr>
nmap <leader>5 :call SpellToggle()<cr>

let g:gruvbox_italic='1'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
let g:gruvbox_termcolors='256'
source ~/.config/nvim/fzfConfig.vim
source ~/.config/nvim/myhighlights.vim
colorscheme gruvbox " Colorscheme

" Enable VimTeX features
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'  
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_delim_toggle_mod_list = []
let g:vimtex_matchparen_enabled = 0

" Enable continuous compilation
let g:vimtex_compiler_latexmk = {
      \ 'build_dir' : '',
      \ 'continuous' : 1,
      \}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

set conceallevel=1
let g:tex_conceal='abdmg'

" Fast compile shortcut
nmap <leader>c :VimtexCompile<CR>
nnoremap <leader>z :!zathura %:r.pdf &<CR>

" Python settings
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal autoindent

" Disable auto-pairing in LaTeX
autocmd FileType tex let b:coc_pairs_disabled = ['(', '[', '{']

" Ensure no auto-pairing issues remain
silent! iunmap (

" === Disable all CoC-related mappings safely ===
if exists('*CocActionAsync')
    augroup mygroup
        autocmd!
        " Remove all CoC commands
        autocmd CursorHold * silent call CocActionAsync('highlight')
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " Remove CoC keybindings
    silent! nunmap <silent> [g
    silent! nunmap <silent> ]g
    silent! nunmap <silent> gd
    silent! nunmap <silent> gy
    silent! nunmap <silent> gi
    silent! nunmap <silent> gr
    silent! nunmap <silent> <C-d>
    silent! nunmap <silent> <space>a
    silent! nunmap <silent> <space>e
    silent! nunmap <silent> <space>c
    silent! nunmap <silent> <space>o
    silent! nunmap <silent> <space>s
    silent! nunmap <silent> <space>j
    silent! nunmap <silent> <space>k
    silent! nunmap <silent> <space>p

    " Remove status line integration
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
endif

" Ensure CoC never loads
let g:did_coc_loaded = 1


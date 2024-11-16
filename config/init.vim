"Enable VimTeX features
let g:vimtex_view_method = 'zathura'  " Replace 'zathura' with your preferred PDF viewer
let g:vimtex_compiler_method = 'latexmk'

" Fast compile shortcut
nmap <leader>lc :VimtexCompile<CR>
nmap <leader>lv :VimtexView<CR>

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

Plug 'dylanaraps/wal'
colorscheme wal
set background=dark

call plug#begin('~/.local/share/nvim/plugged')

" LuaSnip plugin for snippets
Plug 'L3MON4D3/LuaSnip'

" nvim-cmp for autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()


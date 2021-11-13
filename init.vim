call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'glepnir/oceanic-material'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'luochen1990/rainbow'
Plug 'joshdick/onedark.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'glepnir/dashboard-nvim'
Plug 'ayu-theme/ayu-vim'
nnoremap <F5> :<C-u>call RunCode()<CR>
func! RunCode()
    exec "w" 
    if &filetype == 'c' 
		set splitbelow
		:sp
        :term ./%<
    elseif &filetype == 'cpp'
		set splitbelow
		:sp
        :term ./%<
    elseif &filetype == 'python'
		set splitbelow
		:sp
        :term python %
    elseif &filetype == 'java'
		set splitbelow
		:sp
        :term java %<
    elseif &filetype == 'sh'
		set splitbelow
		:sp
        :term bash %
    elseif &filetype == 'vim'
        :source %
	elseif &filetype == 'markdown'
		exec 'MarkdownPreview'
	elseif &filetype == 'vimwiki'
		exec 'MarkdownPreview'
    elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
    elseif &filetype == 'processing'
		set splitbelow
		:sp
        exec "term processing-java --sketch='".trim(system('pwd'))."' --output='".trim(system('pwd'))."/bin' --force --run"
    elseif &filetype == 'html'
		set splitbelow
		:sp
		:term google-chrome-stable %
    elseif &filetype == 'lua'
		set splitbelow
		:sp
		:term lua %
    else
        echo "nothing to run"
    endif
endfunc
nmap <C-q> :q<CR>
nmap <C-s> :w<CR>
nmap <C-p> :
call plug#end()
set mouse=a
set ignorecase
set nobackup
set nowritebackup
set signcolumn=number
filetype plugin on
set nu
let g:rainbow_active = 1
let g:dashboard_default_executive = 'telescope'
let g:gruvbox_transparent_bg = 1
let g:dashboard_custom_header = [
\'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀ ⢀⢀⢀⣤⣠⣿⣿⣄⣰⡀⠀ ⠀⠀ ⠀⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀ ⠀⢠⢐⠈⣦⠀⣼⣾⣟⢿⣿⣦⠀⣼⠉⢰⣴⠀⠀ ⠀⠀⠀',
\'⠀⠀⠀  ⠰⣈⠀⣹⣔⢈⣾⣾⢙⢋⢹⢙⣿⣶⠹⣰⢈⠀⣨⢦⠀⠀⠀⠀',
\'⠀⠀⠀⢀⢫⣀⣠⢙⢠⣨⣿⢿⠹⣉⢱⢸⢹⢹⢿⣿⣐⣴⢙⣀⣠⠰ ⠀⠀',
\'⠀⠀⢐⢮⣠⣰⠉⠺⣴⣽⣭⣲⣬⣬⣾⣾⣼⣼⣘⢽⣾⣦⢺⢉⣀⣠⠼⠀⠀',
\'⠀ ⢴⣠⣀⣐⢘⣼⣾⣽⣿⣿⣿⢿⣿⣿⢿⣿⣿⣿⣼⣿⣦⢀⣸⣀⣠⣤ ',
\'⠀⢠⣼⣀⣠⢠⣾⢿⢿⣿⣀⠀⠻⣌⢻⢟⣰⠟⢀⣠⣿⢿⢿⣷⣠⣀⣸⣀⠀',
\'⠀ ⢈⢰⣠⣿⣿⣠⢴⢘⢹⢿⣶⣾⣭⣭⣴⣶⣿⢫⢱⣼⣈⣿⣿⣀⢀⠉⠀',
\'⠀⠀⠉⣰⣾⢿⣹⣴⢚⢱⣼⢱⢊⡴⣸⣸⢾⢺⣈⣰⣚⢲⣼⣉⢿⣾⣎⠘⠀',
\'⠀⠀⠼⠿⠿⠿⠿⠿⢿⠿⠿⠿⠿⠿⢿⠿⢿⠿⠿⠿⢿⠿⠿⢿⠿⠿⠿⠦⠀',
\'⠀⠀⠀⠀ ⠈⢐⣀⠚⠈⣰⠠⢰⣀⣸⣀⣸⡠⠜⣎⠀⠱⣠⠈⠉⠀⠀⠀⠀',
\'⠀⠀⠀⠀⠀⠀⠀⠀⢈⢲⠡⢀⣚⢀⢨⢀⢀⣳⠠⢼⢀⠀⠈⠀⠀⠀⠀⠀⠀']
let mapleader = " "
let g:oceanic_material_transparent_background=1
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
let g:coc_global_extensions = ['coc-json','coc-vimlsp','coc-translator','coc-pyright','coc-pairs','coc-clangd']
set encoding=utf-8
set fileencodings=utf-8,gb18030,gbk
set fileencoding=utf-8
set termencoding=chinese
set background=dark
colorscheme gruvbox
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()
function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
nnoremap <LEADER>h :call Show_documentation()<CR>
let ayucolor="mirage"
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
nnoremap tt :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors
map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '! ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '! ./%<'
    elseif &filetype == 'python'
        exec '!python %'
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    endif                                                                              
endfunc 

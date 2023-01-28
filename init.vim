call plug#begin ('C:/Users/HopeHole/Appdata/Local/nvim/plugged')

"Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

lua require'lspconfig'.rust_analyzer.setup({})
lua require("init")

"let $OPENAI_API_KEY = "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"

"plugins
"let g:cpp_class_scope_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_posix_standard = 1
"let g:cpp_concepts_highlight = 1

"syntax
syntax enable
syntax on
filetype plugin indent on

"font
if has("gui_running")
    set guifont=Cascadia_Mono:h14:cANSI
endif
"sounds off
"set noerrorbells
"set novisualbell
"set vb t_vb=
"tabulation
"set expandtab
"set tabstop=4
"set shiftwidth=4
"set smartindent
"something need
"set noswapfile
"set scrolloff=8
"set complete+=kspell
"set completeopt=menuone,longest
"set clipboard=unnamedplus
"set autochdir
"set noshowmode
"set nu rnu
"set nobackup

"set nowritebackup
"set cursorline
"set mouse=a
"set number
"set ttyfast
filetype on
"set backspace=indent,eol,start

"colorscheme
"tomorrow-night-bright
"tomorrow
"evening
"koehler
"torte
"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox

"other stuff
"highlight ExtraWhitespace ctermbg=green guibg=green 
"match ExtraWhitespace /\s\+$/
"au BufWinEnter * match ExtraWhitespace /\s\+$/
"au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"au InsertLeave * match ExtraWhitespace /\s\+$/
"au BufWinLeave * call clearmatches()

"search
"set ignorecase
"set smartcase
"set hlsearch
""language
"language en_US
"let $LANG = 'ru_RUS'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"set ffs=dos
"set iminsert=0
"set imsearch=0
"setts end

"let
"let g:rustfmt_autosave = 1
"let g:rustfmt_emit_files = 1
"let g:rustfmt_fail_silently = 0
"let b:shell = 'sh'
"let g:ale_linters = {'rust': ['analyzer']}


"mappings
"imap jj <Esc>
"map <F6> :NERDTreeToggle <CR>
"nmap <C-d> :t 1 <CR>

"move highlighted line up or down

"copmilling
"nnoremap <C-F5> :w <bar> RustRun <CR>
"command Terem execute "vnew <bar> term"
"if (&ft=='cpp')
"    command Defcom execute !g++ -O2 -Wall -ansi % -o %:r main.exe && ./%:r"
"    command Sdlcom execute !g++ % -IC:/Dev/SDL_MinGW/include/SDL2 -LC:/Dev/SDL_MinGW/lib -w -Wl,-subsystem,windows -lmingw32 -lSDL2main -lSDL2 -o main"
"elseif (&ft=='rc')
"    command filetype=rc Cargotest execute w <bar> vnew <bar> term cargo test"
"endif

"COC SETTINGS

"GoTo code nav
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
"Remap apply pop menu
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<Enter>"
"Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

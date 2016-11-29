set number	"  显示行号
syntax enable
set background=dark
colorscheme solarized

set autoindent
set ruler
set showcmd
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
set nobackup
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,chinese
set laststatus=2
set cmdheight=2
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
set foldmethod=indent
set guifont=Monaco:h12

if has("gui_macvim")
	set transparency=10
	set scrolloff=3
	set guioptions-=L
	set guioptions-=r
	set guioptions-=b
endif

function SetJSIndent()
	if &filetype == 'javascript'
		:set tabstop=2
		:set softtabstop=2
		:set shiftwidth=2
	else 
		:set tabstop=4
		:set softtabstop=4
		:set shiftwidth=4
	endif
endfunction
autocmd FileType * call SetJSIndent()

" ===========================================
"  Neovim LSP configuration 
"  https://github.com/neovim/nvim-lspconfig
" ===========================================

" it seems ok to run alongside of vim-go
lua require'lspconfig'.gopls.setup{}

"  Lua LSP configuration 

lua require'lspconfig'.sumneko_lua.setup{}

" ----------------------------------------------------------------

" ===========================
"  Tagbar (not used ATM)
"  https://github.com/preservim/tagbar
" ===========================

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
" nmap <leader>t :TagbarToggle<CR>

" ----------------------------------------------------------------


" ===========================
"  MISC
" ===========================

let mapleader = ","

" save file content before running any :* command
set autowrite

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set number

" ===========================
"  Colors
" ===========================
set background=light
set hlsearch
highlight Search ctermbg=Gray
highlight LineNr ctermfg=Gray
syntax off

" ----------------------------------------------------------------


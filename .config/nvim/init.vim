" ===========================================
"  Neovim LSP configuration 
"  https://github.com/neovim/nvim-lspconfig
" ===========================================

" for now vim-go for Go files

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

syntax off
set number
set background=light

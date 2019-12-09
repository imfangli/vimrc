set number
autocmd Filetype stylus,vue setlocal st=2 sts=2 sw=2
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=236

"set lazyredraw
"set synmaxcol=128
"syntax sync minlines=256

filetype plugin indent on

" https://github.com/Raimondi/delimitMate/issues/176
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" https://github.com/scrooloose/nerdtree/wiki/how-do-I-get-NERDTree-to-show-dot-files
let NERDTreeShowHidden=1

" https://github.com/w0rp/ale
let g:ale_linters = {
\    'typescript': ['tslint', 'tsserver'],
\    'javascript': ['eslint'],
\}

" https://github.com/hail2u/vim-css3-syntax
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" https://github.com/Yggdroot/indentLine
let g:indentLine_color_term = 239
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1
" let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" 高亮末尾空格
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" YouCompleteMe
nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <leader>rf :YcmCompleter GoToReferences<CR>
nnoremap <leader>dr :YcmCompleter GoToDefinitionElseGoToReferences<CR>
" https://github.com/Valloric/YouCompleteMe/issues/413
let g:ycm_semantic_triggers = {
  \   'css': [ 're!^\s{2}', 're!:\s+' ],
  \   'html': [ '</' ],
  \ }
let g:ycm_filepath_blacklist = {
  \ 'html': 1,
  \ 'jsx': 1,
  \ 'xml': 1,
  \}

" Quit & Save
nmap <Leader><Leader>q :qa!<CR>
nmap <Leader>q :wqa!<CR>
nmap <Leader><Leader>w :wa<CR>

" https://github.com/mattn/emmet-vim
let g:user_emmet_install_global = 0

" https://github.com/airblade/vim-gitgutter
set updatetime=100

" https://github.com/dense-analysis/ale
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\ '\.html$': {'ale_linters': [], 'ale_fixers': []},
\}

set foldlevelstart=99

" https://github.com/posva/vim-vue
let g:vue_pre_processors = ['pug', 'scss']

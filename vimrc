call pathogen#infect()
call pathogen#helptags()

runtime macros/matchit.vim

set guifont=Monaco:h12
set ignorecase incsearch hlsearch number nocompatible
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hidden

" These settings prevent vim from leaving swap files everywhere
set backupdir=/tmp/
set directory=/tmp

" Solarized Theme Settings
if !has('gui_running')
  " This fixes an issue with tmux
  let g:solarized_visibility = "high" 
end
syntax enable
let g:solarized_contrast = "high"
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

if !has('gui_running')
  " This fixes an issue with tmux
end


autocmd FileType ruby set commentstring=#\ %s

let mapleader=','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%


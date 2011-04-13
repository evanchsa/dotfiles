set paste
set noautoindent
set nowrap
set shiftwidth=4
set tabstop=4
set expandtab

" Highlight extra and mixed whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Enable line numbering
set number

" Incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

set background=dark
colorscheme peaksea

" Configure vimdiff behavior
if &diff
    highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
    highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
    highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
    highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

    set background=light
    colorscheme peaksea

    " Move through changes quickly
    noremap <space> ]cz.
    noremap <S-space> [cz.

    noremap <C-L> :diffupdate<CR><C-L>

    " Accept yours, theirs commands
    noremap <C-a>y :1,$+1diffget 1<CR>
    noremap <C-a>t :1,$+1diffget 3<CR>

    " Get rid of folding
    set diffopt=filler
    windo set foldlevel=999999
    execute "normal \<c-w>\<c-w>"
endif


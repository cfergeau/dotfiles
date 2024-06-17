"-----------------------------------------------------------------------------
"Status Line
"-----------------------------------------------------------------------------

let g:airline_powerline_fonts = 1

set showcmd
set ruler

set statusline=

set statusline+=%f    "tail of the filename
set statusline+=%1*   "switch to User1 highlight
set statusline+=%h    "help file flag
set statusline+=%m    "modified flag
set statusline+=%r    "read only flag
set statusline+=%*\   "switch back to statusline highlight

set statusline+=%2*   "switch to User2 highlight
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]   "file format
set statusline+=%*\   "switch back to statusline highlight

set statusline+=%3*   "switch to User3 highlight
set statusline+=%y    "filetype
set statusline+=%*    "switch back to statusline highlight

set statusline+=%=    "left/right separator
set statusline+=c%c\  "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P  "percent through file

set laststatus=2      "always show statusline

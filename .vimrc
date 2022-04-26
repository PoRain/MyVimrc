" Plugin Install
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

" Set Setting
set nu

" autocmd 自动载入事件发生动作
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"

func SetTitle()
	if &filetype == 'sh'
		call setline(1,"\###################################################")
		call append(line("."), "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: MacroRa1n")
		call append(line(".")+2, "\# mail: porain@qq.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\###################################################")

	else 
		call setline(1,"/***************************************************")
		call append(line("."), " File Name: ".expand("%"))
                call append(line(".")+1, " Author: MacroRa1n")
                call append(line(".")+2, " mail: porain@qq.com")
                call append(line(".")+3, " Created Time: ".strftime("%c"))
                call append(line(".")+4, "***************************************************/")
	endif
	call append(line(".")+5,"")
	call append(line(".")+6,"")
endfunc
autocmd BufNewFile * normal G

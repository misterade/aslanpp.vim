vnoremap <buffer> <localleader>c :call CommentLine()<cr>
nnoremap <buffer> <localleader>c :<c-u>call CommentLines(getpos('.')[1])<cr>


function! CommentLines(line)
		"execute ":".getpos(a:line)[1]
		execute ":".a:line
			let old_unnamed = @@
			execute "normal! mq^y\<space>"
			let b:begin = @@
			if b:begin ==# '%'
					while b:begin ==# '%'
							" remove first char
							execute "normal! x"
							execute "normal! ^y\<space>"
							let b:begin = @@
						endwhile
				else
					execute "normal! i%"
			endif
				execute "normal! `q"

endfunction

function! CommentLine() range
		let f_line = a:firstline
		let l_line = a:lastline
		while f_line <=# l_line
				call CommentLines(f_line)
				let f_line += 1
		endwhile
"	execute f_line . "," . l_line ."s/^/%"
endfunction

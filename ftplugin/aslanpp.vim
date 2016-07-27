vnoremap <buffer> <localleader>c :call RemoveBlankLines()<cr>
nnoremap <buffer> <localleader>c :<c-u>call CommentOperator(getpos('.')[1])<cr>


function! CommentOperator(line)
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

function! RemoveBlankLines() range
		let f_line = a:firstline
		let l_line = a:lastline
		while f_line <=# l_line
				call CommentOperator(f_line)
				let f_line += 1
		endwhile
"	execute f_line . "," . l_line ."s/^/%"
endfunction

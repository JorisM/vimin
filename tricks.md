
#Commands


###Insert


`i` or `I` for start of line

`a` (insert after cursor)

`p`: paste below cursor, `P`: paste before cursor

`o`: open blank line below and go into insert mode 

###find

`fN` find the next word starting with N

`3fN` Jump forward to 3rd word with N

###copy paste
`yy` yank line

`y` yank under cursor	


###Moving
`w` Move forward by one word: `W` treat continuous code as one word

`b` Move backwards by one word


###Folding
They all start with z, because it looks like a folded piece of paper


###Copy a word
`viw` (visualy select inner word)

`yiw` (yank inner word)

###file browsing
`:e <filename>`

###Vertical/horizontal split screen

`:vsp` and `:sp`


`CTRL-w n`	Creates a new window above the current window
`CTRL-w j`	Moves the cursor to the window below the current one
`CTRL-w k`	Moves the cursor to the window above the current one
`CTRL-w s`	Splits the current window - creates a new window editing the same file as the current window
`CTRL-w o`	Make the current window the only window. Closes all other windows.

###Surround
With surround plugin: 

`ysiw]` Surround foo with [foo]
see https://github.com/tpope/vim-surround for more


###Delete from cursor to end of line

`d$`

###Change
`cw` change word

`3cw` change three words


###Undo

`u`

`ctrl + r` --> redo

###delete until <word> occurs

`c2/<word>` --> stands for change until <word>

###Help

`:h <searchterm>`, exit with `:bd` --> buffer delete

###Search and replace
`:5,12s/foo/bar/g`	 Change each 'foo' to 'bar' for all lines from line 5 to line 12 inclusive. (g stands for global, append c if you want to ask for confirmation)


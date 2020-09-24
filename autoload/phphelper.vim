function! s:createGetterAndSetter()
    " Only proceed if the line under the cursor contains a PHP variable.
    " We detect it simply by looking for a '$' character followed by a word.
    if getline('.') =~ '\$\w'
        " Yank the variable for later use
        normal! 0f$wyw
        " Jump to the end of the current block -- this usually means the
        " closing bracket of the class definition
        normal! ]}
        " Insert function signature using the yanked variable name as function name
        normal! Opublic function 0
        " Convert the first letter to uppercase
        normal! b~
        " Prepend 'get' to function name
        normal! biget
        " Append brackets for parameter list
        normal! A()
        " Add function body...
        normal! o{}
        " ...and fill it with the return statement
        normal! Oreturn $this->0;
        " Insert another function signature
        normal! jopublic function 0
        " Uppercase the first letter
        normal! b~
        " Prepend 'set' to function name
        normal! biset
        " Append brackets and insert the yanked variable as a parameter
        normal! A($0)
        " Add function body
        normal! o{}
        " Insert assignment statement
        normal! O$this->0 = $0;
        " And a return statement
        normal! oreturn $this;
        " Finally, jump back to the starting location (variable definition)
        normal! ''
    else
        echo "Not a variable"
    endif
endfunction



function! phphelper#createGetterAndSetter()
    call s:createGetterAndSetter()
endfunction


"#################################################################################
"
"       Filename:  license.vim
"
"    Description:  Inserts OpenSource licenses from inserted and auto
"                  completed data
"
"   GVIM Version:  7.0+
"
"  Configuration:  None
"
"         Author:  Andrew Kail, Knoxville, TN, U.S.A.
"          Email:  akail@utk.edu
"
"        Created:  04.11.2000
"        License:  Copyright (c) 2012-2013, Andrew Kail
"                  This program is free software; you can redistribute it and/or
"                  modify it under the terms of the GNU General Public License as
"                  published by the Free Software Foundation, version 2 of the
"                  License.
"                  This program is distributed in the hope that it will be
"                  useful, but WITHOUT ANY WARRANTY; without even the implied
"                  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
"                  PURPOSE.
"                  See the GNU General Public License version 2 for more details.
"
"------------------------------------------------------------------------------
"


" Function Oslicense will generate a license file based on user input

function! Osl()
  " Print out options available
  echo "Available Licenses:"
  echo "[1] Apache 2.0       [5] GPLv3"
  echo "[2] New BSD          [6] Lesser GPL"
  echo "[3] Simplified BSD   [7] MIT"
  echo "[4] GPLv2"



  let licnum = input("Enter lic# (1-6): ")

  " Determine filetype so information dependent on the 
  " license can be gathered 

  redir => filename
  silent! set filetype
  redir END


  if matchstr(filename,"vim") == "vim"
    let comment = '"'
  elseif matchstr(filename,"cpp") == "cpp"
    let bigcomment = "/*"
    let comment = "*"
    let endcomment = "*/"
  elseif matchstr(filename,"c") == "c"
    let bigcomment = "/*"
    let comment = "*"
    let endcomment = "*/"
  elseif matchstr(filename,"fortran") == "fortran"
    let bigcomment = "!"
    let comment = "!"
    let endcomment = "!"
  elseif matchstr(filename,"java") == "java"
    let bigcomment = "/*"
    let comment = "*"
    let endcomment = "*/"
  elseif matchstr(filename,"make") == "make"
    let bigcomment = "#"
    let comment = "#"
    let endcomment = "#"
  endif

  if licnum == "1"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/apache
  elseif licnum == "2"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    let org = input("\nOrganization's name: ")
    %s/$&\[Org/\=org/g
    .r $HOME/.vim/licenses/newBSD3
  elseif licnum == "3"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/simpBSD
  elseif licnum == "4"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/GPLv2
  elseif licnum == "5"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/GPLv3
  elseif licnum == "6"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/LesserGPL
  elseif licnum == "7"
    let name = input("\nAuthor's name: ") 
    let start = input("\nStart year: ")
    .r $HOME/.vim/licenses/MIT
  endif
  
   
  %s/$&\[Year/\=start/g
  %s/$&\[Author/\=name/g
  %s/$&\[bigc/\=bigcomment/g
  %s/$&\[comm/\=comment/g
  %s/$&\[endc/\=endcomment/g
  


endfunction

command! Osl call Osl()




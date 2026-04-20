# nvim-tex
nvim config for tex & python shortcuts pulled from various sources such as
https://castel.dev/post/lecture-notes-1/ 
https://www.ejmastnak.com/tutorials/vim-latex/vimtex/


**Python Shortcuts**
CTRL N opens Nerdtree buffer

**Copilot Shortcuts**
"CTRL + l" Completes the suggested paragraph <br>
"CTRL + k" Completes next suggested word <br>
"CTRL + q" Completes next suggested line <br>
"CTRL + ]" Cycles forward through suggestions <br>
"CTRL + [" Cycles backwards through suggestions <br>
"CTRL + e" dismisses suggestions <br>

** .Lua nvim spellchecker for .tex files**
"]s" next misspelling
"[s" previous misspelling
",sa" add word to the dictionary
",sr" remove word from the dictionary
",ss" pick the best suggestion 

**PDF management**
",c" Runs :VimtexCompile - For continous compiling <br>


**Setup a new document**
navigate to the folder and type "latexsetup"
This runs a command "alias latexsetup='cp -i ~/latex-template/{letterfonts,macros,preamble,template}.tex .'"
which lies in "~/.bashrc" so navigate to that file to modify it or add new files



**Copying Inputted files**
cp ./letterfonts.tex ./macros.tex ./preamble.tex ./template.tex ~/tp/th/s2/2

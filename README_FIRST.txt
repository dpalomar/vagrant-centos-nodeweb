START INSTRUCTIONS

Tmux is started by default.

Write the next commands:

1.- vim +PluginInstall +qall

Finish.

START A NEW WEB PROJECT

1.- cd projects
2.- mkdir name_of_the_project
3.- cd name_of_the_project
4.1- yo gulp-angular    (if you like choose among material, bootstrap, jquery or angular)
4.2- yo gulp-webapp     (if you like only Bootstrap and jquery)
Done

After that you can write some code with vim, or start gulp serve.
PS: If gulp serve returns some error, write "npm install" again (without quotes).

EXITING AND STOPPING

exit from vim: :q
exit from the dev image: run exit until you can see your host terminal
Stop the image: run "vagrat halt" (without quotes).

STARTING AGAIN

from your console run "vagrant up" and "vagrant ssh"


PS: Useful commands:
Learning Vim: http://vim-adventures.com/ (play a game and learn vim basic commands).
Vim plugins installed and commands to use: https://github.com/dpalomar/dot-vimrc

*****BE CAREFUL **** DO NOT USE CTRL+S to save documents in vim
Ctrl+S don't save documents, simply freeze the linux console in unix systems.
To unlock the terminal use CTRL+Q

Enjoy
David

:wq



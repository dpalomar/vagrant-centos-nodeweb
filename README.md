# Node.js Web Dev-Box

This a configuration project for a "Ready to go" vagrant CentOS-7 image.


## Index

1. [Installed Software](#1)
1. [Shared folder](#2)
1. [Installation and running](#3)
	1. Requirements
1. [How to start](#4)
	1. How to build the first project
	1. Example workflow
1. [Stoping the image](#5)
2. [Screenshots](#6)
3. [Installed vim plugins](#7)
4. [Ttroubleshotting](#8)
5. [FAQ](#9)
6. [License](#10)
7. [Big Warning!!!](#warning)



## <a name="1"></a>Installed software

- CentOS v7
- Node.js, npm and NVM
- Yeoman
- Grunt
- Gulp
- Bower
- generator-gulp-angular
- generator-webapp
- git
- vim with Vundle and a lot of plugins
- Tmux (with extras)
- ZSH shell (with oh-my-zsh)
- Agnoster theme by default
- Some patched fonts powerline related

## <a name="2"></a>Shared folder

There is a _sync_ folder in _/home/vagrant/projects/_

## <a name="3"></a> Installation and running

Just run `vagrant init dpalomar/nodeweb; vagrant up --provider virtualbox`

### Requirements

You need:

- Virtualbox ([http://www.virtualbox.org](http://www.virtualbox.org))
- Vagrant ([http://www.vagrantup.com](http://www.vagrantup.com))
- unix like shell (windows users look for [http://git-scm.com](http://git-scm.com))


## <a name="4"></a> How to start



1. Be sure that image is running
2. Run `vagrant ssh`

After that, **TMux** is started by default, then run next command to configure **vim**:

						vim +PluginInstall +qall

First time, vim shows up an error because no plugins have been downloaded yet. After this command the error disappears.

### How to build first web project

**NOTE:** You can build your project anywhere, so if you would use your own host system editor maybe you must create the project under `projects` directory.

There are two yeoman templates for generate projects with gulp, choose what you like:

- **gulp-angular**: allow to choose among Angular material, Bootstrap, JQuery.
- **webapp**: Use Bootstrap and JQuery

#### Example workflow

- mkdir projects/myApp
- projects/myApp (no _cd_ needed. Zsh style ;-) )
- `yo webapp`
- `git init`
- `gulp serve`
- lauch you favorite browser to `http://localhost:9000` _(if you use gulp-angular generator the port is 3000)_
- Split the window vertically to use vim editor with `ctrl+b %`
- In the new panel wtite `app/` to chage directory
- `vim home.html`
- press `i` to enter _INSERT MODE_ and write `html5` and press `TAB` twice.
- Boom! 
- press `ESC` key and `:w` to save changes
- browse to `http://localhost:9000/home.html` to see the changes.
- Modify the home.html file as you want.
- To save and quit vim press `ESC` key and `:wq`
- Press `ctrl+d` to exit from the right panel
- Press `ctrl+c` to stop _gulp serve_
- write `exit` to close session and return to your system.


## <a name="5"></a> Stopping the image

					vagrant halt

## <a name="6"></a> Screenshots

![Image capture of TMUX](https://github.com/dpalomar/vagrant-nodeweb/blob/master/images/zsh.png)
**TMUX screen capture**

![Screen capture of Vim editor](https://github.com/dpalomar/vagrant-nodeweb/blob/master/images/vim.png)
**VIM editor screen capture**

## <a name="7"></a>Installed vim plugins

- 'VundleVim/Vundle.vim'
- 'Shougo/neocomplcache'
- 'mattn/emmet-vim'
- 'jiangmiao/auto-pairs'
- 'ervandew/supertab'
- 'garbas/vim-snipmate'
- 'honza/vim-snippets'
- 'MarcWeber/vim-addon-mw-utils'
- 'tomtom/tlib_vim'
- 'derekwyatt/vim-scala'
- 'edsono/vim-matchit'
- 'yonchu/accelerated-smooth-scroll'
- 'terryma/vim-multiple-cursors'
- 'tpope/vim-surround'
- 'scrooloose/nerdcommenter'
- 'sjl/gundo.vim'
- 'godlygeek/tabular'
- 'nathanaelkane/vim-indent-guides'
- 'iwannaflytomoon/DoxygenToolkit.vim'
- 'scrooloose/nerdtree'
- 'humiaozuzu/TabBar'
- 'majutsushi/tagbar'
- 'mileszs/ack.vim'
- 'ctrlpvim/ctrlp.vim'
- 'tpope/vim-fugitive'
- 'vim-airline/vim-airline'
- 'vim-airline/vim-airline-themes'
- 'bronson/vim-trailing-whitespace'
- 'vim-scripts/a.vim'
- 'nvie/vim-togglemouse'
- '2072/PHP-Indenting-for-VIm'
- 'lepture/vim-jinja'
- 'airblade/vim-gitgutter'
- 'othree/html5.vim'
- 'pangloss/vim-javascript'
- 'kchmck/vim-coffee-script'
- 'nono/jquery.vim'
- 'CSApprox'
- 'tpope/vim-markdown'
- 'fatih/vim-go'
- 'kien/rainbow_parentheses.vim'
- 'rickharris/vim-blackboard'
- 'altercation/vim-colors-solarized'
- 'rickharris/vim-monokai'
- 'tpope/vim-vividchalk'
- 'Lokaltog/vim-distinguished'
- 'chriskempson/vim-tomorrow-theme'
- 'fisadev/fisa-vim-colorscheme'
- 'jaromero/vim-monokai-refined'
- 'ryanoasis/vim-devicons'

## <a name="8"></a>Troubleshotting

### Vim reports errors after each run

- Maybe some plugins are not downloaded. Run `:PluginInstall` inside vim

### I can't see some symbols on my terminal

- You could need install some fonts, like powerline fonts.
- By default the image install some [Nerd fonts](https://github.com/ryanoasis/nerd-fonts "Nerd Fonts"). You could use this [link](https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf): 


### I feel the environment 'slowly'

- The image runs with 1cpu and 1Gb RAM
- It is possible to add more virtual memory and cpus. Check your `vagranfile` for instructions or browse through the [Vagrant docs](https://www.vagrantup.com/docs/virtualbox/configuration.html "Vagrant docs")

### Running  `yo webapp` or `yo gulp-angular` inside `projects` folder ends with an error and gulp serve does not work fine.

1. If you are using a windows machine you need start `vagrant up` with administrator rights, because sym links.
2. Could be that not all libraries were downloaded. Run `npm install` and try again.

### <a name="warning"></a> Can I use CTRL+S to save a vim document?

* No, read below.

### After save a document in vim the terminal freezes

* Yep, If you use CTRL+S (as many editors use ) to save documents, you freeze the terminal. On Unix systems this occurs with this shortcut. Please use CTRL+Q to back the terminal to live.




## <a name="9"></a>FAQ

### Where can I learn more about TMUX?
- [Here](http://lmgtfy.com/?q=tmux+tutorial)

### Where can I learn more about ZSH?

- [Here](http://lmgtfy.com/?q=zsh+shell+%20tutorial)

### Where can I learn more about VIM commands?

- [Here](http://lmgtfy.com/?q=vim+commands)

### Where can I learn more about Gulp, Grunt, Yeoman or Node.js?

- [Here](http://lmgtfy.com/?q=node.js+yeoman+gulp+grunt+bower)

### Could I change the node version?

- Yes, just run `nvm`

### Could I modify the image and install new software like MySql?

- Of course

### Could you install a database like MySql, MariaDB, or Mongo for me?

- This image is for web developing and learning only. At the moment there are not plans to modify the image. Feel free to experiment yourself.

### Could I fork your repo and customize it?

- Of course, don't forget the attribution.

### Could I hire/consulting/blahblah you for my project?

- Write me some lines

## <a name="10"></a>License

[![Creative Commons License with attribution][2]][1]
[1]: http://creativecommons.org/licenses/by-sa/4.0/
[2]: https://i.creativecommons.org/l/by-sa/4.0/88x31.png



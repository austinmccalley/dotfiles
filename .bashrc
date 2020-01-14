#!/bin/bash
iatest=$(expr index "$-" i)

#######################################################
# SOURCED ALIAS'S AND SCRIPTS BY zachbrowne.me
#######################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
	 . /etc/bashrc
fi

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi


#Enable powerline daemon
if [ -f `which powerline-daemon` ]; then
	  powerline-daemon -q
	  POWERLINE_BASH_CONTINUATION=1
	  POWERLINE_BASH_SELECT=1
	  . /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
fi

#######################################################
# EXPORTS
#######################################################
#GPG Stuff
export GPG_TTY=$(tty)

# Disable the bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

# Allow ctrl-S for history navigation (with ctrl-R)
stty -ixon

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# Set the default editor
export EDITOR=vim
export VISUAL=vim
alias pico='edit'
alias spico='sedit'
alias nano='edit'
alias snano='sedit'

# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1
export LS_COLORS="cd=2;38;2;181;137;0;48;2;238;232;213:di=1;38;2;38;139;210:bd=1;38;2;181;137;0;48;2;238;232;213:ex=1;38;2;133;153;0:fi=0;38;2;131;148;150:or=1;38;2;220;50;47;48;2;238;232;213:pi=1;38;2;181;137;0;48;2;238;232;213:*~=0;38;2;88;110;117:ln=1;38;2;42;161;152:so=1;38;2;211;54;130;48;2;238;232;213:mi=1;38;2;220;50;47;48;2;238;232;213:no=0;38;2;131;148;150:*.m=0;38;2;131;148;150:*.p=0;38;2;131;148;150:*.c=0;38;2;131;148;150:*.o=0;38;2;88;110;117:*.z=1;38;2;220;50;47:*.r=0;38;2;131;148;150:*.t=0;38;2;131;148;150:*.h=0;38;2;131;148;150:*.d=0;38;2;131;148;150:*.a=0;38;2;131;148;150:*.vb=0;38;2;131;148;150:*.ml=0;38;2;131;148;150:*.rb=0;38;2;131;148;150:*.gz=1;38;2;220;50;47:*.td=0;38;2;131;148;150:*.cc=0;38;2;131;148;150:*.el=0;38;2;131;148;150:*.as=0;38;2;131;148;150:*.py=0;38;2;131;148;150:*.ts=0;38;2;131;148;150:*.rm=1;38;2;211;54;130:*.ui=0;38;2;131;148;150:*.fs=0;38;2;131;148;150:*.nb=0;38;2;131;148;150:*.cs=0;38;2;131;148;150:*.jl=0;38;2;131;148;150:*.hs=0;38;2;131;148;150:*.cr=0;38;2;131;148;150:*.sh=0;38;2;131;148;150:*.bc=0;38;2;88;110;117:*.cp=0;38;2;131;148;150:*.ex=0;38;2;131;148;150:*.bz=1;38;2;220;50;47:*.js=0;38;2;131;148;150:*.pp=0;38;2;131;148;150:*.ko=0;38;2;131;148;150:*.lo=0;38;2;88;110;117:*.hi=0;38;2;88;110;117:*.gv=0;38;2;131;148;150:*.so=0;38;2;131;148;150:*.ll=0;38;2;131;148;150:*.mn=0;38;2;131;148;150:*.7z=1;38;2;220;50;47:*.pm=0;38;2;131;148;150:*.go=0;38;2;131;148;150:*.la=0;38;2;88;110;117:*.xz=1;38;2;220;50;47:*.di=0;38;2;131;148;150:*.rs=0;38;2;131;148;150:*.ps=0;38;2;203;75;22:*.kt=0;38;2;131;148;150:*css=0;38;2;131;148;150:*.pl=0;38;2;131;148;150:*.hh=0;38;2;131;148;150:*.md=0;38;2;131;148;150:*.h++=0;38;2;131;148;150:*.odt=0;38;2;203;75;22:*.rtf=0;38;2;203;75;22:*.pid=0;38;2;88;110;117:*.ps1=0;38;2;131;148;150:*.php=0;38;2;131;148;150:*.dox=0;38;2;131;148;150:*.ogg=0;38;2;42;161;152:*.m4v=1;38;2;211;54;130:*.svg=0;38;2;211;54;130:*.log=0;38;2;88;110;117:*.cfg=0;38;2;131;148;150:*.img=1;38;2;220;50;47:*.pod=0;38;2;131;148;150:*.xcf=0;38;2;211;54;130:*.tif=0;38;2;211;54;130:*.ods=0;38;2;203;75;22:*.tsx=0;38;2;131;148;150:*.bin=1;38;2;220;50;47:*.idx=0;38;2;88;110;117:*.pbm=0;38;2;211;54;130:*.sxw=0;38;2;203;75;22:*.git=0;38;2;88;110;117:*TODO=1;38;2;131;148;150:*.mid=0;38;2;42;161;152:*.swp=0;38;2;88;110;117:*.gvy=0;38;2;131;148;150:*.nix=0;38;2;131;148;150:*.mli=0;38;2;131;148;150:*.bz2=1;38;2;220;50;47:*.pps=0;38;2;203;75;22:*.bsh=0;38;2;131;148;150:*.dot=0;38;2;131;148;150:*.tml=0;38;2;131;148;150:*.aux=0;38;2;88;110;117:*.bak=0;38;2;88;110;117:*.cpp=0;38;2;131;148;150:*.pkg=1;38;2;220;50;47:*.tbz=1;38;2;220;50;47:*.ppt=0;38;2;203;75;22:*.fon=0;38;2;108;113;196:*.apk=1;38;2;220;50;47:*.gif=0;38;2;211;54;130:*.htm=0;38;2;131;148;150:*.otf=0;38;2;108;113;196:*.odp=0;38;2;203;75;22:*.tex=0;38;2;131;148;150:*.cgi=0;38;2;131;148;150:*.dmg=1;38;2;220;50;47:*.swf=1;38;2;211;54;130:*.pas=0;38;2;131;148;150:*.flv=1;38;2;211;54;130:*.fnt=0;38;2;108;113;196:*.ppm=0;38;2;211;54;130:*.mp3=0;38;2;42;161;152:*.dll=0;38;2;131;148;150:*.csv=0;38;2;131;148;150:*.vim=0;38;2;131;148;150:*hgrc=0;38;2;131;148;150:*.ind=0;38;2;88;110;117:*.ics=0;38;2;203;75;22:*.mkv=1;38;2;211;54;130:*.iso=1;38;2;220;50;47:*.bat=0;38;2;131;148;150:*.txt=0;38;2;131;148;150:*.kex=0;38;2;203;75;22:*.fls=0;38;2;88;110;117:*.clj=0;38;2;131;148;150:*.cxx=0;38;2;131;148;150:*.hpp=0;38;2;131;148;150:*.zsh=0;38;2;131;148;150:*.fsi=0;38;2;131;148;150:*.csx=0;38;2;131;148;150:*.wmv=1;38;2;211;54;130:*.bmp=0;38;2;211;54;130:*.jar=1;38;2;220;50;47:*.sxi=0;38;2;203;75;22:*.kts=0;38;2;131;148;150:*.bib=0;38;2;131;148;150:*.aif=0;38;2;42;161;152:*.tcl=0;38;2;131;148;150:*.tar=1;38;2;220;50;47:*.htc=0;38;2;131;148;150:*.pgm=0;38;2;211;54;130:*.ltx=0;38;2;131;148;150:*.pdf=0;38;2;203;75;22:*.bst=0;38;2;131;148;150:*.lua=0;38;2;131;148;150:*.blg=0;38;2;88;110;117:*.ttf=0;38;2;108;113;196:*.xls=0;38;2;203;75;22:*.arj=1;38;2;220;50;47:*.ilg=0;38;2;88;110;117:*.ipp=0;38;2;131;148;150:*.exs=0;38;2;131;148;150:*.inl=0;38;2;131;148;150:*.png=0;38;2;211;54;130:*.tmp=0;38;2;88;110;117:*.def=0;38;2;131;148;150:*.inc=0;38;2;131;148;150:*.xmp=0;38;2;131;148;150:*.mp4=1;38;2;211;54;130:*.elm=0;38;2;131;148;150:*.deb=1;38;2;220;50;47:*.hxx=0;38;2;131;148;150:*.rst=0;38;2;131;148;150:*.jpg=0;38;2;211;54;130:*.bcf=0;38;2;88;110;117:*.epp=0;38;2;131;148;150:*.zip=1;38;2;220;50;47:*.bag=1;38;2;220;50;47:*.bbl=0;38;2;88;110;117:*.erl=0;38;2;131;148;150:*.com=0;38;2;131;148;150:*.yml=0;38;2;131;148;150:*.pro=0;38;2;131;148;150:*.vcd=1;38;2;220;50;47:*.tgz=1;38;2;220;50;47:*.avi=1;38;2;211;54;130:*.doc=0;38;2;203;75;22:*.ico=0;38;2;211;54;130:*.sbt=0;38;2;131;148;150:*.mov=1;38;2;211;54;130:*.wma=0;38;2;42;161;152:*.dpr=0;38;2;131;148;150:*.ini=0;38;2;131;148;150:*.mpg=1;38;2;211;54;130:*.rpm=1;38;2;220;50;47:*.wav=0;38;2;42;161;152:*.c++=0;38;2;131;148;150:*.fsx=0;38;2;131;148;150:*.rar=1;38;2;220;50;47:*.awk=0;38;2;131;148;150:*.pyc=0;38;2;88;110;117:*.asa=0;38;2;131;148;150:*.out=0;38;2;88;110;117:*.xml=0;38;2;131;148;150:*.xlr=0;38;2;203;75;22:*.toc=0;38;2;88;110;117:*.sty=0;38;2;88;110;117:*.vob=1;38;2;211;54;130:*.sql=0;38;2;131;148;150:*.exe=0;38;2;131;148;150:*.mir=0;38;2;131;148;150:*.pptx=0;38;2;203;75;22:*.flac=0;38;2;42;161;152:*.jpeg=0;38;2;211;54;130:*.diff=0;38;2;131;148;150:*.mpeg=1;38;2;211;54;130:*.toml=0;38;2;131;148;150:*.yaml=0;38;2;131;148;150:*.bash=0;38;2;131;148;150:*.less=0;38;2;131;148;150:*.psm1=0;38;2;131;148;150:*.epub=0;38;2;203;75;22:*.orig=0;38;2;88;110;117:*.conf=0;38;2;131;148;150:*.html=0;38;2;131;148;150:*.tbz2=1;38;2;220;50;47:*.dart=0;38;2;131;148;150:*.psd1=0;38;2;131;148;150:*.lock=0;38;2;88;110;117:*.xlsx=0;38;2;203;75;22:*.make=0;38;2;131;148;150:*.hgrc=0;38;2;131;148;150:*.rlib=0;38;2;88;110;117:*.docx=0;38;2;203;75;22:*.java=0;38;2;131;148;150:*.json=0;38;2;131;148;150:*.lisp=0;38;2;131;148;150:*.purs=0;38;2;131;148;150:*.h264=1;38;2;211;54;130:*.fish=0;38;2;131;148;150:*.patch=0;38;2;131;148;150:*README=0;38;2;131;148;150:*.toast=1;38;2;220;50;47:*.shtml=0;38;2;131;148;150:*.xhtml=0;38;2;131;148;150:*.cmake=0;38;2;131;148;150:*.mdown=0;38;2;131;148;150:*.class=0;38;2;88;110;117:*passwd=0;38;2;131;148;150:*.dyn_o=0;38;2;88;110;117:*.swift=0;38;2;131;148;150:*.ipynb=0;38;2;131;148;150:*shadow=0;38;2;131;148;150:*.scala=0;38;2;131;148;150:*.cabal=0;38;2;131;148;150:*.cache=0;38;2;88;110;117:*.flake8=0;38;2;131;148;150:*TODO.md=1;38;2;131;148;150:*COPYING=0;38;2;131;148;150:*.gradle=0;38;2;131;148;150:*LICENSE=0;38;2;131;148;150:*INSTALL=0;38;2;131;148;150:*.dyn_hi=0;38;2;88;110;117:*.groovy=0;38;2;131;148;150:*.ignore=0;38;2;131;148;150:*.matlab=0;38;2;131;148;150:*.config=0;38;2;131;148;150:*setup.py=0;38;2;131;148;150:*Makefile=0;38;2;131;148;150:*.gemspec=0;38;2;131;148;150:*.desktop=0;38;2;131;148;150:*Doxyfile=0;38;2;131;148;150:*TODO.txt=1;38;2;131;148;150:*README.md=0;38;2;131;148;150:*COPYRIGHT=0;38;2;131;148;150:*.cmake.in=0;38;2;131;148;150:*.rgignore=0;38;2;131;148;150:*.kdevelop=0;38;2;131;148;150:*.markdown=0;38;2;131;148;150:*.fdignore=0;38;2;131;148;150:*configure=0;38;2;131;148;150:*INSTALL.md=0;38;2;131;148;150:*SConstruct=0;38;2;131;148;150:*Dockerfile=0;38;2;131;148;150:*CODEOWNERS=0;38;2;131;148;150:*.gitconfig=0;38;2;131;148;150:*README.txt=0;38;2;131;148;150:*.scons_opt=0;38;2;88;110;117:*.gitignore=0;38;2;131;148;150:*SConscript=0;38;2;131;148;150:*.gitmodules=0;38;2;131;148;150:*.travis.yml=0;38;2;131;148;150:*MANIFEST.in=0;38;2;131;148;150:*Makefile.am=0;38;2;131;148;150:*Makefile.in=0;38;2;88;110;117:*.synctex.gz=0;38;2;88;110;117:*LICENSE-MIT=0;38;2;131;148;150:*.fdb_latexmk=0;38;2;88;110;117:*appveyor.yml=0;38;2;131;148;150:*CONTRIBUTORS=0;38;2;131;148;150:*configure.ac=0;38;2;131;148;150:*.applescript=0;38;2;131;148;150:*.clang-format=0;38;2;131;148;150:*INSTALL.md.txt=0;38;2;131;148;150:*CMakeCache.txt=0;38;2;88;110;117:*LICENSE-APACHE=0;38;2;131;148;150:*.gitattributes=0;38;2;131;148;150:*CMakeLists.txt=0;38;2;131;148;150:*CONTRIBUTORS.md=0;38;2;131;148;150:*.sconsign.dblite=0;38;2;88;110;117:*CONTRIBUTORS.txt=0;38;2;131;148;150:*requirements.txt=0;38;2;131;148;150:*package-lock.json=0;38;2;88;110;117:ow=4;37:tw=4;37:"

#export GREP_OPTIONS='--color=auto' #deprecated
alias grep="grep $GREP_OPTIONS"
unset GREP_OPTIONS

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#######################################################
# MACHINE SPECIFIC ALIAS'S
#######################################################

# Alias's for SSH
alias engr='ssh mccallea@access.engr.oregonstate.edu -i ~/keys/id_ecdsa'
alias randoalgo='ssh -i ~/keys/aws-mccallea.pem ec2-user@ec2-52-91-249-8.compute-1.amazonaws.com'

# Alias's to change the directory
alias web='cd /var/www/html'

# Alias's to mount ISO files
# mount -o loop /home/NAMEOFISO.iso /home/ISOMOUNTDIR/
# umount /home/NAMEOFISO.iso
# (Both commands done as root only.)

#######################################################
# GENERAL ALIAS'S
#######################################################
# To temporarily bypass an alias, we preceed the command with a \
# EG: the ls command is aliased, but to use the normal ls command you would type \ls

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Edit this .bashrc file
alias ebrc='edit ~/.bashrc'

# Show help for this .bashrc file
alias hlp='less ~/.bashrc_help'

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# Alias's to modified commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -iv'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias apt-get='sudo apt-get'
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# cd into the old directory
alias bd='cd "$OLDPWD"'

# Remove a directory and all files
alias rmd='/bin/rm  --recursive --force --verbose '

# Alias's for multiple directory listing commands
alias la='ls -Alh' # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Search command line history
alias h="history | grep "

# Search running processes
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files in the current folder
alias f="find . | grep "

# Count all files (recursively) in the current folder
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"

# Show current network connections to the server
alias ipview="netstat -anpl | grep :80 | awk {'print \$5'} | cut -d\":\" -f1 | sort | uniq -c | sort -n | sed -e 's/^ *//' -e 's/ *\$//'"

# Show open ports
alias openports='netstat -nape --inet'

# Alias's for safe and forced reboots
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Show all logs in /var/log
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"

# SHA1
alias sha1='openssl sha1'

# Git 
alias gita="git add -A"


#######################################################
# SPECIAL FUNCTIONS
#######################################################

# Use the best version of pico installed
edit ()
{
	if [ "$(type -t jpico)" = "file" ]; then
		# Use JOE text editor http://joe-editor.sourceforge.net/
		jpico -nonotice -linums -nobackups "$@"
	elif [ "$(type -t nano)" = "file" ]; then
		nano -c "$@"
	elif [ "$(type -t pico)" = "file" ]; then
		pico "$@"
	else
		vim "$@"
	fi
}
sedit ()
{
	if [ "$(type -t jpico)" = "file" ]; then
		# Use JOE text editor http://joe-editor.sourceforge.net/
		sudo jpico -nonotice -linums -nobackups "$@"
	elif [ "$(type -t nano)" = "file" ]; then
		sudo nano -c "$@"
	elif [ "$(type -t pico)" = "file" ]; then
		sudo pico "$@"
	else
		sudo vim "$@"
	fi
}

# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# Searches for text in all files in the current folder
ftext ()
{
	# -i case-insensitive
	# -I ignore binary files
	# -H causes filename to be printed
	# -r recursive search
	# -n causes line number to be printed
	# optional: -F treat search term as a literal, not a regular expression
	# optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
	grep -iIHrn --color=always "$1" . | less -r
}

# Copy file with a progress bar
cpp()
{
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
	| awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}

# Copy and go to the directory
cpg ()
{
	if [ -d "$2" ];then
		cp $1 $2 && cd $2
	else
		cp $1 $2
	fi
}

# Move and go to the directory
mvg ()
{
	if [ -d "$2" ];then
		mv $1 $2 && cd $2
	else
		mv $1 $2
	fi
}

# Create and go to the directory
mkdirg ()
{
	mkdir -p $1
	cd $1
}

# Goes up a specified number of directories  (i.e. up 4)
up ()
{
	local d=""
	limit=$1
	for ((i=1 ; i <= limit ; i++))
		do
			d=$d/..
		done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}

#Automatically do an ls after each cd
 cd ()
 {
 	if [ -n "$1" ]; then
 		builtin cd "$@" && ls
 	else
 		builtin cd ~ && ls
 	fi
 }

# Returns the last 2 fields of the working directory
pwdtail ()
{
	pwd|awk -F/ '{nlast = NF -1;print $nlast"/"$NF}'
}

# Show the current distribution
distribution ()
{
	local dtype
	# Assume unknown
	dtype="unknown"
	
	# First test against Fedora / RHEL / CentOS / generic Redhat derivative
	if [ -r /etc/rc.d/init.d/functions ]; then
		source /etc/rc.d/init.d/functions
		[ zz`type -t passed 2>/dev/null` == "zzfunction" ] && dtype="redhat"
	
	# Then test against SUSE (must be after Redhat,
	# I've seen rc.status on Ubuntu I think? TODO: Recheck that)
	elif [ -r /etc/rc.status ]; then
		source /etc/rc.status
		[ zz`type -t rc_reset 2>/dev/null` == "zzfunction" ] && dtype="suse"
	
	# Then test against Debian, Ubuntu and friends
	elif [ -r /lib/lsb/init-functions ]; then
		source /lib/lsb/init-functions
		[ zz`type -t log_begin_msg 2>/dev/null` == "zzfunction" ] && dtype="debian"
	
	# Then test against Gentoo
	elif [ -r /etc/init.d/functions.sh ]; then
		source /etc/init.d/functions.sh
		[ zz`type -t ebegin 2>/dev/null` == "zzfunction" ] && dtype="gentoo"
	
	# For Mandriva we currently just test if /etc/mandriva-release exists
	# and isn't empty (TODO: Find a better way :)
	elif [ -s /etc/mandriva-release ]; then
		dtype="mandriva"

	# For Slackware we currently just test if /etc/slackware-version exists
	elif [ -s /etc/slackware-version ]; then
		dtype="slackware"

	fi
	echo $dtype
}

# Show the current version of the operating system
ver ()
{
	local dtype
	dtype=$(distribution)

	if [ $dtype == "redhat" ]; then
		if [ -s /etc/redhat-release ]; then
			cat /etc/redhat-release && uname -a
		else
			cat /etc/issue && uname -a
		fi
	elif [ $dtype == "suse" ]; then
		cat /etc/SuSE-release
	elif [ $dtype == "debian" ]; then
		lsb_release -a
		# sudo cat /etc/issue && sudo cat /etc/issue.net && sudo cat /etc/lsb_release && sudo cat /etc/os-release # Linux Mint option 2
	elif [ $dtype == "gentoo" ]; then
		cat /etc/gentoo-release
	elif [ $dtype == "mandriva" ]; then
		cat /etc/mandriva-release
	elif [ $dtype == "slackware" ]; then
		cat /etc/slackware-version
	else
		if [ -s /etc/issue ]; then
			cat /etc/issue
		else
			echo "Error: Unknown distribution"
			exit 1
		fi
	fi
}

# Automatically install the needed support files for this .bashrc file
install_bashrc_support ()
{
	local dtype
	dtype=$(distribution)

	if [ $dtype == "redhat" ]; then
		sudo yum install multitail tree joe
	elif [ $dtype == "suse" ]; then
		sudo zypper install multitail
		sudo zypper install tree
		sudo zypper install joe
	elif [ $dtype == "debian" ]; then
		sudo apt-get install multitail tree joe
	elif [ $dtype == "gentoo" ]; then
		sudo emerge multitail
		sudo emerge tree
		sudo emerge joe
	elif [ $dtype == "mandriva" ]; then
		sudo urpmi multitail
		sudo urpmi tree
		sudo urpmi joe
	elif [ $dtype == "slackware" ]; then
		echo "No install support for Slackware"
	else
		echo "Unknown distribution"
	fi
}

# Show current network information
netinfo ()
{
	echo "--------------- Network Information ---------------"
	/sbin/ifconfig | awk /'inet addr/ {print $2}'
	echo ""
	/sbin/ifconfig | awk /'Bcast/ {print $3}'
	echo ""
	/sbin/ifconfig | awk /'inet addr/ {print $4}'

	/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
	echo "---------------------------------------------------"
}

# IP address lookup
alias whatismyip="whatsmyip"
function whatsmyip ()
{
	# Dumps a list of all IP addresses for every device
	# /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' |awk -F: '{ print $1 ": " $3 }';

	# Internal IP Lookup
	echo -n "Internal IP: " ; /sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'

	# External IP Lookup
	echo -n "External IP: " ; wget http://smart-ip.net/myip -O - -q
}

# View Apache logs
apachelog ()
{
	if [ -f /etc/httpd/conf/httpd.conf ]; then
		cd /var/log/httpd && ls -xAh && multitail --no-repeat -c -s 2 /var/log/httpd/*_log
	else
		cd /var/log/apache2 && ls -xAh && multitail --no-repeat -c -s 2 /var/log/apache2/*.log
	fi
}

# Edit the Apache configuration
apacheconfig ()
{
	if [ -f /etc/httpd/conf/httpd.conf ]; then
		sedit /etc/httpd/conf/httpd.conf
	elif [ -f /etc/apache2/apache2.conf ]; then
		sedit /etc/apache2/apache2.conf
	else
		echo "Error: Apache config file could not be found."
		echo "Searching for possible locations:"
		sudo updatedb && locate httpd.conf && locate apache2.conf
	fi
}

# Edit the PHP configuration file
phpconfig ()
{
	if [ -f /etc/php.ini ]; then
		sedit /etc/php.ini
	elif [ -f /etc/php/php.ini ]; then
		sedit /etc/php/php.ini
	elif [ -f /etc/php5/php.ini ]; then
		sedit /etc/php5/php.ini
	elif [ -f /usr/bin/php5/bin/php.ini ]; then
		sedit /usr/bin/php5/bin/php.ini
	elif [ -f /etc/php5/apache2/php.ini ]; then
		sedit /etc/php5/apache2/php.ini
	else
		echo "Error: php.ini file could not be found."
		echo "Searching for possible locations:"
		sudo updatedb && locate php.ini
	fi
}

# Edit the MySQL configuration file
mysqlconfig ()
{
	if [ -f /etc/my.cnf ]; then
		sedit /etc/my.cnf
	elif [ -f /etc/mysql/my.cnf ]; then
		sedit /etc/mysql/my.cnf
	elif [ -f /usr/local/etc/my.cnf ]; then
		sedit /usr/local/etc/my.cnf
	elif [ -f /usr/bin/mysql/my.cnf ]; then
		sedit /usr/bin/mysql/my.cnf
	elif [ -f ~/my.cnf ]; then
		sedit ~/my.cnf
	elif [ -f ~/.my.cnf ]; then
		sedit ~/.my.cnf
	else
		echo "Error: my.cnf file could not be found."
		echo "Searching for possible locations:"
		sudo updatedb && locate my.cnf
	fi
}

# For some reason, rot13 pops up everywhere
rot13 () {
	if [ $# -eq 0 ]; then
		tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
	else
		echo $* | tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
	fi
}

# Trim leading and trailing spaces (for scripts)
trim()
{
	local var=$@
	var="${var#"${var%%[![:space:]]*}"}"  # remove leading whitespace characters
	var="${var%"${var##*[![:space:]]}"}"  # remove trailing whitespace characters
	echo -n "$var"
}

#######################################################
# Set the ultimate amazing command prompt
#######################################################

alias cpu="grep 'cpu ' /proc/stat | awk '{usage=(\$2+\$4)*100/(\$2+\$4+\$5)} END {print usage}' | awk '{printf(\"%.1f\n\", \$1)}'"

#alias mem="free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }'"
alias mem="free -m | awk 'NR==2{printf \"%.2f%%\n\", \$3*100/\$2 }'"


function __setprompt
{
	local LAST_COMMAND=$? # Must come first!

	# Define colors
	local LIGHTGRAY="\033[0;37m"
	local WHITE="\033[1;37m"
	local BLACK="\033[0;30m"
	local DARKGRAY="\033[1;30m"
	local RED="\033[0;31m"
	local LIGHTRED="\033[1;31m"
	local GREEN="\033[0;32m"
	local LIGHTGREEN="\033[1;32m"
	local BROWN="\033[0;33m"
	local YELLOW="\033[1;33m"
	local BLUE="\033[0;34m"
	local LIGHTBLUE="\033[1;34m"
	local MAGENTA="\033[0;35m"
	local LIGHTMAGENTA="\033[1;35m"
	local CYAN="\033[0;36m"
	local LIGHTCYAN="\033[1;36m"
	local NOCOLOR="\033[0m"

	# Show error exit code if there is one
	if [[ $LAST_COMMAND != 0 ]]; then
		# PS1="\[${RED}\](\[${LIGHTRED}\]ERROR\[${RED}\])-(\[${LIGHTRED}\]Exit Code \[${WHITE}\]${LAST_COMMAND}\[${RED}\])-(\[${LIGHTRED}\]"
		PS1="\[${DARKGRAY}\](\[${LIGHTRED}\]ERROR\[${DARKGRAY}\])-(\[${RED}\]Exit Code \[${LIGHTRED}\]${LAST_COMMAND}\[${DARKGRAY}\])-(\[${RED}\]"
		if [[ $LAST_COMMAND == 1 ]]; then
			PS1+="General error"
		elif [ $LAST_COMMAND == 2 ]; then
			PS1+="Missing keyword, command, or permission problem"
		elif [ $LAST_COMMAND == 126 ]; then
			PS1+="Permission problem or command is not an executable"
		elif [ $LAST_COMMAND == 127 ]; then
			PS1+="Command not found"
		elif [ $LAST_COMMAND == 128 ]; then
			PS1+="Invalid argument to exit"
		elif [ $LAST_COMMAND == 129 ]; then
			PS1+="Fatal error signal 1"
		elif [ $LAST_COMMAND == 130 ]; then
			PS1+="Script terminated by Control-C"
		elif [ $LAST_COMMAND == 131 ]; then
			PS1+="Fatal error signal 3"
		elif [ $LAST_COMMAND == 132 ]; then
			PS1+="Fatal error signal 4"
		elif [ $LAST_COMMAND == 133 ]; then
			PS1+="Fatal error signal 5"
		elif [ $LAST_COMMAND == 134 ]; then
			PS1+="Fatal error signal 6"
		elif [ $LAST_COMMAND == 135 ]; then
			PS1+="Fatal error signal 7"
		elif [ $LAST_COMMAND == 136 ]; then
			PS1+="Fatal error signal 8"
		elif [ $LAST_COMMAND == 137 ]; then
			PS1+="Fatal error signal 9"
		elif [ $LAST_COMMAND -gt 255 ]; then
			PS1+="Exit status out of range"
		else
			PS1+="Unknown error code"
		fi
		PS1+="\[${DARKGRAY}\])\[${NOCOLOR}\]\n"
	else
		PS1=""
	fi

	# Date
	PS1+="\[${DARKGRAY}\](\[${CYAN}\]\$(date +%a) $(date +%b-'%-m')" # Date
	PS1+="${BLUE} $(date +'%-I':%M:%S%P)\[${DARKGRAY}\])-" # Time

	# CPU
	PS1+="(\[${MAGENTA}\]CPU $(cpu)%"

	# Memory Usage
	PS1+="\[${DARKGRAY}\]:\[${MAGENTA}\]RAM $(mem)"

	# Jobs
	# PS1+="\[${DARKGRAY}\]:\[${MAGENTA}\]\j"

	# Network Connections (for a server - comment out for non-server)
	# PS1+="\[${DARKGRAY}\]:\[${MAGENTA}\]NET $(awk 'END {print NR}' /proc/net/tcp)"

	PS1+="\[${DARKGRAY}\])-"

	# User and server
	local SSH_IP=`echo $SSH_CLIENT | awk '{ print $1 }'`
	local SSH2_IP=`echo $SSH2_CLIENT | awk '{ print $1 }'`
	if [ $SSH2_IP ] || [ $SSH_IP ] ; then
		PS1+="(\[${RED}\]\u@\h"
	else
		PS1+="(\[${RED}\]\u"
	fi

	# Current directory
	PS1+="\[${DARKGRAY}\]:\[${BROWN}\]\w\[${DARKGRAY}\])"

	# Total size of files in current directory
	#PS1+="(\[${GREEN}\]$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')\[${DARKGRAY}\]:"

	# Number of files
	#PS1+="\[${GREEN}\]\$(/bin/ls -A -1 | /usr/bin/wc -l)\[${DARKGRAY}\])"

	# Skip to the next line
	PS1+="\n"

	if [[ $EUID -ne 0 ]]; then
		PS1+="\[${GREEN}\]>\[${NOCOLOR}\] " # Normal user
	else
		PS1+="\[${RED}\]>\[${NOCOLOR}\] " # Root user
	fi

	# PS2 is used to continue a command using the \ character
	PS2="\[${DARKGRAY}\]>\[${NOCOLOR}\] "

	# PS3 is used to enter a number choice in a script
	PS3='Please enter a number from above list: '

	# PS4 is used for tracing a script in debug mode
	PS4='\[${DARKGRAY}\]+\[${NOCOLOR}\] '
}
PROMPT_COMMAND='__setprompt'

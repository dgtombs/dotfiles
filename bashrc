# Bash configuration that I use everywhere (Linux and macOS)

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# dgt 17-Dec-2011
# Correct directory spelling errors.
shopt -s cdspell
shopt -s dirspell
# Allow modification of history substitutions.
shopt -s histverify
# Don't try to complete an empty string.
shopt -s no_empty_cmd_completion

### Aliases and Functions ###

alias ll='ls -lF'
alias la='ls -A'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# dgt 03 Oct 2009
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

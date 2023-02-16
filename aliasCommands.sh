#!/bin/bash

alias f="cd "$1
alias b="cd .."
alias c="code ./"
alias e="exit"
alias home="cd ~"
alias a="xdotool key ctrl+shift+t"
alias cdb="cd -"

alias gst="git status"
alias gpr="git pull -r"
alias glo="git log --oneline"
alias gcl="git config -l"
alias gca="git commit --amend"
alias gcane="git commit --amend --no-edit"

alias ad="~/Android/Sdk/emulator/emulator -list-avds"

function off() {
  sudo /opt/lampp/lampp stop
  poweroff
  systemctl poweroff -i
}

function bb() {
  if [ -z "$1" ]
  then
    b;b
  else
    for (( i=0;i<$1;i++ ))
    do
    b
    done
  fi
}

function pokill() {
  kill $(lsof -t -i:$1)
}

function cc() {
  sudo nano ~/x-commands/aliasCommands.sh
}
 
function bc() {
  sudo nano ~/.bashrc
}

function scc() {
  source ~/x-commands/aliasCommands.sh
  echo "Alias Commands Refreshed... "
}
 
function bcc() {
  source ~/.bashrc
  echo "Terminal Refreshed..."
}
 
function welcome() {
  echo Welcome to shell automation
  echo Enter Your Name
  read testName
  echo Welcome to new shortcut world ~~ $testName ~~ Enjoy Coding....
}

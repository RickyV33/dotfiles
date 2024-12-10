#!/bin/bash

echo "alias gitlogonelinepretty='git log --pretty=format:\"%C(yellow)%h %Cred%ad %Cblue%an %Cgreen%s\" --date=short'" >> ~/.zshrc
echo "alias glop=gitlogonelinepretty" >> ~/.zshrc
echo "alias gitbranchclean='git remote prune origin && git branch --merged | egrep -v \"(^\*|main|dev|master)\" | xargs git branch -d'" >> ~/.zshrc
echo "alias gitlogcurrentworkingdirectory='git log --oneline -- **/*'" >> ~/.zshrc
echo "alias glcwd=gitlogcurrentworkingdirectory" >> ~/.zshrc
echo "alias gpom='git pull origin master'" >> ~/.zshrc
echo "alias gd='git diff'" >> ~/.zshrc
echo "alias gst='git status'" >> ~/.zshrc
echo "alias gco='git checkout'" >> ~/.zshrc
echo "alias gcb='git checkout -b'" >> ~/.zshrc
echo "alias gbD='git branch --delete --force'" >> ~/.zshrc
echo "alias glo='git log --oneline --decorate'" >> ~/.zshrc
echo "alias gp='git push'" >> ~/.zshrc
echo "alias gpf='git push --force-with-lease --force-if-includes'" >> ~/.zshrc
echo "alias gcm='git checkout master'" >> ~/.zshrc

# echo "alias ls='eza -lah'" >> ~/.zshrc


# remove username@hostname in prompt as advised at
# https://github.com/ohmyzsh/ohmyzsh/issues/5581#issuecomment-256825141
echo "prompt_context() {}" >> ~/.zshrc

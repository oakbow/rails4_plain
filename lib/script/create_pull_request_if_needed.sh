#!/usr/bin/env bash
export BRANCH=bundle-update-`date -u "+%Y%m%d"`
if [ -n `git status -sb 2> /dev/null | grep Gemfile.lock` ] ; then
  git config --global user.email oakbow7@gmail.com
  git config --global user.name 'oakbow'
  git add Gemfile.lock
  git commit -m 'Bundle update'
  git branch -M $BRANCH
  git push origin $BRANCH
  bundle exec ruby lib/script/create_pull_request.rb
fi
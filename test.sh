#!/usr/bin/env bash

echo $(ruby --version) # last tested with ruby 2.7
echo $(jekyll --version)

bundle install

trap 'kill 0' EXIT
bundle exec jekyll serve & #spawn a child process

sleep 1
open -n http://127.0.0.1:4000/

wait # for the child process
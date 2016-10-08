#!/bin/sh

tmux new-session -s opensmime_dev -d "ruby api/main.rb"
tmux split-window -h "cd static && webpack-dev-server --compress --colors"
tmux attach-session -d

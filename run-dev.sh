#!/bin/sh

tmux new-session -d "cd api && unicorn --listen 0.0.0.0:4567"  # We can't use `thin` with tmux, see note below.
tmux split-window -h "cd static && webpack-dev-server --compress --colors"
tmux attach-session


# Can't use thin with tmux:
#  When tmux does a 'kill-session', it sends a SIGHUP to each of the spawned processes.
#  However, thin interprets a HUP as a restart signal which continues the process 
#  running outside of tmux.  

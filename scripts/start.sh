#!/bin/bash

# to run uvicorn in background, one solution is to use tmux:
# `tmux a` : attach to the last session
# in this session: launch this script or command
# <Ctrl> + <b> % : split pane
# in this paine: tail -f logfile.log
# <Ctrl> + <b> ; : toggle pane
# <Ctrl> + <b> d : detach
#
# more info: https://tmuxcheatsheet.com/
poetry run uvicorn --app-dir ./src/ --host 0.0.0.0 --log-config ./log.ini api:app

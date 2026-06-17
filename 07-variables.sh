#!/bin/bash

### Special Variables
echo "All args passed to script: $@"
echo "Number of args passed to script: $#"
echo "Script name: $0"
echo "presnt working directory: $PWD"
echo "who is running: $USER"
echo "home directory:$HOME"
echo "PID of the script: $$"
sleep 5
echo "PID of recently executed background process: $!"
echo "all args passed to script: $@"
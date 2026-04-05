#!/usr/bin/env bash
set -e

# Start tmux session in background
tmux new-session -d -s mc "./start-server.sh"

# Keep container alive without attaching
tail -f /dev/null


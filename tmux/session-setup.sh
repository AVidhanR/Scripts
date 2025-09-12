#!/bin/bash

# Define variables for session names and project path for easy customization.
PROJECT_PATH="~/Documents/GitHub/Project"
SESSION_EDITOR="Editor"
SESSION_DB="OracleDB"
SESSION_TERMINAL="Terminal"

echo "Checking for existing TMUX sessions..."

# Function to check and kill an existing session.
function killSessionIfExists() {
    local sessionName=$1
    if tmux has-session -t "$sessionName" 2>/dev/null; then
        echo "Session '$sessionName' already exists. Killing it to start fresh."
        tmux kill-session -t "$sessionName"
    fi
}

# Kill sessions if they already exist to prevent errors.
killSessionIfExists "$SESSION_EDITOR"
killSessionIfExists "$SESSION_DB"
killSessionIfExists "$SESSION_TERMINAL"

echo "Creating new TMUX sessions..."

# --- Session 1: Editor ---
tmux new-session -d -s "$SESSION_EDITOR"
echo "Creating editor session: $SESSION_EDITOR"
tmux send-keys -t "$SESSION_EDITOR" "cd $PROJECT_PATH" C-m
tmux send-keys -t "$SESSION_EDITOR" "nvim ." C-m

# --- Session 2: Oracle DB ---
tmux new-session -d -s "$SESSION_DB"
echo "Creating Oracle DB session: $SESSION_DB"
# Note: You may need to modify the command to start your specific Oracle service.
# This command assumes a common setup for Oracle XE.
tmux send-keys -t "$SESSION_DB" "echo 'Starting Oracle DB server...'" C-m
tmux send-keys -t "$SESSION_DB" "sudo systemctl start oracle-xe" C-m
# Wait a few seconds for the service to start before launching SQLPlus.
tmux send-keys -t "$SESSION_DB" "sleep 5" C-m
tmux send-keys -t "$SESSION_DB" "sqlplus / as sysdba" C-m

# --- Session 3: Terminal ---
tmux new-session -d -s "$SESSION_TERMINAL"
echo "Creating general terminal session: $SESSION_TERMINAL"
tmux send-keys -t "$SESSION_TERMINAL" "cd $PROJECT_PATH" C-m
tmux send-keys -t "$SESSION_TERMINAL" "clear" C-m

echo "All sessions created. Use 'tmux attach -t Editor' to connect to a session."
echo "Or, simply 'tmux a' to attach to the most recent one."
echo "Use 'tmux ls' to list all sessions."

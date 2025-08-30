# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
# PS1="\W \[\e]0;\w\a\]$PS1"
#
# Load SSH agent environment variables if they exist
if [ -f ~/.ssh-agent-env ]; then
  source ~/.ssh-agent-env >/dev/null
fi

# Check if the agent is running and has keys, if not, add them
if ! ssh-add -l >/dev/null 2>&1; then
  ssh-add ~/.ssh/id_ed25519 2>/dev/null
fi

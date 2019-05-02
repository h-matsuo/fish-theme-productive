# Set color scheme to "Tomorrow Night Bright"
set -g fish_color_command c397d8        # commands
set -g fish_color_param 7aa6da          # parameters
set -g fish_color_end c397d8            # statement terminators
set -g fish_color_quote b9ca4a          # quotes
set -g fish_color_redirection 70c0b1    # redirections
set -g fish_color_error d54e53          # errors
set -g fish_color_comment e7c547        # comments
set -g fish_color_autosuggestion 969896 # autosuggestions

# Configure git_prompt
set -g __fish_git_prompt_show_informative_status 'yes'
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showstashstate 'yes'
set -g __fish_git_prompt_showuntrackedfiles 'yes'
set -g __fish_git_prompt_showupstream 'yes'
set -g __fish_git_prompt_showcolorhints 'yes'
set -g __fish_git_prompt_color_branch brcyan

function fish_prompt \
  -d 'Write out the prompt'

  # Collect previous command info
  set -l _exit_status $status ; set -l _cmd_duration $CMD_DURATION

  set_color normal

  # Set colors for...
  set -g fish_color_command c397d8        # commands
  set -g fish_color_param 7aa6da          # parameters
  set -g fish_color_end c397d8            # statement terminators
  set -g fish_color_quote b9ca4a          # quotes
  set -g fish_color_redirection 70c0b1    # redirections
  set -g fish_color_error d54e53          # errors
  set -g fish_color_comment e7c547        # comments
  set -g fish_color_autosuggestion 969896 # autosuggestions

  # Print first line
  set -l _prompt_exit_status (__productive_prompt_exit_status $_exit_status)
  set -l _prompt_cmd_duration (__productive_prompt_cmd_duration $_cmd_duration)
  if [ -n "$_prompt_exit_status" ]; or [ -n "$_prompt_cmd_duration" ] # Only if not empty
    echo -n $_prompt_exit_status
    echo -n $_prompt_cmd_duration
    echo
  end

  # Print second line
  __productive_prompt_user
  __productive_prompt_pwd
  __productive_prompt_git_status

  echo

  # Print third line
  __productive_prompt_ssh_badge
  __productive_prompt_symbol

  set_color normal

end

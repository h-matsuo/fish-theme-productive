function fish_prompt \
  -d 'Write out the prompt'

  # Collect previous command info
  set -l exit_status $status ; set -l cmd_duration $CMD_DURATION

  set_color normal

  # Print first line
  set -l prompt_exit_status (__productive_prompt_exit_status $exit_status)
  set -l prompt_cmd_duration (__productive_prompt_cmd_duration $cmd_duration)
  if [ -n "$prompt_exit_status" ]; or [ -n "$prompt_cmd_duration" ] # Only if not empty
    echo -n $prompt_exit_status
    echo -n $prompt_cmd_duration
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

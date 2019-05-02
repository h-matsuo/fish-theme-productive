function fish_right_prompt \
  -d 'Write out the right prompt'

  # Collect previous command info
  # set -l exit_status $status ; set -l cmd_duration $CMD_DURATION

  set_color normal

  __productive_prompt_time
  __productive_prompt_hostname

  set_color normal

end

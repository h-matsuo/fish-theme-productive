function __productive_prompt_cmd_duration \
  -d 'Print command duration if greater than threshold'

  set -l _duration_threshold_sec 5
  set -l _cmd_duration (math -s 1 $argv[1] / 1000)

  if [ $_cmd_duration -gt $_duration_threshold_sec ]
    set_color -o ff8700 brred
    echo -n "Duration: $_cmd_duration s"
    set_color normal
    echo -n ' '
  end

end

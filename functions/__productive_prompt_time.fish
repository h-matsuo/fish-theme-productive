function __productive_prompt_time \
  -d 'Print current time'

  set_color brblack
  echo -n (date +"%H:%M:%S")

  set_color normal
  echo -n ' '

end

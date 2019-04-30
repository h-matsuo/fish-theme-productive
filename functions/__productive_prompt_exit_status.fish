function __productive_prompt_exit_status \
  -d 'Print exit status if error'

  set -l _exit_status $argv[1]

  if [ $_exit_status -ne 0 ]
    set_color -o -b white brred
    echo -n " Exit status: $_exit_status "
    set_color normal
    echo -n ' '
  end

end

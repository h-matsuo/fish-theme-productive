function __productive_prompt_exit_status \
  -d 'Print exit status if error' \
  -a exit_status

  if [ $exit_status -ne 0 ]
    set_color -o -b white brred
    echo -n " Exit status: $exit_status "
    set_color normal
    echo -n ' '
  end

end

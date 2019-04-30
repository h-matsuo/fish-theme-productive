function __productive_prompt_user \
  -d 'Print current user name'

  switch (id -u "$USER")
    case 0
      set_color -o -b brred white
      echo -n " $USER "
    case '*'
      set_color brgreen
      echo -n $USER
  end

  set_color normal
  echo -n ' '

end

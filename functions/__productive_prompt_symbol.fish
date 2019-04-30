function __productive_prompt_symbol \
  -d 'Print prompt symbol corresponding to current user'

  switch (id -u "$USER")
    case 0
      set_color brred
      echo -n '#'
    case '*'
      # set_color brblack
      echo -n '$'
  end

  set_color normal
  echo -n ' '

end

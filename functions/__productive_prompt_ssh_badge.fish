function __productive_prompt_ssh_badge \
  -d 'Print badge if SSH session'

  if __productive_is_ssh_session
    set_color brmagenta
    echo -n '[SSH]'
    set_color normal
    echo -n ' '
  end

end

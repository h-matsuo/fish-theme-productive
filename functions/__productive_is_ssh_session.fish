function __productive_is_ssh_session \
  -d 'Check if SSH session'

  test -n "$SSH_CONNECTION"; or test -n "$SSH_TTY"

end

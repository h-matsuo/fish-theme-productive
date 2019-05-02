function __productive_prompt_pwd \
  -d 'Print working directory'

  set -l dirname_ (dirname (prompt_pwd))
  set -l basename_ (basename (prompt_pwd))

  # Print dirname only if neccesarry
  set_color bryellow
  if [ (prompt_pwd) != '~' ]; and [ "$dirname_" != "$basename_" ]
    echo -n $dirname_
    if [ "$dirname_" != '/' ] # Avoid '//foo'
      echo -n '/'
    end
  end

  # Print basename with bold face
  set_color -o
  echo -n $basename_

  set_color normal
  echo -n ' '

end

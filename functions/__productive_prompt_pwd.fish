function __productive_prompt_pwd \
  -d 'Print working directory'

  set -l _dirname (dirname (prompt_pwd))
  set -l _basename (basename (prompt_pwd))

  # Print dirname only if neccesarry
  set_color bryellow
  if [ (prompt_pwd) != '~' ]; and [ "$_dirname" != "$_basename" ]
    echo -n $_dirname
    if [ "$_dirname" != '/' ] # Avoid '//foo'
      echo -n '/'
    end
  end

  # Print basename with bold face
  set_color -o
  echo -n $_basename

  set_color normal
  echo -n ' '

end

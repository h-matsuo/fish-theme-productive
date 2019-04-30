function __productive_prompt_git_status \
  -d 'Print git status'

  set -x __fish_git_prompt_show_informative_status 'yes'
  set -x __fish_git_prompt_showdirtystate 'yes'
  set -x __fish_git_prompt_showstashstate 'yes'
  set -x __fish_git_prompt_showuntrackedfiles 'yes'
  set -x __fish_git_prompt_showupstream 'yes'
  set -x __fish_git_prompt_showcolorhints 'yes'
  set -x __fish_git_prompt_color_branch brcyan

  echo -n \b(__fish_git_prompt)

  set_color normal

end

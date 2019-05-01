function __productive_prompt_git_status \
  -d 'Print git status'

  set -g __fish_git_prompt_show_informative_status 'yes'
  set -g __fish_git_prompt_showdirtystate 'yes'
  set -g __fish_git_prompt_showstashstate 'yes'
  set -g __fish_git_prompt_showuntrackedfiles 'yes'
  set -g __fish_git_prompt_showupstream 'yes'
  set -g __fish_git_prompt_showcolorhints 'yes'
  set -g __fish_git_prompt_color_branch brcyan

  echo -n \b(__fish_git_prompt)

  set_color normal

end

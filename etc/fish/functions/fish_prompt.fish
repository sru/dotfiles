function fish_prompt
  set -l last_status $status

  set -l color
  if test $last_status -ne 0
    set color (set_color red)
  else
    set color (set_color normal)
  end

  set -l prompt
  if functions -q fish_is_root_user; and fish_is_root_user
    set prompt '#'
  else
    set prompt '>'
  end

  echo -n -s $color $prompt (set_color normal) ' '
end

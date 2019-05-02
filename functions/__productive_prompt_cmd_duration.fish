function __productive_prompt_cmd_duration \
  -d 'Print command duration if greater than threshold'

  set -l cmd_duration_msec $argv[1]
  set -l cmd_duration_threshold_msec 5000


  function format_msec

    set -l from_msec $argv[1]

    set -l msec 1000
    set -l min_msec (math $msec \* 60)
    set -l hour_msec (math $min_msec \* 60)

    set -l hour ( math floor \( $from_msec / $hour_msec \) )
    set -l min ( math floor \( \( $from_msec - $hour_msec \* $hour \) / $min_msec \) )
    set -l sec ( math -s 1 \( $from_msec - $hour_msec \* $hour - $min_msec \* $min \) / $msec )

    set -l result ''

    if [ $hour -gt 0 ]
      set result $hour'h '
    end
    if [ $min -gt 0 ]
      set result $result$min'm '
    end
    set result $result$sec's'

    echo -n $result

  end


  if [ $cmd_duration_msec -gt $cmd_duration_threshold_msec ]
    set_color ff8700 brred
    echo -n "Duration: "(format_msec $cmd_duration_msec)
    set_color normal
    echo -n ' '
  end

end

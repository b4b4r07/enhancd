function _enhancd_filter_join
    if test -n "$argv[1]"; and test -f "$argv[1]"
        cat "$argv[1]"
    else
        cat <&0
    end | _enhancd_command_awk 'a[$0]++' 2>/dev/null
end

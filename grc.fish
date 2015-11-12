function init --on-event init_grc
  set -l execs cat cvs df diff dig gcc g++ ls ifconfig \
               make mount mtr netstat ping ps tail traceroute \
               wdiff 

  if not available grc
    echo 'You need to install grc!'
    return 0
  end

  if set -q grc_plugin_execs
    set execs $grc_plugin_execs
  end

  for executable in $execs
    if available $executable
      function $executable --inherit-variable executable --wraps=$executable
        grc.wrap $executable $argv
      end
    end
  end

end

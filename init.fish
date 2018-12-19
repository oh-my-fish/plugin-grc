if type -q grc
  set -l execs cat cvs df diff dig gcc g++ ls ifconfig \
               make mount mtr netstat ping ps tail traceroute \
               wdiff ip configure stat ss last who \
               ldap findmnt env systemctl iptables lspci lsblk lsof \
               blkid id iostat sar fdisk free docker lsmod lsattr \
               semanage getsebool ulimit vmstat dnf nmap uptime w \
               getfacl showmount ant maven

  if set -q grc_plugin_execs
    set execs $grc_plugin_execs
  end

  for executable in $execs
    if type -q $executable
      function $executable --inherit-variable executable --wraps=$executable
        grc.wrap $executable $argv
      end
    end
  end
else
  echo 'You need to install grc!'
end

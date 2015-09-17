function grc.wrap -a executable
  set arguments $argv[1..-1]
  set optionsvariable "grcplugin_"$executable
  set options $$optionsvariable

  command grc -es --colour=auto $arguments $options
end
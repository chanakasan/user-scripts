
check_type=$(type -t run_file)

if [ "$check_type" == "alias" ]; then
  run_file
else
  run_vscode_file $@
fi

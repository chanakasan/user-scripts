name=$(haiku)

read -p "Confirm create dir $name, Are you sure? y/n " value

if [[ $value == "y" ]]; then
  mkdir -p $name
fi

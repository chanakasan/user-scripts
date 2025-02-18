name=$(haiku)

read -p "Create $name y/n ?" value

if [[ $value == "y" ]]; then
  mkdir -p $name
fi

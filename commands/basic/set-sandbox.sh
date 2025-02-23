set -e

main() {
  local name="null"
  read -p "Enter sandbox name: " name
  local local root=$HOME
  local folder=$root/user/sandboxes/$name

  if [ ! -d "$folder" ]; then
    echo "Sandbox directory not exist $folder"
    echo Aborting
    exit 1
  fi

  create_symlink $folder
  echo "changed sandbox to $name"
}

create_symlink() {
  local input="$1"
  local link_path=$root/symlinks/sandbox
  if [ -e "$link_path" ] && [ ! -L "$link_path" ]; then
    echo "Regular file or directory exists"
    ecoh "Aborting"
    exit 1
  elif [ -L "$link_path" ]; then
    ln -nfs $input $link_path
  else
    ln -s $input $link_path
  fi
}

main

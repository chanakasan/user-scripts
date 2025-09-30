set -e

main() {
  local name="null"
  read -p "Enter workspace name: " name
  local local root=$HOME
  local folder=$root/symlinks/sandbox/workspaces/$name-workspace
  if [ ! -d "$folder" ]; then
    echo "workspace directory not exist $folder"
    echo Aborting
    exit 1
  fi
  create_symlink $folder
  echo "changed workspace to $name"
}

create_symlink() {
  local input="$1"
  local link_path=$root/symlinks/workspace
  if [ -e "$link_path" ] && [ ! -L "$link_path" ]; then
    echo "Regular file or directory exists"
    ecoh Aborting
    exit 1
  elif [ -L "$link_path" ]; then
    ln -nfs $input $link_path
  else
    ln -s $input $link_path
  fi
}

main

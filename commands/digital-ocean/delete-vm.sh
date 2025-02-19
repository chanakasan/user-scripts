set -e

read -p "Enter vm name: " vm_name
if [ -z "$vm_name" ]; then
  echo "name require"
  exit
fi
doctl compute droplet delete $vm_name

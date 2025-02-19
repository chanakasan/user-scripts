main() {
  local vm_name=""
  read -p "Enter vm name: " vm_name
  local ssh_key_print=$(get_ssh_key_print)
  create_vm
}

get_ssh_key_print() {
  echo $(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | cut -b 10-56)
}

create_vm() {
  echo " Creating VM..."
  echo "Please visit: https://cloud.digitalocean.com/droplets"
  echo
  doctl compute droplet create $vm_name --size s-2vcpu-4gb --image ubuntu-20-04-x64 --region sgp1 --ssh-keys $ssh_key_print
}

main $@

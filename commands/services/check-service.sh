echo "=> Check a service status"
read -p "service name: " name

if [ -z "$name" ]; then
    echo "Error: Service name is empty"
    exit 1
fi

sudo service $name status

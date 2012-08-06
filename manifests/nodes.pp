node basenode {
  # exec { "route add -net 10.2.45.0 netmask 255.255.255.0 gw 10.10.10.1 eth1":
  #         unless => 'netstat -nrv | grep -e "10.2.45.0.*10.10.10.1"',
  # }
}

node sandbox inherits basenode {
  include myapp
}



# Install all management server resources in a single node
# node cloudstackms.example.com inherits basenode {
#   include cloudstack::management
#   include cloudstack::db
#   include cloudstack::nfs
# }

# Install KVM hypervisor
# node cloudstackhv.example.com inherits basenode {
#   include cloudstack::hypervisor
# }
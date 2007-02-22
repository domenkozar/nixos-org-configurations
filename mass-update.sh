#! /bin/sh

for i in 127.0.0.1 192.168.1.13 192.168.1.14 "127.0.0.1 -p 2222"; do
    echo "=== Updating $i ==="
    ssh -i /root/.ssh/id_mass_update root@$i sh --login -c '"cd /etc/nixos && svn up nixos nixpkgs configurations && nixos-rebuild switch"'
done
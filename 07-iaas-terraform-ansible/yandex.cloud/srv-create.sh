#!/bin/sh -x
# yc client should be setup for admin access in Yandex Cloud
yc compute instance create \
  --name dev-yc\
  --description "ubuntu 2404 dev docker podman"\
  --metadata-from-file user-data=meta.yaml\
  --metadata serial-port-enable=1\
  --cores 2\
  --core-fraction 20\
	--memory 4\
	--preemptible\
	--create-boot-disk image-id=fd84b1mojb8650b9luqd,size=32\
  --image-folder-id "standard-images"\
  --zone ru-central1-b\
  --network-interface subnet-id=e2lij6cpfo7pl5rtvc01,nat-ip-version=ipv4,security-group-ids=enpbp6m69l6c9u0e51gk

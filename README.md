A simple collection of nixos image builders.
Just put your stuff into the config.nix and then call one of the image builders.

for example:
```
bin/make-iso
```
or
```
bin/make-iso config.nix
```

it echoes the path to a iso image, which you then can flash onto an usb-stick or mount & boot in a virtual machine.

we currently have following generators:

format | script
--- | ---
iso | bin/make-iso
kexec | bin/make-kexec
kexec-bundle | bin/make-kexec-bundle
openstack | bin/make-openstack
qcow2 | bin/make-qcow
virtualbox | bin/make-virtualbox

we also have following runners:

platform | script
--- | ---
qemu-kvm | bin/run-vm
qemu-kvm (without gui) | bin/run-vm-nogui

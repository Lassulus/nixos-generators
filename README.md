# nixos-generators - one config, multiple formats

The nixos-generators project allows to take the same NixOS configuration, and
generate outputs for different target formats.

Just put your stuff into the configuration.nix and then call one of the image builders.

for example:
```
./nixos-generate -f iso
```
or

```
./nixos-generate -f iso -c /etc/nixos/configuration.nix
```

it echoes the path to a iso image, which you then can flash onto an usb-stick
or mount & boot in a virtual machine.

# Installation

nixos-generators can be installed from source into the user profile like this:

```console
$ nix-env -f https://github.com/nix-community/nixos-generators/archive/master.tar.gz -i
```

## Supported formats

format | description
--- | ---
azure | Microsoft azure image
gce | Google Compute Image
install-iso | Installer ISO
iso | ISO
kexec | kexec tarball (extract to / and run /kexec_nixos)
kexec-bundle | same as before, but it's just an executable
openstack | qcow2 image for openstack
qcow2 | qcow2 image
raw | raw image
virtualbox | virtualbox VM
vm | only used as a qemu-kvm runner
vm-nogui | same as before, but without a GUI

## Usage

Run `./nixos-generate --help` for detailed usage information

### License
This project is licensed under the terms of the MIT license.

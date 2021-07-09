{ config, lib, pkgs, modulesPath, files, ... }:
{
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    autoResize = true;
    fsType = "ext4";
  };

  boot = {
    growPartition = true;
    kernelParams = [ "console=ttyS0" ];
    loader.grub.device = lib.mkDefault "/dev/vda";
    loader.timeout = 0;
    initrd.availableKernelModules = [ "uas" ];
  };

  system.build.raw = import "${toString modulesPath}/../lib/make-disk-image.nix" {
    inherit lib config pkgs;
    diskSize = "auto";
    format = "raw";
    contents = files;
  };

  formatAttr = "raw";
  filename = "*.img";
}

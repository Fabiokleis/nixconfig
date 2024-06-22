# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/961e79f9-c42c-41fa-b256-0959ac2f623d";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };

  fileSystems."/boot/efi" =
    { device = "/dev/disk/by-uuid/d035e1b5-cb7d-4a90-bb60-c02b3eb2bcd7";
      fsType = "ext4";
    };

  fileSystems."/storage" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
    };

  fileSystems."/home/nhambu/Downloads" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
      options = [ "subvol=@Downloads" ];
    };

  fileSystems."/home/nhambu/Documentos" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
      options = [ "subvol=@Documents" ];
    };

  fileSystems."/home/nhambu/Imagens" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
      options = [ "subvol=@Pictures" ];
    };

  fileSystems."/home/nhambu/Vídeos" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
      options = [ "subvol=@Videos" ];
    };

  fileSystems."/home/nhambu/Músicas" =
    { device = "/dev/disk/by-uuid/2bd8d5cd-1684-44c0-bf86-c98dbb672b59";
      fsType = "btrfs";
      options = [ "subvol=@Musics" ];
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp3s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}

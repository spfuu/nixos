{
  imports = [
    # contains your disk format and partitioning configuration.
    ../../modules/disko.nix
    # this file is shared among all machines
    ../../modules/shared.nix
    # enables GNOME desktop (optional)
    ../../modules/gnome.nix
  ];

  users.users.user.name = "pfischi";

  clan.core.networking.targetHost = "root@192.168.178.2";

  disko.devices.disk.main.device = "/dev/disk/by-id/wwn-0x500a0751e9b0e94e";

  users.users.root.openssh.authorizedKeys.keys = [
    ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO53yaEGIe1HxVILAniWSf6/9odXdH5oLWE1S5GfjOr0
    ''
  ];
  clan.core.networking.zerotier.controller.enable = false;
}

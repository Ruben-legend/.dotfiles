{lib, pkgs, ...}:
{

environment.systemPackages = with pkgs; [
  nginx
  php
];

services.nginx = {
    enable = true;
  };
services.phpfpm.pools."churchcms" = {
  user = "nginx";
  group = "nginx";
  settings = {
    "listen" = "/run/phpfpm/churchcms.sock";
    "pm" = "dynamic";
    "pm.max_children" = 5;
    "pm.start_servers" = 2;
    "pm.min_spare_servers" = 1;
    "pm.max_spare_servers" = 3;
  };
};
}

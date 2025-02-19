{...}:{
  imports = [
    ./mysql.nix
    ./church.nix
  ];
  virtualisation.waydroid.enable = true;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.docker.enable = true; # Habilita Docker
  virtualisation.docker.autoPrune.enable = true; # Limpia automáticamente recursos no utilizados
}

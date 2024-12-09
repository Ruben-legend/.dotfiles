{...}:{
  imports = [
    ./mysql.nix
  ];
  virtualisation.waydroid.enable = true;
  virtualisation.docker.enable = true; # Habilita Docker
  virtualisation.docker.autoPrune.enable = true; # Limpia automáticamente recursos no utilizados
}

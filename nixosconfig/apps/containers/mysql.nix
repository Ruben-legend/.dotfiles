{config,  ...}:{
  containers.mysql-container = let
    dataD = "/var/lib/mysql";    
  in {
    autoStart = false;
    #privateNetwork = true;
    config = {config, pkgs, lib, ...}:{

      environment.systemPackages = with pkgs; [
        btop
      ];

      services.mysql = {
        enable = true;
        package = pkgs.mariadb;
        user = "mysql";
        group = "mysql";
        dataDir = "${dataD}";

        initialDatabases = [
          { name = "test";}
        ];

        
        settings = {
          mysqld = {
            datadir = "${dataD}";
            port = 3306;
          };
        };
      };
    };
  };
}

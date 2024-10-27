{ config, pkgs, inputs, lib, ... }:
let 
  check = "${./check}";
in
{
  programs.neovim = {
	  enable = true;

	  viAlias = true;
	  vimAlias = true;
	  vimdiffAlias = true;
	
	  extraLuaConfig = "
		  ${builtins.readFile ./lua/core/init.lua}  
	  ";
  };

  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    typescript
    typescript-language-server
    emmet-language-server
    stylua
    nil

    cargo
    python3
    nodejs
    gcc
    zip
    unzip
  ];

  home.activation.setupScript = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${check}
    '';
}

{ config, pkgs, inputs, ... }:
{
  programs.neovim = {
	  enable = true;

	  viAlias = true;
	  vimAlias = true;
	  vimdiffAlias = true;
	
	  extraLuaConfig = "
		  ${builtins.readFile ./lua/core/maps.lua}  
		  ${builtins.readFile ./lua/core/base.lua}  
		  ${builtins.readFile ./lua/core/highlights.lua}  
		  ${builtins.readFile ./lua/core/linux.lua}  
		  ${builtins.readFile ./lua/core/windows.lua}  
		  ${builtins.readFile ./lua/core/lazy_vim.lua}  
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
}

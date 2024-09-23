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
}

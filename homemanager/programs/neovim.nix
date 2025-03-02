{...}:
let 
	python = "${pkgs.python3}/bin/python3";
	s = "${assets.scripts}/neovim_check.py";
in{

	home.activation = {
		qtile_check_file_system = lib.hm.dag.entryAfter ["writeBoundary"] ''
			${python} "${s}"
		'';
	};
}

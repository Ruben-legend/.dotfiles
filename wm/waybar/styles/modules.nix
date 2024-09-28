{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Modules
 * ----------------------------------------------------- */

.modules-left > widget:first-child > #workspaces {
    margin-left: 0;
}

.modules-right > widget:last-child > #workspaces {
    margin-right: 0;
}
    ";
  };
}

{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Modules
 * ----------------------------------------------------- 

.modules-left > widget:first-child > #workspaces {
    margin-left: 0;
}

.modules-right > widget:last-child > #workspaces {
    margin-right: 0;
}
    */
    .modules-right, .modules-center, .modules-left {
      background: #000000;
      border: 0px solid @overlay0;
      padding-top: 0px;
      padding-bottom: 0px;
      padding-right: 4px;
      padding-left: 4px;
      border-radius: 12px;
    }

    .modules-left, .modules-right{
      border: 0px solid @blue;
      padding-top: 1px;
      padding-bottom: 1px;
      padding-right: 4px;
      padding-left: 4px;
    }
    ";
  };
}

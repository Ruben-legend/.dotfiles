{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Tray
 * ----------------------------------------------------- */

#tray {
    margin:0px 10px 0px 0px;
}

#tray > .passive {
    -gtk-icon-effect: dim;
}

#tray > .needs-attention {
    -gtk-icon-effect: highlight;
    background-color: #eb4d4b;
}
    ";
  };
}

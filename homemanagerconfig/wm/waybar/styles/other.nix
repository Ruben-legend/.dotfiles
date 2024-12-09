{...}:{
  programs.waybar = {
    style = "
    /* -----------------------------------------------------
 * Other
 * ----------------------------------------------------- */

label:focus {
    background-color: #000000;
}

#backlight {
    background-color: #90b1b1;
}

#network {
    background-color: #2980b9;
}

#network.disconnected {
    background-color: #f53c3c;
}";
  };
}

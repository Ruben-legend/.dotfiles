{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Tooltips
 * ----------------------------------------------------- */

tooltip {
    border-radius: 10px;
    background-color: @backgroundlight;
    opacity:0.8;
    padding:20px;
    margin:0px;
}

tooltip label {
    color: @textcolor2;
}
    ";
  };
}

{...}:{
  programs.waybar = {
    style = "      
/* -----------------------------------------------------
 * Window
 * ----------------------------------------------------- */

#window {
    background: @backgroundlight;
    margin: 10px 15px 10px 0px;
    padding: 2px 10px 0px 10px;
    border-radius: 12px;
    color:@textcolor2;
    font-size:16px;
    font-weight:normal;
}

window#waybar.empty #window {
    background-color:transparent;
}
    ";
  };
}

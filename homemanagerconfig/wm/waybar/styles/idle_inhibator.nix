{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Idle Inhibator
 * ----------------------------------------------------- */

 #idle_inhibitor {
    margin-right: 15px;
    font-size: 22px;
    font-weight: bold;
    opacity: 0.8;
    color: @iconcolor;
}

#idle_inhibitor.activated {
    margin-right: 15px;
    font-size: 20px;
    font-weight: bold;
    opacity: 0.8;
    color: #dc2f2f;
}
    ";
  };
}

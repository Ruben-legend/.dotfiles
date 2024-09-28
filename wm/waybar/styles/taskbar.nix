{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Taskbar
 * ----------------------------------------------------- */

#taskbar {
    background: @backgroundlight;
    margin: 6px 15px 6px 0px;
    padding:0px;
    border-radius: 15px;
    font-weight: normal;
    font-style: normal;
    border: 3px solid @backgroundlight;
}

#taskbar button {
    margin:0;
    border-radius: 15px;
    padding: 0px 5px 0px 5px;
}

    ";
  };
}

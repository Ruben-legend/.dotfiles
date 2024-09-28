{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Pulseaudio
 * ----------------------------------------------------- */

#pulseaudio {
    background-color: @backgroundlight;
    font-size: 16px;
    color: @textcolor2;
    border-radius: 15px;
    padding: 2px 10px 0px 10px;
    margin: 10px 15px 10px 0px;
}

#pulseaudio.muted {
    background-color: @backgrounddark;
    color: @textcolor1;
}
    ";
  };
}
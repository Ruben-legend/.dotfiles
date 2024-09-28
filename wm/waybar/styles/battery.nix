{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Battery
 * ----------------------------------------------------- */

#battery {
    background-color: @backgroundlight;
    font-size: 16px;
    color: @textcolor2;
    border-radius: 15px;
    padding: 2px 15px 0px 10px;
    margin: 10px 15px 10px 0px;
}

#battery.charging, #battery.plugged {
    color: @textcolor2;
    background-color: @backgroundlight;
}

@keyframes blink {
    to {
        background-color: @backgroundlight;
        color: @textcolor2;
    }
}

#battery.critical:not(.charging) {
    background-color: #f53c3c;
    color: @textcolor3;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}
    ";
  };
}

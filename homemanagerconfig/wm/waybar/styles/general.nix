{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * General 
 * ----------------------------------------------------- */
* {
    font-family: 'Fira Sans Semibold', 'Font Awesome 6 Free', FontAwesome,  Roboto, Helvetica, Arial, sans-serif;
    border: none;
    border-radius: 0px;
}

window#waybar {
    background-color: rgba(0,0,0,0.2);
    border-bottom: 0px solid #ffffff;
    /* color: #FFFFFF; */
    transition-property: background-color;
    transition-duration: .5s;
}
    ";
  };
}

{...}:{
  programs.waybar = {
    style = "
/* -----------------------------------------------------
 * Hardware Group
 * ----------------------------------------------------- */

 #disk,#memory,#cpu,#language {
    margin:0px;
    padding:0px;
    font-size:16px;
    color:@iconcolor;
}

#language {
    margin-right:10px;
}
    ";
  };
}

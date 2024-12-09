{...}:{
  programs.waybar = {
    style = "

/* -----------------------------------------------------
 * Custom Quicklinks
 * ----------------------------------------------------- */

#custom-brave, 
#custom-browser, 
#custom-keybindings, 
#custom-outlook, 
#custom-filemanager, 
#custom-teams, 
#custom-chatgpt, 
#custom-calculator, 
#custom-windowsvm, 
#custom-cliphist, 
#custom-settings, 
#custom-wallpaper, 
#custom-system,
#custom-hyprshade,
#custom-hypridle,
#custom-quicklink1,
#custom-quicklink2,
#custom-quicklink3,
#custom-quicklink4,
#custom-quicklink5,
#custom-quicklink6,
#custom-quicklink7,
#custom-quicklink8,
#custom-quicklink9,
#custom-quicklink10,
#custom-waybarthemes {
    margin-right: 23px;
    font-size: 20px;
    font-weight: bold;
    color: @iconcolor;
}
 
#custom-hyprshade {
    margin-right:12px;
}

#custom-hypridle {
    margin-right:16px;
}

#custom-hypridle.active {
    color: @iconcolor;
}

#custom-hypridle.notactive {
    color: #dc2f2f;
}

#custom-waybarthemes,#custom-system {
     margin-right:15px;
}

#custom-ml4w-welcome {
    margin-right: 12px;
    background-image: url('../assets/ml4w-icon.svg');
    background-position: center;
    background-repeat: no-repeat;
    background-size: contain; 
    padding-right: 24px;
}
/* -----------------------------------------------------
 * Custom Modules
 * ----------------------------------------------------- */

#custom-icon {
    background-color: rgba(0, 0, 0, 0.1);
    font-size: 20px;
    color: white;
    border-radius: 15px;
    padding: 2px 10px 0px 10px;
    margin: 10px 15px 10px 10px;
}

/* -----------------------------------------------------
 * Custom Exit
 * ----------------------------------------------------- */

#custom-exit {
    margin: 0px 20px 0px 0px;
    padding:0px;
    font-size:20px;
    color: @iconcolor;
}

/* -----------------------------------------------------
 * Custom Updates
 * ----------------------------------------------------- */

#custom-updates {
    background-color: @backgroundlight;
    font-size: 16px;
    color: @textcolor2;
    border-radius: 15px;
    padding: 2px 10px 0px 10px;
    margin: 10px 15px 10px 0px;
}

#custom-updates.green {
    background-color: @backgroundlight;
}

#custom-updates.yellow {
    background-color: #ff9a3c;
    color: #FFFFFF;
}

#custom-updates.red {
    background-color: #dc2f2f;
    color: #FFFFFF;
}
    ";
  };
}

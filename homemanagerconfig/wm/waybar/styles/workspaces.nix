{config, ...} :{
  programs.waybar = {
    style = "

    /* -----------------------------------------------------
    * Workspaces 
 * ----------------------------------------------------- */

#workspaces {
    margin: 5px 1px 6px 1px;
    padding: 0px 1px;
    border-radius: 15px;
    border: 0px;
    font-weight: bold;
    font-style: normal;
    font-size: 16px;
    color: @textcolor1;
}

#workspaces button {
    padding: 0px 5px;
    margin: 4px 3px;
    border-radius: 15px;
    border: 0px;
    color: @textcolor3;
    transition: all 0.3s ease-in-out;
}

#workspaces button.active {
    color: @textcolor1;
    background: @workspacesbackground2;
    border-radius: 15px;
    min-width: 40px;
    transition: all 0.3s ease-in-out;
}

#workspaces button.empty {
    background-color: white;
}

#workspaces button.visible {
    background-color: white;
}

#workspaces button:hover {
    color: @textcolor1;
    background: @workspacesbackground2;
    border-radius: 15px;
}
    ";
  };
}

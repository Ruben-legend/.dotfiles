{ ... }:{
  programs.kitty = {
    enable = true;    

    extraConfig = "

      background_opacity 0.5
      
      map alt+n new_tab 
      map alt+q close_tab
      map alt+[ next_tab
      map alt+] previous_tab

      map alt+w new_window
      map alt+e close_window
      map alt+l next_window
      map alt+h previous_window
    ";

  };
}

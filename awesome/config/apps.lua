local apps = {
    terminal = "kitty", 
    launcher = "rofi -show", 
    switcher = require("widgets.alt-tab"), 
    xrandr = "arandr", 
    screenshot = "scrot -e 'echo $f'", 
    volume = "pavucontrol", 
    appearance = "lxappearance", 
    browser = "firefox", 
    fileexplorer = "thunar",
    musicplayer = "pragha", 
    settings = "code /home/menghaoyu/awesome/"
}

user = {
    terminal = "kitty", 
    floating_terminal = "kitty"
}

return apps

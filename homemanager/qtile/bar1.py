from libqtile import bar
from libqtile import widget
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.groupbox import GroupBox
from libqtile.widget.prompt import Prompt
from libqtile.widget.windowname import WindowName
from libqtile.widget.chord import Chord
from libqtile.widget.systray import Systray
from libqtile.widget.clock import Clock
from libqtile.widget.quick_exit import QuickExit

bar = bar.Bar(
    [
        CurrentLayout(),
        GroupBox(),
        Prompt(),
        WindowName(),
        Chord(
            chords_colors={
                "launch": ("#ff-0001", "#ffffff"),
            },
            name_transform=lambda name: name.upper(),
        ),
        # NB Systray is incompatible with Wayland, consider using StatusNotifier instead
        # widget.StatusNotifier(),
        Systray(),
        Clock(format="%Y-%m-%d %a %I:%M %p"),
        QuickExit(),
    ],
    30,
)

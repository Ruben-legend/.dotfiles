from color import nord_fox
from libqtile import bar
from libqtile.widget.clock import Clock
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.groupbox import GroupBox
from libqtile.widget.net import Net
from libqtile.widget.systray import Systray
from libqtile.widget.windowname import WindowName
from libqtile.widget.cpu import CPU
from libqtile.widget.memory import Memory
from libqtile.widget.hdd import HDD
from unicodes import left_arrow, left_half_circle, right_arrow, right_half_circle

BAR_HEIGHT = 30
bar = bar.Bar(
    [
        GroupBox(
            disable_drag=True,
            active=nord_fox["magenta"],
            inactive=nord_fox["black"],
            highlight_method="line",
            block_highlight_text_color=nord_fox["fg_gutter"],
            borderwidth=0,
            highlight_color=nord_fox["bg"],
            background=nord_fox["bg"],
            # spacing=2
        ),
        right_arrow(nord_fox["red"], nord_fox["bg"]),
        CurrentLayout(
            background=nord_fox["red"],
            foreground=nord_fox["white"],
            margin=10,
        ),
        right_arrow(nord_fox["bg"], nord_fox["red"]),
        WindowName(background=nord_fox["bg"], foreground=nord_fox["fg"]),
        right_arrow(nord_fox["black"], nord_fox["bg"]),
        CPU(
            format=" {freq_current}GHz {load_percent}%",
            background=nord_fox["black"],
            foreground=nord_fox["pink"],
        ),
        Memory(
            format=" {MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
            measure_mem="G",
            background=nord_fox["black"],
            foreground=nord_fox["cyan"],
        ),
        Net(background=nord_fox["black"], foreground=nord_fox["green"]),
        # # Battery(
        # #     background=gruvbox['fg3'],
        # #     format='{char} {percent:2.0%} {hour:d}:{min:02d}'
        # # ),
        right_arrow(nord_fox["fg_gutter"], nord_fox["black"]),
        Systray(background=nord_fox["fg_gutter"]),
        left_arrow(nord_fox["fg_gutter"], nord_fox["black"]),
        Clock(
            background=nord_fox["black"],
            foreground=nord_fox["white"],
            format=" %Y-%m-%d %a %I:%M %p",
        ),
    ],
    BAR_HEIGHT,
    margin=8,
)

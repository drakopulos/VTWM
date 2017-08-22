---Instalation
   --- Dependencies
       - x11-utils (xwininfo, xfd, appres, xkill, xmessage)
       - x11-apps  (xcalc, xclipboard, xclock, bitmap, )
       - m4 (GNU M4 Macro Processing Language)
       - menu (debian menu program)
       - (optional-systemsounds) rplay
       - (optional-systemsounds) alsa-osspd (for pure alsa setup)
       - (recommended) pixmap (minimal xpm bitmap editor)
   --- Configure x-terminal-emulator, x-www-browser if haven't already.
   --- Move vtwm config directory to ~/.config/vtwm
   --- Install vtwm
   --- Install m4
   --- Install x11-utils and x11-apps
   --- Install menu (debian menu)
       - backup old vtwm menu method file (/etc/menu-methods/vtwm in Debian)
         - sudo cp /etc/menu-methods/vtwm{,.bak}
       - copy ~/.config/vtwm/deb-menu/vtwm-method to /etc/menu-methods/vtwm 
         - sudo cp ~/.config/vtwm/deb-menu/vtwm-method /etc/menu-methods/vtwm
   --- Create .xsession/.xinitrc file in ~/ directory with a minimum of 
       # xlcock or tty-clock, as well as the appres and xwininfo command from x11-utils are required 
       # for snap-clock-* layouts to be used. A minimum of 1 sec sleep is expected for m4 to calculate 
       xclock -digital -strftime %l":"%M" "%P -geometry 100x35+30+20 -name clock -title clock &
       sleep 1
       # vtwm -m (m4 support) -f (force start file)
       exec vtwm -m -f "$HOME/.config/vtwm/vtwm-env"
   --- startx


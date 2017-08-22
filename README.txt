
VTWM (vitual tabbed window manager), is one of many TWM descendants. 
It implements a Virtual Desktop (VD), meaning that what is currently on screen is just 
a portion of a larger workspace. What portion of the virtual desktop that is displayed
and whatever windows might be visible within it, are simple point-and-click operations within a scaled 
representation of the workspace.

If you are at all familiar with TWM, VTWM adds many features while still being very minimalist and very low in memory. 
Even more conservative in memory usage than it's father TWM from what I've experienced.
---xpm and xbm bitmap support for icons, window decorations
   - xbm bitmap icons will be color defined by user theme file
   - xpm bitmap icons have to be at least 3 colors (bug) and are not color defined by vtwm theme file
---m4 macro processing (everything under the sun that m4 can do pretty much)
   - i use for many geometries, calculations, system command calls, aliases, etc..
---system sounds (using rplay daemon :/)
   - I've created a few sounds using renoise that I find least annoying for start-up, quit and (de)iconify windows.
   - look at README.sound for full list of available functions
---virtual desktop for workspaces
   - My config defaults to 6 default workspaces 3x3 @ 24 scale (I rather enjoy and feels better when panning around a lot of windows) 
---many improvements to default configuration options plus more
   - man vtwm :) quite a bit of stuff there

VTWM is just a great, fun, hacky WM and has made me a proud, efficient stacker-tabber.
I've configured it to feel a lot like crunch-bunsen-bang-labs openbox experience
with added window operations. 

My configuration of VTWM is practically a full experience as far as 
menus - layouts - icons - themes - sounds - all configurable within the window manager.
You don't have to mess around with gtk themes to make title bars, windows, menus, icons or buttons
match your setup. That doesn't mean you won't like it if your in to gui file managers and such. 
I haven't (as of yet) supplied gtk themes to go with, but, my icon themes and lists have tried to take care of many different file managers
terminals etc. for people who enjoy them. (don't be shy to request icons, I'd rather enjoy making them.)

This is an excellent window manager for people who want a pretty openbox like WM from a simple, minimal install
without gtk stuff. 

Debian's default VTWM is compiled with built-in m4 macro support, rplay support for system sounds.
My configuration extends vtwm to be modular and easy to switch themes and layouts around.
I've used m4 to hack the configuration path up, making vtwm more modular in it's configuration. 
This is done using m4's built-in "include(/path/to/file/)" macro. The include paths are important to the 
modularity of my configuration.

A minimal chart of my include paths would be:
- .xinit/.xsession 
                  -> vtwm-env 
                             -> vtwm-main
                                         -> current-theme-file -> {fonts-list, cursor-list, icon-list, sounds-list} 
                                         -> current-layout-file (position / regions - icons, workspaces)
                                         -> vtwm-binds (keybinds and functions for window operations)
                                         -> vtwm-menus (many menus for your clicking pleasure)
                                         -> menudefs.hook (updated debian menu)
---Description of config files:
   ---vtwm-env file:  - basic m4 macro environment variables I've written as well as 
                        aliases to be further used down the configuration path for easier setup.
   ---vtwm-main:      - main configuration to set basic binary values, theme, layout, keybinds-file, menus-file, deb-menu-hooks
  
   ---themes:     - Xresource color files to match themes, and are set within the theme file
                  - 1 vtwm xcolor theme which attempts to use your xresource colors to design a basic color scheme
                  - sets wallpaper / background color
                  - sets font lists
                  - sets cursor list (not cursor theme but which cursors to use for window operations)
                  - sets all desktop colors including xbm icons, icon manager, window colors, window decorations-buttons
                  - sets system sound theme 
                  - sets icon theme file
   ---icon themes     - icons, icons-list
   ---cursors         - cursor list, and  my cli-curs cursor theme with different color schemes
   ---wallpapers      - mainly because you can set the wallpaper background color within the theme file)
   ---4 layouts       - 2 which automatically set regions and geometries of icons virtual desktop based off of clock position
   ---vtwm-binds      - keybinds and window functions
   ---vtwm-menus      - simple menus as well as debian menus
   ---deb menu        - modified vtwm debian menu method file, additional menu entries for stuff I like that isn't added to debians menu  

Themes =
Icon themes = mnml (black and white xbm, colored xpm), paper (converted paper icons to xpm format), retro (48x48 cool ol' skool clunk wear), symbos (another fun ol' skool style in xpm)

---Layout File Structure
   ---snap-clock uses clock dimensions to decide where other elements are placed
      - Requires clock title/named "clock" to be autostarted followed by a minimum 1sec sleep delay
        for macros to calculate placement. Macros use xwininfo to find clock dimensions.
      - finds clock geometries/dimensions
      - sets Virtual desktop position and dimensions
      - sets icons region and geometry
      - sets icon manager geometry and region
   ---simple layouts
      - regular vtwm geometries and regions 
        Same as above except doesn't need/snap clock
---Theme File Structure
   - set background
   - merge xcolors
   - set fonts-list
   - set cursors-list
   - set icons-theme-list
   - window/icon binaries
   - colors
   - pixmaps for windows,menus,icon manager, virtual desktop
   - set window buttons
   - system sounds

---Icon List structure
   - set icon's resource directory (where icons are)
   - macros to define icons width and height (important because layouts use this variable)
   - icon's application list (you can use info in windowops menu to find name and class of application)


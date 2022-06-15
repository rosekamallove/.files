import qualified Data.Map as M
import Data.Maybe (Maybe, fromJust, isNothing)
import Data.Monoid
import Graphics.X11.ExtraTypes.XF86
import System.Exit
import System.IO
import XMonad
import XMonad.Actions.CycleWS
import XMonad.Actions.GridSelect
import XMonad.Actions.SpawnOn
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.FadeWindows
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Layout.Gaps
import XMonad.Layout.Maximize
import XMonad.Layout.Minimize
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace (onWorkspace)
import XMonad.Layout.ResizableTile
import XMonad.Layout.SimpleFloat
import XMonad.Layout.Spacing
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig
import XMonad.Util.NamedScratchpad
import XMonad.Util.Run
import XMonad.Util.SpawnOnce
import XMonad.Util.WorkspaceCompare
import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myFont :: String
myFont = "xft:JetBrains Mono:SemiBold:size=10:antialias=true:hinting=true"
myTerminal = "alacritty"

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

myClickJustFocuses :: Bool
myClickJustFocuses = False

myBorderWidth = 2
myModMask = mod1Mask

myNormalBorderColor = "#282c34"
myFocusedBorderColor = "#98c379"

------------------------------------------------------------------------
myKeys conf@(XConfig {XMonad.modMask = modm}) =
  M.fromList $
    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf),
      -- launch rofi
      ((modm, xK_p), spawn "rofi -modi drun -theme slate  -show drun -icon-theme Papirus -show-icons"),
      -- launch dmenu
      ((modm, xK_d), spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\""),
      -- launch Brave
      ((modm .|. shiftMask, xK_g), spawn "brave-browser"),
      -- launch nautilus
      ((modm .|. shiftMask, xK_f), spawn "nautilus"),
      -- launch Qute Browser
      ((modm .|. shiftMask, xK_b), spawn "firefox"),
      -- launch audio
      ((modm .|. shiftMask, xK_a), spawn "pavucontrol"),
      -- Lock the screen
      ((modm .|. shiftMask, xK_l), spawn "xscreensaver-command --lock"),
      --Wallpaper
      ((modm .|. shiftMask, xK_w), spawn "nitrogen --set-zoom-fill --random ~/Wallpapers &"),
      -- launch Vs Code
      ((modm .|. shiftMask, xK_v), spawn "code"),
      -- launch  Sublime
      --Launch Bluetooth Manager
      ((modm .|. shiftMask, xK_b), spawn "blueman-manager"),

      ((modm .|. shiftMask, xK_s), spawn "gnome-screenshot -a"),
      -- close focused window
      ((modm .|. shiftMask, xK_c), kill),
      -- Rotate through the available layout algorithms
      ((modm, xK_space), sendMessage NextLayout),
      --  Reset the layouts on the current workspace to default
      ((modm .|. shiftMask, xK_space), setLayout $ XMonad.layoutHook conf),
      -- Resize viewed windows to the correct size
      ((modm, xK_n), refresh),
      -- Move focus to the next window
      ((modm, xK_Tab), windows W.focusDown),
      -- Move focus to the next window
      ((modm, xK_j), windows W.focusDown),
      -- Move focus to the previous window
      ((modm, xK_k), windows W.focusUp),
      -- Move focus to the master window
      ((modm, xK_m), windows W.focusMaster),
      -- Swap the focused window and the master window
      ((modm, xK_Return), windows W.swapMaster),
      -- Swap the focused window with the next window
      ((modm .|. shiftMask, xK_j), windows W.swapDown),
      -- Swap the focused window with the previous window
      ((modm .|. shiftMask, xK_k), windows W.swapUp),
      -- Shrink the master area
      ((modm, xK_h), sendMessage Shrink),
      -- Expand the master area
      ((modm, xK_l), sendMessage Expand),
      ((modm, xK_Up), sendMessage MirrorExpand),
      ((modm, xK_Down), sendMessage MirrorShrink),
      -- Push window back into tiling
      ((modm, xK_t), withFocused $ windows . W.sink),
      --    -- Increment the number of windows in the master area
      ((modm, xK_comma), sendMessage (IncMasterN 1)),
      --    -- Deincrement the number of windows in the master area
      ((modm, xK_period), sendMessage (IncMasterN (-1))),
      -- Brightness Control
      ((modm, xK_F7), spawn "light -A 5"),
      ((modm, xK_F6), spawn "light -U 5"),
      --Hide Xmobar
      ((modm, xK_b), sendMessage ToggleStruts),
      -- Quit xmonad
      ((modm .|. shiftMask, xK_q), io (exitWith ExitSuccess)),
      -- Restart xmonad
      ((modm, xK_q), spawn "xmonad --recompile; xmonad --restart"),
      -- Run xmessage with a summary of the default keybindings (useful for beginners)
      ((modm .|. shiftMask, xK_slash), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))
    ]
      ++
      --Switch Workspaces
      [ ((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9],
          (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
      ]
      ++
      --Switch Monitors
      [ ((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_R] [0 ..],
          (f, m) <- [(W.view, 0), (W.shift, shiftMask)]
      ]

------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
myMouseBindings (XConfig {XMonad.modMask = modm}) =
  M.fromList $
    -- mod-button1, Set the window to floating mode and move by dragging
    [ ( (modm, button1),
        ( \w ->
            focus w >> mouseMoveWindow w
              >> windows W.shiftMaster
        )
      ),
      -- mod-button2, Raise the window to the top of the stack
      ((modm, button2), (\w -> focus w >> windows W.shiftMaster)),
      -- mod-button3, Set the window to floating mode and resize by dragging
      ( (modm, button3),
        ( \w ->
            focus w >> mouseResizeWindow w
              >> windows W.shiftMaster
        )
      )
    ]

myTabConfig =
  def
    { fontName = myFont,
      activeColor = "#bd93f9",
      activeBorderColor = "#bd93f9",
      inactiveColor = "#282a36",
      inactiveBorderColor = "#282a36",
      activeTextColor = "#282c34",
      inactiveTextColor = "#abb2bf"
    }

------------------------------------------------------------------------
-- Layouts:
myLayout =
  onWorkspace "6: MEDIA" simpleFloat $
     spacing 8 $
      smartBorders $
          avoidStruts $
            minimize (mkToggle (NOBORDERS ?? FULL ?? EOT) (tiled ||| tabbed shrinkText myTabConfig ))
            --minimize (mkToggle (NOBORDERS ?? FULL ?? EOT) (tiled ||| tabbed shrinkText myTabConfig ||| Full ||| threeTall ||| Mirror threeTall))
  where
    tiled = ResizableTall nmaster delta ratio []
    threeTall = ThreeCol nmaster delta ratio
    -- The default number of windows in the master pane
    nmaster = 1
    -- Default proportion of screen occupied by master pane
    ratio = 1 / 2
    -- Percent of screen to increment by when resizing panes
    delta = 1 / 100



myWorkspaces = [" dev ", " www ", " sys ", " doc ", " vbox ", " chat ", " mus ", " vid ", " gfx "]
myWorkspaceIndices = M.fromList $ zipWith (,) myWorkspaces [1..] -- (,) == \x y -> (x,y)

clickable ws = "<action=xdotool key super+"++show i++">"++ws++"</action>"
    where i = fromJust $ M.lookup ws myWorkspaceIndices

------------------------------------------------------------------------
-- Window rules:
myManageHook =
  composeAll
    [ className =? "MPlayer"                             --> doFloat,
      className =? "Gvim"                                --> doFloat,
      className =? "pavucontrol"                         --> doFloat,
      className =? "gnome-calculator"                    --> doFloat,
      className =? "gnome-screenshot"                    --> doFloat,
      className =? "gnome-Screenshot"                    --> doFloat,
      className =? "Blueman-manager"                     --> doFloat,
      className =? "Pavucontrol"                         --> doFloat,
      className =? "Chat"                                --> doFloat,
      className =? "zoom"                                --> doFloat,
      className =? "Gimp"                                --> doFloat,
      className =? "Org.gnome.Nautilus"                  --> doFloat,
      resource =? "desktop_window"                       --> doIgnore,
      resource =? "crx_jlhoajbaojeilbdnlldgecmilgppanbh" --> doIgnore,
      resource =? "kdesktop"                             --> doIgnore
    ]

------------------------------------------------------------------------

------------------------------------------------------------------------
-- Startup hook
myStartupHook = do
  spawnOnce "bash ~/.xmonad/wallpaper/main.sh &"
  spawnOnce "systemctl start tlp start &"
  spawnOnce "tlp start &"
  spawnOnce "xfce4-power-manager &"
  spawnOnce "killall xfce4-power-manager" 


myLogHook = return()


------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.
-- Run xmonad with the settings you specify. No need to modify this.

main = do
  xmproc <- spawnPipe "xmobar -x 0 /home/rosekamallove/.xmonad/xmobar/xmobarrc.hs"
  xmonad $ docks defaults 

defaults =
  def
    { -- simple stuff
      terminal = myTerminal,
      focusFollowsMouse = myFocusFollowsMouse,
      clickJustFocuses = myClickJustFocuses,
      borderWidth = myBorderWidth,
      modMask = myModMask,
      workspaces = myWorkspaces,
      normalBorderColor = myNormalBorderColor,
      focusedBorderColor = myFocusedBorderColor,

      -- key bindings
      keys = myKeys,
      mouseBindings = myMouseBindings,

      -- hooks, layouts
      layoutHook = myLayout,
      manageHook = myManageHook,

      --handleEventHook    = myEventHook,
      logHook = myLogHook,
      startupHook = myStartupHook
    }

-- | Finally, a copy of the default bindings in simple textual tabular format.
help :: String
help =
  unlines
    [ "The default modifier key is 'alt'. Default keybindings:",
      "",
      "-- launching and killing programs",
      "mod-Shift-Enter  Launch xterminal",
      "mod-p            Launch dmenu",
      "mod-Shift-p      Launch gmrun",
      "mod-Shift-c      Close/kill the focused window",
      "mod-Space        Rotate through the available layout algorithms",
      "mod-Shift-Space  Reset the layouts on the current workSpace to default",
      "mod-n            Resize/refresh viewed windows to the correct size",
      "",
      "-- move focus up or down the window stack",
      "mod-Tab        Move focus to the next window",
      "mod-Shift-Tab  Move focus to the previous window",
      "mod-j          Move focus to the next window",
      "mod-k          Move focus to the previous window",
      "mod-m          Move focus to the master window",
      "",
      "-- modifying the window order",
      "mod-Return   Swap the focused window and the master window",
      "mod-Shift-j  Swap the focused window with the next window",
      "mod-Shift-k  Swap the focused window with the previous window",
      "",
      "-- resizing the master/slave ratio",
      "mod-h  Shrink the master area",
      "mod-l  Expand the master area",
      "",
      "-- floating layer support",
      "mod-t  Push window back into tiling; unfloat and re-tile it",
      "",
      "-- increase or decrease number of windows in the master area",
      "mod-comma  (mod-,)   Increment the number of windows in the master area",
      "mod-period (mod-.)   Deincrement the number of windows in the master area",
      "",
      "-- quit, or restart",
      "mod-Shift-q  Quit xmonad",
      "mod-q        Restart xmonad",
      "mod-[1..9]   Switch to workSpace N",
      "",
      "-- Workspaces & screens",
      "mod-Shift-[1..9]   Move client to workspace N",
      "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3",
      "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3",
      "",
      "-- Mouse bindings: default actions bound to mouse events",
      "mod-button1  Set the window to floating mode and move by dragging",
      "mod-button2  Raise the window to the top of the stack",
      "mod-button3  Set the window to floating mode and resize by dragging"
    ]

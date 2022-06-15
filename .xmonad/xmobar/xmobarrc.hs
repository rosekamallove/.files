Config {

         font               = "xft:Fira Code Nerd Font:pixelsize=11:weight=300:antialias=true:hinting=true"
       , additionalFonts    = []
			 , bgColor            = "#000000"
			 , fgColor            = "#abb2bf"
			 , alpha              = 190
			 , position           = Top
			 , textOffset         = -1
			 , iconOffset         = -1
			 , lowerOnStart       = True
			 , pickBroadest       = False
			 , persistent         = False
			 , hideOnStart        = False
			 , iconRoot           = "/home/rosekamallove/.xmonad/xpm" --default: "."
			 , allDesktops        = True
			 , overrideRedirect   = True

			 , commands =
			 [  					 Run Cpu           ["-t", " <total> %"
																			 ,"-L"           ,"3"
																			 ,"-H"           ,"50"
																			 ,"--normal"     ,"#8ec07c"
																			 ,"--high"       ,"#fb4934"
																			 ] 1


										, Run Memory         ["-t"," <usedratio>%"] 10


										, Run Com "light"    ["-G"] "brightness" 1

										, Run Com "bash ~/tasks.sh"     [""] "tasks" 1


										, Run Battery        [ "--template" , "<acstatus>"
																				 , "--Low"      , "10"        -- units: %
																				 , "--High"     , "80"        -- units: %
																				 , "--low"      , "#f77647"
																				 , "--normal"   , "#dde298"
																				 , "--high"     , "#b8e298"

																				 , "--" -- battery specific options
																									 -- discharging status
																									 , "-o"    , " <left>% <fc=#efaf5b> (<timeleft>) </fc>"
																									 -- AC "on" status
																									 , "-O"    , "<fc=#8ec07c>Charging</fc><fc=#b8bb26> (<left>)</fc>"
																									 -- charged status
																									 , "-i"    , "<fc=#8ec07c>Fully Charged</fc>"
																				 ] 1


										, Run DynNetwork     [ "--template" , "  <tx>  <rx>"
																				 , "--Low"      , "1000"       -- units: B/s
																				 , "--High"     , "5000"       -- units: B/s
																				 , "--low"      , "#98b7d1"
																				 , "--normal"   , "#98b7d1"
																				 , "--high"     , "#98b7d1"
																				 ] 10


										, Run Memory         [ "--template" ,"<usedratio>%"
																				 , "--Low"      , "20"        -- units: %
																				 , "--High"     , "90"        -- units: %
																				 , "--low"      , "#9e9e9e"
																				 , "--normal"   , "#ead581"
																				 , "--high"     , "#f77647"
																				 ] 10

										, Run Date "%a %b %_d %H:%M" "date" 10
										, Run UnsafeStdinReader
										]
			 , sepChar = "%"
			 , alignSep = "}{"
			 , template = "<box type=Bottom width=2 mb=0 color=#61afef><fc=#61afef>  </fc></box> }<box type=Bottom width=2 mb=0 color=#c678dd>  <fc=#c678dd> %date%</fc>  </box>{<box type=Bottom width=2 mb=0 color=#e5c07b>  <fc=#e5c07b> %brightness% </fc></box>  <box type=Bottom width=2 mb=0 color=#abb2bf><fc=#98c379>%cpu%</fc>  <fc=#938374>%memory%</fc></box> <box type=Bottom width=2 mb=0 color=#56b6c2><fc=#56b6c2>%dynnetwork%</fc> </box>  <box type=Bottom width=2 mb=0 color=#98c379>  %battery% </box>"

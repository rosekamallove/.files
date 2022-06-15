	Config { 

				 font               = "xft:Fira Code Nerd Font:pixelsize=11:weight=800:antialias=true:hinting=true"
			 , additionalFonts    = []
			 , border             = BottomB
			 , borderColor        = "#0a0e14"
			 , bgColor            = "#0a0e14"
			 , fgColor            = "#b3b1ad"
			 , alpha              = 255 
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

										, Run Com "./tasks.sh"     [""] "tasks" 1


										, Run Battery        [ "--template" , "<acstatus>"
																				 , "--Low"      , "10"        -- units: %
																				 , "--High"     , "80"        -- units: %
																				 , "--low"      , "#f77647"
																				 , "--normal"   , "#dde298"
																				 , "--high"     , "#b8e298"

																				 , "--" -- battery specific options
																									 -- discharging status
																									 , "-o"    , " <left>% <fc=#ebcb8b> (<timeleft>) </fc>"
																									 -- AC "on" status
																									 , "-O"    , "<fc=#a3be8c></fc><fc=#ebcb8b> (<left>)</fc>"
																									 -- charged status
																									 , "-i"    , "<fc=#a3be8c></fc>"
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
										]
			 , sepChar = "%"
			 , alignSep = "}{"
			 , template = "<fc=#39bae6>  </fc> <fc=#e6b450> %tasks% </fc>}  <fc=#91b362> %date%</fc> { <fc=#ffee99> %brightness% </fc>  <fc=#c2d94c>%cpu%</fc>   <fc=#ffee99> %memory% </fc> <fc=#6994bf>%dynnetwork%</fc>  %battery% "

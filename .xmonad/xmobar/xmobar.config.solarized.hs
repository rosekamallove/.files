	Config { 

			 font               = "xft:Fira Code Nerd Font:pixelsize=12:weight=800:antialias=true:hinting=true"
			 , additionalFonts    = []
			 , bgColor            = "#002b36"
			 , fgColor            = "#839496"
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
																			 ,"--normal"     ,"#839496"
																			 ,"--high"       ,"#d30102"
																			 ] 1
										, Run Memory         ["-t"," <usedratio>%"] 10
										, Run Com "light"    ["-G"] "brightness" 1
										, Run Com "./tasks.sh"     [""] "tasks" 1
										, Run Battery        [ "--template" , "<acstatus>"
																				 , "--Low"      , "10"        -- units: %
																				 , "--High"     , "80"        -- units: %
																				 , "--low"      , "#d30102"
																				 , "--normal"   , "#839496"
																				 , "--high"     , "#859900"

																				 , "--" -- battery specific options
																									 -- discharging status
																									 , "-o"    , " <left>% <fc=#b58900> (<timeleft>) </fc>"
																									 -- AC "on" status
																									 , "-O"    , "<fc=#a3be8c></fc><fc=#859900> (<left>)</fc>"
																									 -- charged status
																									 , "-i"    , "<fc=#859900></fc>"
																				 ] 1
										, Run DynNetwork     [ "--template" , "  <tx>  <rx>"
																				 , "--Low"      , "1000"       -- units: B/s
																				 , "--High"     , "5000"       -- units: B/s
																				 , "--low"      , "#d30102"
																				 , "--normal"   , "#2aa198"
																				 , "--high"     , "#859900"
																				 ] 10


										, Run Memory         [ "--template" ,"<usedratio>%"
																				 , "--Low"      , "20"        -- units: %
																				 , "--High"     , "90"        -- units: %
																				 , "--low"      , "#859900"
																				 , "--normal"   , "#839496"
																				 , "--high"     , "#e67e80"
																				 ] 10

										, Run Date "%a %b %_d %H:%M" "date" 10
										]
			 , sepChar = "%"
			 , alignSep = "}{"
			 , template = "<fc=#268bd2>  </fc> <fc=#2aa198> %tasks% </fc>}   %date% { <fc=#b58900> %brightness% </fc>  <fc=#b58900>%cpu%</fc>   <fc=#839496> %memory% </fc> <fc=#2aa198>%dynnetwork%</fc>  %battery% "

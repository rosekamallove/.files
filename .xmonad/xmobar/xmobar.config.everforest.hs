	Config { 

			 font               = "xft:Fira Code Nerd Font:pixelsize=12:weight=800:antialias=true:hinting=true"
			 , additionalFonts    = []
			 , bgColor            = "#2b3339"
			 , fgColor            = "#d3c6aa"
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
																			 ,"--normal"     ,"#dbbc7f"
																			 ,"--high"       ,"#83c092"
																			 ] 1
										, Run Memory         ["-t"," <usedratio>%"] 10
										, Run Com "light"    ["-G"] "brightness" 1
										, Run Com "./tasks.sh"     [""] "tasks" 1
										, Run Battery        [ "--template" , "<acstatus>"
																				 , "--Low"      , "10"        -- units: %
																				 , "--High"     , "80"        -- units: %
																				 , "--low"      , "#e67e80"
																				 , "--normal"   , "#83c6aa"
																				 , "--high"     , "#83c092"

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
																				 , "--low"      , "#e67e80"
																				 , "--normal"   , "#d3c6aa"
																				 , "--high"     , "#83c092"
																				 ] 10


										, Run Memory         [ "--template" ,"<usedratio>%"
																				 , "--Low"      , "20"        -- units: %
																				 , "--High"     , "90"        -- units: %
																				 , "--low"      , "#d3c6aa"
																				 , "--normal"   , "#dbbc7f"
																				 , "--high"     , "#e67e80"
																				 ] 10

										, Run Date "%a %b %_d %H:%M" "date" 10
										]
			 , sepChar = "%"
			 , alignSep = "}{"
			 , template = "<fc=#7fbbb3>  </fc> <fc=#d699b6> %tasks% </fc>}  <fc=#83c092> %date%</fc> { <fc=#dbbc7f> %brightness% </fc>  <fc=#c2d94c>%cpu%</fc>   <fc=#ffee99> %memory% </fc> <fc=#6994bf>%dynnetwork%</fc>  %battery% "

	Config { 

				 font               = "xft:Fira Code Nerd Font:pixelsize=11:weight=800:antialias=true:hinting=true"
			 , additionalFonts    = []
			 , border             = BottomB
			 , borderColor        = "#282828"
			 , bgColor            = "#282828"
			 , fgColor            = "#fbf1c7"
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
																				 , "--low"      , "#fb4934"
																				 , "--normal"   , "#458588"
																				 , "--high"     , "#8ec07c"

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
																				 , "--low"      , "#fb4934"
																				 , "--normal"   , "#458588"
																				 , "--high"     , "#8ec07c"
																				 ] 10


										, Run Memory         [ "--template" ,"<usedratio>%"
																				 , "--Low"      , "20"        -- units: %
																				 , "--High"     , "90"        -- units: %
																				 , "--low"      , "#8ec07c"
																				 , "--normal"   , "#fe8019"
																				 , "--high"     , "#fb4934"
																				 ] 10

										, Run Date "%a %b %_d %H:%M" "date" 10
										]
			 , sepChar = "%"
			 , alignSep = "}{"
			 , template = "<fc=#458588>  </fc> <fc=#e6b450> %tasks% </fc>}  <fc=#8ec07c> %date%</fc> { <fc=#fabd2f> %brightness% </fc>  <fc=#c2d94c>%cpu%</fc>   <fc=#ffee99> %memory% </fc> <fc=#6994bf>%dynnetwork%</fc>  %battery% "

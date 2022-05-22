#Starts the Game
execute as @a[tag=abba_host] if score @s start_abba matches ..0 run scoreboard players enable @s start_abba
execute as @a[tag=abba_host] if score @s start_abba matches 1.. run scoreboard players operation timer_m timer = @s start_abba
execute as @a if score @s start_abba matches 1.. run function abba:main/start
execute as @a[tag=abba_host] if score @s start_abba matches 1.. run scoreboard players set @s start_abba 0

#Ends the Game
execute as @a[tag=abba_host] run scoreboard players enable @s end_abba
execute as @a if score @s end_abba matches 1 run function abba:main/restart
execute as @a if score @s end_abba matches 1 run scoreboard players reset @a end_abba

#Rules
scoreboard players enable @a[tag=playing_abba] abba_rules
execute as @a if score @s abba_rules matches 1 run function abba:config/rules
execute as @a if score @s abba_rules matches 1 run scoreboard players reset @s abba_rules

#Option Menu
execute as @a[tag=abba_host] run scoreboard players enable @s abba_options
execute as @a if score @s abba_options matches 1 run function abba:config/config
execute as @a if score @s abba_options matches 1 run scoreboard players reset @s abba_options

#Join & Leave
execute as @a[scores={join_abba=..0},tag=!abba_host] run scoreboard players enable @s join_abba
execute as @a if score @s join_abba matches 1 run scoreboard players enable @s leave_abba
execute as @a if score @s join_abba matches 1 run tag @s add playing_abba
execute as @a if score @s join_abba matches 1 run scoreboard players add players abba_players 1
execute as @a if score @s join_abba matches 1 run tellraw @a[tag=abba_host] [{"text": ""},{"selector":"@s","color": "#ffcf40"},{"text": " joined the ABBA!","color": "#ffcf40"}]
execute as @a if score @s join_abba matches 1 run team join abba
execute as @a if score @s join_abba matches 1 run function abba:config/leave
execute as @a if score @s join_abba matches 1 run scoreboard players set @s join_abba 2
execute as @a if score @s leave_abba matches 1 run tag @s remove playing_abba
execute as @a if score @s leave_abba matches 1 run tag @s add left_abba
execute as @a if score @s leave_abba matches 1 run tag @s remove first_leave_m
execute as @a if score @s leave_abba matches 1 run tellraw @a[tag=abba_host] [{"text": ""},{"selector":"@s","color": "#ffcf40"},{"text": " left the ABBA!","color": "#ffcf40"}]
execute as @a if score @s leave_abba matches 1 run scoreboard players remove players abba_players 1
execute as @a if score @s leave_abba matches 1 run scoreboard players set @s join_abba 0
execute as @a if score @s leave_abba matches 1 run function abba:config/join
execute as @a if score @s leave_abba matches 1 run scoreboard players reset @s leave_abba

#Points Config Triggers
execute as @a[tag=abba_host] run scoreboard players enable @s coal
execute as @a[tag=abba_host] run scoreboard players enable @s copper
execute as @a[tag=abba_host] run scoreboard players enable @s iron
execute as @a[tag=abba_host] run scoreboard players enable @s gold
execute as @a[tag=abba_host] run scoreboard players enable @s redstone
execute as @a[tag=abba_host] run scoreboard players enable @s lapis
execute as @a[tag=abba_host] run scoreboard players enable @s diamond
execute as @a[tag=abba_host] run scoreboard players enable @s emerald

#==========================
#       Settings
#==========================

#Resets all points to 0
scoreboard players enable @a[tag=abba_host] reset
execute as @a[tag=abba_host] if score @s reset matches 1.. run function abba:config/points/reset
execute as @a[tag=abba_host] if score @s reset matches 1.. run scoreboard players set @s reset 0

#Default point set
execute as @a[tag=abba_host] run scoreboard players enable @s default
execute as @a[tag=abba_host,scores={default=1}] run function abba:config/points/default
execute as @a[tag=abba_host] run scoreboard players set @s default 0

#Leaderboard On/Off
scoreboard players enable @a[tag=abba_host] scoreboard
execute as @a[tag=abba_host] if score @s scoreboard matches 1 run function abba:config/config
execute as @a[tag=abba_host] if score @s scoreboard matches 1 run scoreboard players add @s scoreboard 1
execute as @a[tag=abba_host] if score @s scoreboard matches 2 run scoreboard objectives setdisplay sidebar.team.white leaderboard
execute as @a[tag=abba_host] if score @s scoreboard matches 2 run scoreboard players add @s scoreboard 1
execute as @a[tag=abba_host] if score @s scoreboard matches 4 run scoreboard objectives setdisplay sidebar.team.white
execute as @a[tag=abba_host] if score @s scoreboard matches 4 run function abba:config/config
execute as @a[tag=abba_host] if score @s scoreboard matches 4 run scoreboard players add @s scoreboard 1
execute as @a[tag=abba_host] if score @s scoreboard matches 6 run scoreboard players set @s scoreboard 1

#Timer On/Off
scoreboard players enable @a[tag=abba_host] show_timer
execute as @a[tag=abba_host] if score @s show_timer matches 1 run function abba:config/config
execute as @a[tag=abba_host] if score @s show_timer matches 1..2 run scoreboard players set @s show_timer 3
execute as @a[tag=abba_host] if score @s show_timer matches 4 run function abba:config/config
execute as @a[tag=abba_host] if score @s show_timer matches 4 run scoreboard players add @s show_timer 1
execute as @a[tag=abba_host] if score @s show_timer matches 6 run scoreboard players set @s show_timer 1

#Executes every game tick
schedule function abba:triggers/activate_triggers 1t
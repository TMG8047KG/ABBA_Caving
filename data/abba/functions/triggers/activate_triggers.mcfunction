#Starts the Game
execute as @a[tag=abba_host] if score @s start_abba matches ..0 run scoreboard players enable @s start_abba
execute as @a[tag=abba_host] if score @s start_abba matches 1.. run scoreboard players operation timer_m timer = @s start_abba
execute as @a if score @s start_abba matches 1.. run function abba:main/start
execute as @a[tag=abba_host] if score @s start_abba matches 1.. run scoreboard players set @s start_abba 0

#Ends the Game
execute as @a[tag=abba_host] run scoreboard players enable @s end_abba
execute as @a if score @s end_abba matches 1 run function abba:main/end
execute as @a if score @s end_abba matches 1 run scoreboard players reset @a end_abba

#Join & Leave
execute as @a[scores={join_abba=..0},tag=!abba_host] run scoreboard players enable @s join_abba
execute as @a if score @s join_abba matches 1 run scoreboard players enable @s leave_abba
execute as @a if score @s join_abba matches 1 run tag @s add playing_abba
execute as @a if score @s join_abba matches 1 run scoreboard players set @s join_abba 2
execute as @a if score @s join_abba matches 2 run function abba:config/leave
execute as @a if score @s leave_abba matches 1 run tag @s remove playing_abba
execute as @a if score @s leave_abba matches 1 run scoreboard players reset @s join_abba
execute as @a if score @s leave_abba matches 1 run scoreboard players reset @s leave_abba
execute as @a if score @s leave_abba matches 1 run scoreboard players set @s join_abba 0

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
execute as @a[tag=abba_host] if score @s scoreboard matches 1 run scoreboard objectives setdisplay sidebar leaderboard
execute as @a[tag=abba_host] if score @s scoreboard matches 1 run tellraw @s {"text": "Leaderboard is enabled!","color": "dark_green"}
execute as @a[tag=abba_host] if score @s scoreboard matches 1 run scoreboard players add @s scoreboard 1
execute as @a[tag=abba_host] if score @s scoreboard matches 3 run scoreboard objectives setdisplay sidebar
execute as @a[tag=abba_host] if score @s scoreboard matches 3 run tellraw @s {"text": "Leaderboard is disabled!","color": "dark_red"}
execute as @a[tag=abba_host] if score @s scoreboard matches 3 run scoreboard players set @s scoreboard 0

#Timer On/Off
scoreboard players enable @a[tag=abba_host] show_timer
execute as @a[tag=abba_host] if score @s show_timer matches 1 run tellraw @s {"text": "ActionBar Timer is enabled!","color": "dark_green"}
execute as @a[tag=abba_host] if score @s show_timer matches 1 run scoreboard players add @s show_timer 1
execute as @a[tag=abba_host] if score @s show_timer matches 3 run tellraw @s {"text": "ActionBar Timer is disabled!","color": "dark_red"}
execute as @a[tag=abba_host] if score @s show_timer matches 3 run scoreboard players set @s show_timer 0

#Executes every game tick
schedule function abba:triggers/activate_triggers 1t
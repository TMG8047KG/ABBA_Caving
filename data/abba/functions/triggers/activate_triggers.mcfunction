#Starts the Game
execute as @a[tag=abba_host] run scoreboard players enable @s start_abba
execute as @a if score @s start_abba matches 1 run function abba:main/start
execute as @a[tag=abba_host, scores={start_abba=1}] run scoreboard players operation timer_m timer = @s start_abba
execute as @a[tag=abba_host, scores={start_abba=1}] run scoreboard players set @s start_abba 2

#Ends the Game
execute as @a[tag=abba_host] run scoreboard players enable @s end_abba
execute as @a if score @s end_abba matches 1 run function abba:main/end
execute as @a if score @s end_abba matches 1 run scoreboard players reset @a end_abba

#Join & Leave
execute as @a[scores={join_abba=..0},tag=!abba_host] run scoreboard players enable @s join_abba
execute as @a if score @s join_abba matches 1 run scoreboard players enable @s leave_abba
execute as @a if score @s join_abba matches 1 run tag @s add playing_abba
execute as @a if score @s leave_abba matches 1 run tag @s remove playing_abba
execute as @a if score @s leave_abba matches 1 run scoreboard players reset @s join_abba
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

#Default point set
execute as @a[tag=abba_host] run scoreboard players enable @s default
execute as @a[tag=abba_host,scores={default=1}] run function abba:config/points/default
execute as @a[tag=abba_host] run scoreboard players set @s default 0

#Executes every game tick
schedule function abba:triggers/activate_triggers 1t
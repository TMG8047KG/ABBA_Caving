scoreboard players add start start_timer 1

execute if score start start_timer matches 1 run title @a[tag=playing_abba] title {"text": "3","color": "green"}
execute if score start start_timer matches 2 run title @a[tag=playing_abba] title {"text": "2","color": "yellow"}
execute if score start start_timer matches 3 run title @a[tag=playing_abba] title {"text": "1","color": "red"}

#execute as @a[tag=abba_host] if score start start_timer matches 4 run scoreboard players operation timer_m timer = @s start_abba
execute if score start start_timer matches 4 run function abba:main/timer
execute if score start start_timer matches 4 run function abba:main/add_points
execute if score start start_timer matches 4 run function abba:points/counting_points
execute if score start start_timer matches 4 run title @a[tag=playing_abba] title {"text": "Start!","color": "gold"}

execute if score start start_timer matches 4 run schedule clear abba:main/start
schedule function abba:main/start 1s
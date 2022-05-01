#The Fucking timer
scoreboard players operation timer_temp timer = timer_m timer
execute if score timer_s timer matches 0 run scoreboard players remove timer_m timer 1
execute if score timer_m timer < timer_temp timer run scoreboard players set timer_s timer 60
execute if score timer_s timer matches 1.. run scoreboard players remove timer_s timer 1
execute if score timer_m timer matches 0 run execute if score timer_s timer matches 0 run function abba:main/end
execute if score timer_m timer matches 0 run execute if score timer_s timer matches 0 run schedule function abba:main/restart 30s

#Alerts
execute if score timer_m timer matches 5 run execute if score timer_s timer matches 0 run tellraw @a[tag=playing_abba] {"text": "5 minutes left!","color": "gold"}
execute if score timer_m timer matches 1 run execute if score timer_s timer matches 0 run tellraw @a[tag=playing_abba] {"text": "1 minute left!","color": "gold"}

execute if score timer_s timer matches 5 run execute if score timer_m timer matches 0 run tellraw @a[tag=playing_abba] {"text": "5","color": "green"}
execute if score timer_s timer matches 4 run execute if score timer_m timer matches 0 run tellraw @a[tag=playing_abba] {"text": "4","color": "yellow"}
execute if score timer_s timer matches 3 run execute if score timer_m timer matches 0 run tellraw @a[tag=playing_abba] {"text": "3","color": "gold"}
execute if score timer_s timer matches 2 run execute if score timer_m timer matches 0 run tellraw @a[tag=playing_abba] {"text": "2","color": "red"}
execute if score timer_s timer matches 1 run execute if score timer_m timer matches 0 run tellraw @a[tag=playing_abba] {"text": "1","color": "dark_red"}


#Show the time
execute as @a[tag=playing_abba,scores={show_timer=2..3}] run title @a[tag=playing_abba] actionbar [{"score":{"name": "timer_m","objective": "timer"}},{"text": " | "},{"score": {"name": "timer_s","objective": "timer"}}]

#Activates every second
schedule function abba:main/timer 1s
execute if score timer_m timer matches 0 run execute if score timer_s timer matches 0 run schedule clear abba:main/timer
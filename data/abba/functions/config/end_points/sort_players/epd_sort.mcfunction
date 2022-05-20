scoreboard players set $max end_diamond 0
scoreboard players operation $max end_diamond > @a[tag=playing_abba,tag=!found] end_diamond
tag @a remove just_found
execute as @a[tag=playing_abba,tag=!found] if score @s end_diamond = $max end_diamond run tag @s add just_found
tag @a[tag=just_found,limit=1] add found
execute as @e[tag=found,tag=just_found] run tellraw @a[tag=playing_abba] [{"text": " "},{"selector":"@s","color": "#4aedd9"},{"text": " mined: ","color": "#4aedd9"},{"score":{"name": "@s","objective": "end_diamond"},"color": "#aba9bf"}]

scoreboard players remove $top abba_players 1
execute if score $top abba_players matches 1.. if entity @a[tag=playing_abba,tag=!found] run function abba:config/end_points/sort_players/epd_sort
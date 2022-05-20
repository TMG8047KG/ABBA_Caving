scoreboard players set $max end_coal 0
scoreboard players operation $max end_coal > @a[tag=playing_abba,tag=!found] end_coal
tag @a remove just_found
execute as @a[tag=playing_abba,tag=!found] if score @s end_coal = $max end_coal run tag @s add just_found
tag @a[tag=just_found,limit=1] add found
execute as @e[tag=found,tag=just_found] run tellraw @a[tag=playing_abba] [{"text": " "},{"selector":"@s","color": "#393e46"},{"text": " mined: ","color": "#393e46"},{"score":{"name": "@s","objective": "end_coal"},"color": "#aba9bf"}]

scoreboard players remove $top abba_players 1
execute if score $top abba_players matches 1.. if entity @a[tag=playing_abba,tag=!found] run function abba:config/end_points/sort_players/epc_sort
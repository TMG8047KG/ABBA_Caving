scoreboard players set $max end_copper 0
scoreboard players operation $max end_copper > @a[tag=playing_abba,tag=!found] end_copper
tag @a remove just_found
execute as @a[tag=playing_abba,tag=!found] if score @s end_copper = $max end_copper run tag @s add just_found
tag @a[tag=just_found,limit=1] add found
execute as @e[tag=found,tag=just_found] run tellraw @a[tag=playing_abba] [{"text": " "},{"selector":"@s","color": "#c15a36"},{"text": " mined: ","color": "#c15a36"},{"score":{"name": "@s","objective": "end_copper"},"color": "#aba9bf"}]

scoreboard players remove $top abba_players 1
execute if score $top abba_players matches 1.. if entity @a[tag=playing_abba,tag=!found] run function abba:config/end_points/sort_players/epcp_sort
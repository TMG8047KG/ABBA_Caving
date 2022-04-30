execute as @a[scores={setup_abba=..0}] if score host host matches ..0 run scoreboard players enable @s setup_abba
execute as @a if score @s setup_abba matches 1 run tag @s add abba_host
execute as @a if score @s setup_abba matches 1 run tag @s add playing_abba
execute as @a if score @s setup_abba matches 1 run function #abba:load
execute as @a if score @s setup_abba matches 1 run function abba:config/join
execute as @a if score @s setup_abba matches 1 run scoreboard players set host host 2
execute as @a if score @s setup_abba matches 1 run scoreboard players set @a setup_abba 2

schedule function abba:setup_trigger 1t
execute as @a if score @s setup matches 0 run scoreboard players enable @s setup
execute as @a if score @s setup matches 1 run tag @s add abba_host
execute as @a if score @s setup matches 1 run function abba:load
execute as @a if score @s setup matches 1 run scoreboard players set @a setup 2

#St
execute as @a[tag=abba_host] run scoreboard players enable @s start
execute as @a if score @s start matches 1 run function abba:start
execute as @a[tag=abba_host, scores={start=1}] run scoreboard players set @s start 2

execute as @a[tag=abba_host] run scoreboard players enable @s coal
execute as @a[tag=abba_host] run scoreboard players enable @s copper
execute as @a[tag=abba_host] run scoreboard players enable @s iron
execute as @a[tag=abba_host] run scoreboard players enable @s gold
execute as @a[tag=abba_host] run scoreboard players enable @s redstone
execute as @a[tag=abba_host] run scoreboard players enable @s lapis
execute as @a[tag=abba_host] run scoreboard players enable @s diamond
execute as @a[tag=abba_host] run scoreboard players enable @s emerald

schedule function abba:triggers/activate_triggers 1t
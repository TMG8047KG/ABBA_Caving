execute as @a if score @s p_coal matches 1.. run scoreboard players operation @s ep_coal += coal coal
execute as @a if score @s p_coal matches 1.. run scoreboard players operation @s leaderboard += coal coal
execute as @a if score @s p_coal matches 1.. run scoreboard players add @s end_coal 1
execute as @a if score @s p_coal matches 1.. run scoreboard players remove @s p_coal 1

execute as @a if score @s p_copper matches 1.. run scoreboard players operation @s ep_copper += copper copper
execute as @a if score @s p_copper matches 1.. run scoreboard players operation @s leaderboard += copper copper
execute as @a if score @s p_copper matches 1.. run scoreboard players add @s end_copper 1
execute as @a if score @s p_copper matches 1.. run scoreboard players remove @s p_copper 1

execute as @a if score @s p_iron matches 1.. run scoreboard players operation @s ep_iron += iron iron
execute as @a if score @s p_iron matches 1.. run scoreboard players operation @s leaderboard += iron iron
execute as @a if score @s p_iron matches 1.. run scoreboard players add @s end_iron 1
execute as @a if score @s p_iron matches 1.. run scoreboard players remove @s p_iron 1

execute as @a if score @s p_gold matches 1.. run scoreboard players operation @s ep_gold += gold gold
execute as @a if score @s p_gold matches 1.. run scoreboard players operation @s leaderboard += gold gold
execute as @a if score @s p_gold matches 1.. run scoreboard players add @s end_gold 1
execute as @a if score @s p_gold matches 1.. run scoreboard players remove @s p_gold 1

execute as @a if score @s p_redstone matches 1.. run scoreboard players operation @s ep_redstone += redstone redstone
execute as @a if score @s p_redstone matches 1.. run scoreboard players operation @s leaderboard += redstone redstone
execute as @a if score @s p_redstone matches 1.. run scoreboard players add @s end_redstone 1
execute as @a if score @s p_redstone matches 1.. run scoreboard players remove @s p_redstone 1

execute as @a if score @s p_lapis matches 1.. run scoreboard players operation @s ep_lapis += lapis lapis
execute as @a if score @s p_lapis matches 1.. run scoreboard players operation @s leaderboard += lapis lapis
execute as @a if score @s p_lapis matches 1.. run scoreboard players add @s end_lapis 1
execute as @a if score @s p_lapis matches 1.. run scoreboard players remove @s p_lapis 1

execute as @a if score @s p_diamond matches 1.. run scoreboard players operation @s ep_diamond += diamond diamond
execute as @a if score @s p_diamond matches 1.. run scoreboard players operation @s leaderboard += diamond diamond
execute as @a if score @s p_diamond matches 1.. run scoreboard players add @s end_diamond 1
execute as @a if score @s p_diamond matches 1.. run scoreboard players remove @s p_diamond 1

execute as @a if score @s p_emerald matches 1.. run scoreboard players operation @s ep_emerald += emerald emerald
execute as @a if score @s p_emerald matches 1.. run scoreboard players operation @s leaderboard += emerald emerald
execute as @a if score @s p_emerald matches 1.. run scoreboard players add @s end_emerald 1
execute as @a if score @s p_emerald matches 1.. run scoreboard players remove @s p_emerald 1

schedule function abba:points/counting_points 1t
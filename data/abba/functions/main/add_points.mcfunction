#Checks if the predicate is true and if the score of the ores is 1

#Coal
execute as @a[predicate=abba:pickaxe,scores={b_coal=1}] run scoreboard players add @s p_coal 1
execute as @a[predicate=abba:pickaxe,scores={b_d_coal=1}] run scoreboard players add @s p_coal 1
#Copper
execute as @a[predicate=abba:pickaxe,scores={b_copper=1}] run scoreboard players add @s p_copper 1
execute as @a[predicate=abba:pickaxe,scores={b_d_copper=1}] run scoreboard players add @s p_copper 1
#Iron
execute as @a[predicate=abba:pickaxe,scores={b_iron=1}] run scoreboard players add @s p_iron 1
execute as @a[predicate=abba:pickaxe,scores={b_d_iron=1}] run scoreboard players add @s p_iron 1
#Gold
execute as @a[predicate=abba:pickaxe,scores={b_gold=1}] run scoreboard players add @s p_gold 1
execute as @a[predicate=abba:pickaxe,scores={b_d_gold=1}] run scoreboard players add @s p_gold 1
#Redstone
execute as @a[predicate=abba:pickaxe,scores={b_redstone=1}] run scoreboard players add @s p_redstone 1
execute as @a[predicate=abba:pickaxe,scores={b_d_redstone=1}] run scoreboard players add @s p_redstone 1
#Lapis
execute as @a[predicate=abba:pickaxe,scores={b_lapis=1}] run scoreboard players add @s p_lapis 1
execute as @a[predicate=abba:pickaxe,scores={b_d_lapis=1}] run scoreboard players add @s p_lapis 1
#Diamond
execute as @a[predicate=abba:pickaxe,scores={b_diamond=1}] run scoreboard players add @s p_diamond 1
execute as @a[predicate=abba:pickaxe,scores={b_d_diamond=1}] run scoreboard players add @s p_diamond 1
#Emerald
execute as @a[predicate=abba:pickaxe,scores={b_emerald=1}] run scoreboard players add @s p_emerald 1
execute as @a[predicate=abba:pickaxe,scores={b_d_emerald=1}] run scoreboard players add @s p_emerald 1

#Resets all scoreboards that count the mined blocks
execute as @a[scores={b_coal=1..}] run scoreboard players reset @s b_coal
execute as @a[scores={b_d_coal=1..}] run scoreboard players reset @s b_d_coal

execute as @a[scores={b_copper=1..}] run scoreboard players reset @s b_copper
execute as @a[scores={b_d_copper=1..}] run scoreboard players reset @s b_d_copper

execute as @a[scores={b_iron=1..}] run scoreboard players reset @s b_iron
execute as @a[scores={b_d_iron=1..}] run scoreboard players reset @s b_d_iron

execute as @a[scores={b_gold=1..}] run scoreboard players reset @s b_gold
execute as @a[scores={b_d_gold=1..}] run scoreboard players reset @s b_d_gold

execute as @a[scores={b_redstone=1..}] run scoreboard players reset @s b_redstone
execute as @a[scores={b_d_redstone=1..}] run scoreboard players reset @s b_d_redstone

execute as @a[scores={b_lapis=1..}] run scoreboard players reset @s b_lapis
execute as @a[scores={b_d_lapis=1..}] run scoreboard players reset @s b_d_lapis

execute as @a[scores={b_diamond=1..}] run scoreboard players reset @s b_diamond
execute as @a[scores={b_d_diamond=1..}] run scoreboard players reset @s b_d_diamond

execute as @a[scores={b_emerald=1..}] run scoreboard players reset @s b_emerald
execute as @a[scores={b_d_emerald=1..}] run scoreboard players reset @s b_d_emerald

#execute the function every tick
schedule function abba:main/add_points 1t
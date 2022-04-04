#Checks if there is a change in the points (if true runs a function)
execute as @a[tag=abba_host] unless score coal coal = @s coal run function abba:config/points/return
execute as @a[tag=abba_host] unless score copper copper = @s copper run function abba:config/points/return
execute as @a[tag=abba_host] unless score iron iron = @s iron run function abba:config/points/return
execute as @a[tag=abba_host] unless score gold gold = @s gold run function abba:config/points/return
execute as @a[tag=abba_host] unless score redstone redstone = @s redstone run function abba:config/points/return
execute as @a[tag=abba_host] unless score lapis lapis = @s lapis run function abba:config/points/return
execute as @a[tag=abba_host] unless score diamond diamond = @s diamond run function abba:config/points/return
execute as @a[tag=abba_host] unless score emerald emerald = @s emerald run function abba:config/points/return

#Runs the function every tick
schedule function abba:config/points/if_changes 1t
#Checks the person with the highest score
scoreboard players operation $max leaderboard > @a leaderboard
execute as @a if score @s leaderboard = $max leaderboard run tag @s add abba_winner

#Tells who won
execute as @a[tag=abba_winner] run title @a[tag=playing_abba] title {"selector":"@s","color": "gold"}
execute as @a[tag=abba_winner] run title @a[tag=playing_abba] subtitle {"text": "Is the Winner!","color": "#ffcf40"}

#Shows everyones points
scoreboard players reset $max leaderboard
scoreboard objectives setdisplay sidebar leaderboard

#Stops counting the points
schedule clear abba:points/counting_points
schedule clear abba:main/add_points
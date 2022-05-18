#Checks the person with the highest score
scoreboard players operation $max leaderboard > @a[tag=playing_abba] leaderboard
execute as @a if score @s leaderboard = $max leaderboard run tag @s add abba_winner

#Tells who won
execute as @a[tag=abba_winner] run title @a[tag=playing_abba] title {"selector":"@s","color": "gold"}
execute as @a[tag=abba_winner] run title @a[tag=playing_abba] subtitle {"text": "Is the Winner!","color": "#ffcf40"}

#Shows everyones points
schedule function abba:main/end_results 3s

#Stops counting the points
schedule clear abba:points/counting_points
schedule clear abba:main/add_points
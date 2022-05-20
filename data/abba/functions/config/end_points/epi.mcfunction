tellraw @a[tag=playing_abba] {"text": "                                                                                ","color": "#474056","strikethrough": true}
tellraw @a[tag=playing_abba] [{"text": "                           "},{"text": "Top 10 Iron Miners","color": "#e39b17"}]
tellraw @a[tag=playing_abba] {"text": "                                                                                ","color": "#474056","strikethrough": true}

scoreboard players set $top abba_players 10
execute if entity @a[tag=playing_abba] run function abba:config/end_points/sort_players/epi_sort
tag @a remove found

tellraw @a[tag=playing_abba] {"text": "                                                                                ","color": "#474056","strikethrough": true}
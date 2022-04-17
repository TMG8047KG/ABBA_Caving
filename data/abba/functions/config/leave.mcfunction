# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "=====================================================","color": "#474056"}
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "                                  Options Menu","color": "gold"}
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "=====================================================","color": "#474056"}
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "                                  Rules"}
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "What do you need to play?","color": ""}
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "=====================================================","color": "#474056"}
# execute as @a[tag=playing_abba,tag=!abba_host] if score @s join_abba matches 2 run tellraw @s [{"text": "                                  "},{"text": "[Leave]","color": "dark_red","clickEvent": {"action": "run_command","value": "/trigger leave_abba"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Leave!","color": "gold"}}}]
# execute as @a[tag=playing_abba] if score @s join_abba matches 2 run tellraw @s {"text": "=====================================================","color": "#474056"}

#========================
#Config Panel
#========================

tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
tellraw @a[tag=abba_host] [{"text": "                            "},{"text": "ABBA CAVING PACK", "color": "#757083", "bold": true,"hoverEvent": {"action": "show_text","contents": {"text": "v1.0.0","color": "light_purple"}}}]
tellraw @a[tag=abba_host] [{"text": "                            "},{"text": "Made by TMG8047KG", "color": "#757083","hoverEvent": {"action": "show_text","contents": {"text": "v1.0.0","color": "light_purple"}}}]
tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger coal add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger coal add 1"}},{"text":" "},{"text": "Points per coal ore: ","color": "#ABA9BF"},{"score":{"name": "coal","objective": "coal"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger iron add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger iron add 1"}},{"text":" "},{"text": "Points per iron ore: ","color": "#ABA9BF"},{"score":{"name": "iron","objective": "iron"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger copper add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger copper add 1"}},{"text":" "},{"text": "Points per copper ore: ","color": "#ABA9BF"},{"score":{"name": "copper","objective": "copper"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger gold add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger gold add 1"}},{"text":" "},{"text": "Points per gold ore: ","color": "#ABA9BF"},{"score":{"name": "gold","objective": "gold"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger redstone add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger redstone add 1"}},{"text":" "},{"text": "Points per redstone ore: ","color": "#ABA9BF"},{"score":{"name": "redstone","objective": "redstone"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger emerald add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger emerald add 1"}},{"text":" "},{"text": "Points per emerald ore: ","color": "#ABA9BF"},{"score":{"name": "emerald","objective": "emerald"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger lapis add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger lapis add 1"}},{"text":" "},{"text": "Points per lapis ore: ","color": "#ABA9BF"},{"score":{"name": "lapis","objective": "lapis"},"color": "gold"}]
tellraw @a[tag=abba_host] [{"text": "[-1]","color": "dark_red","hoverEvent": {"action": "show_text","contents": {"text": "Click to remove a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger diamond add -1"}},{"text":" "},{"text": "[+1]","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"text": "Click to add a point","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger diamond add 1"}},{"text":" "},{"text": "Points per diamond ore: ","color": "#ABA9BF"},{"score":{"name": "diamond","objective": "diamond"},"color": "gold"}]
tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
tellraw @a[tag=abba_host] [{"text": "[Reset]","color": "dark_red","hoverEvent": {"action": "show_text","contents": [{"text": "Click to Reset!","color": "dark_red"},{"text": "\nSets all ore points to zero","color": "gray"}]},"clickEvent": {"action": "run_command","value": "/trigger reset"}},{"text": " "},{"text": "[Default]","color": "#ABA9BF","hoverEvent": {"action": "show_text","contents": [{"text": "Click to set the default points","color": "gold"},{"text": "\nSets all ore points to the default chosen by the Developer","color": "gray"}]},"clickEvent": {"action": "run_command","value": "/trigger default"}}]
tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
execute as @a[tag=abba_host] if score @s scoreboard matches 2..3 run tellraw @a[tag=abba_host] [{"text": "[ ✔ ]","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger scoreboard"}, "hoverEvent": {"action": "show_text","contents": [{"text": "Click to Disable ","color": "dark_red"},{"text": "the leaderboard", "color": "gold"},{"text": "\nAdds leaderboard with the scores of all players playing","color": "gray"}]}},{"text": " "},{"text": "Leaderboard","color": "#ABA9BF"}]
execute as @a[tag=abba_host] if score @s scoreboard matches 4..5 run tellraw @a[tag=abba_host] [{"text": "[ ❌ ]","color": "dark_red","clickEvent": {"action": "run_command","value": "/trigger scoreboard"}, "hoverEvent": {"action": "show_text","contents": [{"text": "Click to Enable ","color": "dark_green"},{"text": "the leaderboard", "color": "gold"},{"text": "\nAdds leaderboard with the scores of all players playing","color": "gray"}]}},{"text": " "},{"text": "Leaderboard","color": "#ABA9BF"}]
execute as @a[tag=abba_host] if score @s show_timer matches 2..3 run tellraw @a[tag=abba_host] [{"text": "[ ✔ ]","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger show_timer"}, "hoverEvent": {"action": "show_text","contents": [{"text": "Click to Disable ","color": "dark_red"},{"text": "the actionbar timer", "color": "gold"},{"text": "\nShow the time left until the end of the game","color": "gray"}]}},{"text": " "},{"text": "ActionBar Timer","color": "#ABA9BF"}]
execute as @a[tag=abba_host] if score @s show_timer matches 4..5 run tellraw @a[tag=abba_host] [{"text": "[ ❌ ]","color": "dark_red","clickEvent": {"action": "run_command","value": "/trigger show_timer"}, "hoverEvent": {"action": "show_text","contents": [{"text": "Click to Enable ","color": "dark_green"},{"text": "the actionbar timer", "color": "gold"},{"text": "\nShow the time left until the end of the game","color": "gray"}]}},{"text": " "},{"text": "ActionBar Timer","color": "#ABA9BF"}]
tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
tellraw @a[tag=abba_host] [{"text": "[Rules]","color": "#ABA9BF","hoverEvent": { "action": "show_text","contents": {"text": "Click to see the rules","color": "gold"}},"clickEvent": {"action": "run_command","value": "/trigger abba_rules"}},{"text": " "},{"text": "[Start]","color": "gold","hoverEvent": {"action": "show_text","contents": [{"text": "Click to select the game duration", "color": "gold"},{"text": "\nStarts the game by specifing the duration of the game in minutes","color": "gray"}]},"clickEvent": {"action": "suggest_command","value": "/trigger start_abba set 20"}}]
tellraw @a[tag=abba_host] {"text": "                                                                                ","color": "#474056","strikethrough": true}
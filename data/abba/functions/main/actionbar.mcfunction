#Show the time
execute as @a[tag=playing_abba,scores={show_timer=2..3,scoreboard=4..6}] run title @a[tag=playing_abba] actionbar [{"text": ""},{"text": "Points: ","color": "gold"},{"score":{"name":"@s","objective": "leaderboard"}},{"text": " Time: ","color": "gold"},{"score":{"name": "timer_m","objective": "timer"}},{"text": " | "},{"score": {"name": "timer_s","objective": "timer"}}]
execute as @a[tag=playing_abba,scores={show_timer=2..3,scoreboard=2..3}] run title @a[tag=playing_abba] actionbar [{"text": ""},{"text": "Time: ","color": "gold"},{"score":{"name": "timer_m","objective": "timer"}},{"text": " | "},{"score": {"name": "timer_s","objective": "timer"}}]
execute as @a[tag=playing_abba,scores={show_timer=4..6,scoreboard=4..6}] run title @a[tag=playing_abba] actionbar [{"text": ""},{"text": "Points: ","color": "gold"},{"score":{"name":"@s","objective": "leaderboard"}}]

schedule function abba:main/actionbar 1t
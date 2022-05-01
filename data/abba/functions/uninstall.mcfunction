#remove all gametags from everyone
tag @a remove abba_host
tag @a remove playing_abba
tag @a remove abba_winner

#deleting all main scoreboards
scoreboard objectives remove host
scoreboard objectives remove leaderboard
scoreboard objectives remove timer
scoreboard objectives remove start_timer

#deleting all points saves
scoreboard objectives remove p_coal
scoreboard objectives remove p_copper
scoreboard objectives remove p_iron
scoreboard objectives remove p_gold
scoreboard objectives remove p_diamond
scoreboard objectives remove p_redstone
scoreboard objectives remove p_lapis
scoreboard objectives remove p_emerald

scoreboard objectives remove ep_coal
scoreboard objectives remove ep_copper
scoreboard objectives remove ep_iron
scoreboard objectives remove ep_gold
scoreboard objectives remove ep_diamond
scoreboard objectives remove ep_redstone
scoreboard objectives remove ep_lapis
scoreboard objectives remove ep_emerald

#deleting all ore scoreboards
scoreboard objectives remove coal
scoreboard objectives remove copper
scoreboard objectives remove iron
scoreboard objectives remove gold
scoreboard objectives remove diamond
scoreboard objectives remove redstone
scoreboard objectives remove lapis
scoreboard objectives remove emerald

#deleting all broken ore scoreboards
scoreboard objectives remove b_coal
scoreboard objectives remove b_d_coal
scoreboard objectives remove b_copper
scoreboard objectives remove b_d_copper
scoreboard objectives remove b_iron
scoreboard objectives remove b_d_iron
scoreboard objectives remove b_gold
scoreboard objectives remove b_d_gold
scoreboard objectives remove b_diamond
scoreboard objectives remove b_d_diamond
scoreboard objectives remove b_redstone
scoreboard objectives remove b_d_redstone
scoreboard objectives remove b_lapis
scoreboard objectives remove b_d_lapis
scoreboard objectives remove b_emerald
scoreboard objectives remove b_d_emerald

#Removing all triggers
scoreboard objectives remove setup_abba
scoreboard objectives remove start_abba
scoreboard objectives remove end_abba 
scoreboard objectives remove join_abba 
scoreboard objectives remove leave_abba
scoreboard objectives remove coal 
scoreboard objectives remove copper 
scoreboard objectives remove iron
scoreboard objectives remove gold 
scoreboard objectives remove redstone 
scoreboard objectives remove lapis 
scoreboard objectives remove diamond 
scoreboard objectives remove emerald

scoreboard objectives remove default
scoreboard objectives remove scoreboard
scoreboard objectives remove show_timer
scoreboard objectives remove abba_options
scoreboard objectives remove abba_rules
scoreboard objectives remove reset

#Stoping all functions
schedule clear abba:points/counting_points
schedule clear abba:triggers/activate_triggers
schedule clear abba:main/add_points
schedule clear abba:setup_trigger
schedule clear abba:config/points/if_changes
schedule clear abba:main/start
schedule clear abba:main/timer
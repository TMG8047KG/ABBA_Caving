#Main triggers
scoreboard objectives add abba_options trigger
scoreboard objectives add start_abba trigger
scoreboard objectives add end_abba trigger
scoreboard players set @a start_abba 0

#Players options
scoreboard objectives add abba_rules trigger
scoreboard objectives add join_abba trigger
scoreboard objectives add leave_abba trigger
scoreboard players set @a join_abba 0
scoreboard players set @a leave_abba 0

#Setting the points for the ores
scoreboard objectives add coal trigger
scoreboard objectives add copper trigger
scoreboard objectives add iron trigger 
scoreboard objectives add gold trigger
scoreboard objectives add redstone trigger
scoreboard objectives add lapis trigger
scoreboard objectives add diamond trigger
scoreboard objectives add emerald trigger

#Settings
scoreboard objectives add reset trigger
scoreboard objectives add default trigger
scoreboard objectives add scoreboard trigger
scoreboard objectives add show_timer trigger

#Activating the triggers
schedule function abba:triggers/pre_activate 1s
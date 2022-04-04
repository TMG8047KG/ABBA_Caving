#Main triggers
scoreboard objectives add start_abba trigger
scoreboard objectives add end_abba trigger

#Players options
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
scoreboard objectives add default trigger

#Activating the triggers
function abba:triggers/activate_triggers
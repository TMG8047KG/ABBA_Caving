#Loading the setup trigger
scoreboard objectives add setup_abba trigger
scoreboard objectives add host dummy
scoreboard players set @a setup_abba 0
scoreboard players set host host 0
function abba:setup_trigger
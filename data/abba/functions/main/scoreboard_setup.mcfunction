#main scoreboards (dummy scoreboards)
scoreboard objectives add Leaderboard dummy
scoreboard objectives add start_timer dummy
scoreboard objectives add timer dummy
scoreboard players set timer_s timer 0

#Saving the points in dummy scoreboards
scoreboard objectives add p_coal dummy
scoreboard objectives add p_copper dummy
scoreboard objectives add p_iron dummy
scoreboard objectives add p_gold dummy
scoreboard objectives add p_diamond dummy
scoreboard objectives add p_redstone dummy
scoreboard objectives add p_lapis dummy
scoreboard objectives add p_emerald dummy



#Scoreboards that counts the mined ores
scoreboard objectives add b_coal mined:coal_ore
scoreboard objectives add b_d_coal mined:deepslate_coal_ore
scoreboard objectives add b_copper mined:copper_ore
scoreboard objectives add b_d_copper mined:deepslate_copper_ore
scoreboard objectives add b_iron mined:iron_ore
scoreboard objectives add b_d_iron mined:deepslate_iron_ore
scoreboard objectives add b_gold mined:gold_ore
scoreboard objectives add b_d_gold mined:deepslate_gold_ore
scoreboard objectives add b_diamond mined:diamond_ore
scoreboard objectives add b_d_diamond mined:deepslate_diamond_ore
scoreboard objectives add b_redstone mined:redstone_ore
scoreboard objectives add b_d_redstone mined:deepslate_redstone_ore
scoreboard objectives add b_lapis mined:lapis_ore
scoreboard objectives add b_d_lapis mined:deepslate_lapis_ore
scoreboard objectives add b_emerald mined:emerald_ore
scoreboard objectives add b_d_emerald mined:deepslate_emerald_ore

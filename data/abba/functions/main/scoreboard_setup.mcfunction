#main scoreboards (dummy scoreboards)
scoreboard objectives add leaderboard dummy
scoreboard objectives add start_timer dummy
scoreboard objectives add timer dummy
scoreboard objectives add abba_players dummy

#Saving the points in dummy scoreboards
scoreboard objectives add p_coal dummy
scoreboard objectives add p_copper dummy
scoreboard objectives add p_iron dummy
scoreboard objectives add p_gold dummy
scoreboard objectives add p_diamond dummy
scoreboard objectives add p_redstone dummy
scoreboard objectives add p_lapis dummy
scoreboard objectives add p_emerald dummy

scoreboard objectives add ep_coal dummy
scoreboard objectives add ep_copper dummy
scoreboard objectives add ep_iron dummy
scoreboard objectives add ep_gold dummy
scoreboard objectives add ep_diamond dummy
scoreboard objectives add ep_redstone dummy
scoreboard objectives add ep_lapis dummy
scoreboard objectives add ep_emerald dummy

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

#Setting values
scoreboard players set players abba_players 1
scoreboard players set start start_timer 0
scoreboard players set timer_s timer 0
scoreboard objectives modify leaderboard displayname {"text": "Leaderboard","color": "gold"}

#Abba Team
team add abba {"text": "ABBA CAVING PLAYERS"}
team modify abba color white
team join abba @a[tag=abba_host]

#========================
#Setup of all the mined ores that show in the end of the game (scoreboards)
#========================

scoreboard objectives add end_coal dummy
scoreboard objectives add end_iron dummy
scoreboard objectives add end_copper dummy
scoreboard objectives add end_gold dummy
scoreboard objectives add end_redstone dummy
scoreboard objectives add end_lapis dummy
scoreboard objectives add end_emerald dummy
scoreboard objectives add end_diamond dummy

scoreboard players set @a end_coal 0
scoreboard players set @a end_iron 0
scoreboard players set @a end_copper 0
scoreboard players set @a end_gold 0
scoreboard players set @a end_redstone 0
scoreboard players set @a end_lapis 0
scoreboard players set @a end_emerald 0
scoreboard players set @a end_diamond 0


say apocalypse overwrite activated
scoreboard objectives add count_zombies dummy
scoreboard players set @a count_zombies 0
scoreboard objectives add zombie_limit dummy
scoreboard players set @a zombie_limit 0
scoreboard objectives add count_players dummy
scoreboard players set @a count_players 0
scoreboard objectives add zombie_max dummy
scoreboard players set @a zombie_max 0
#execute unless data storage apocalypse_overwrite:remember {WorldSpawnSet:1b} run schedule function apocalypse_overwrite:random_worldspawn 30t replace
function apocalypse_overwrite:calculate_difficulty
scoreboard objectives add kill_zombies minecraft.killed:minecraft.zombie
scoreboard players set @a kill_zombies 0
scoreboard players set @a count_zombies 0
execute as @e[type=#apocalypse_overwrite:zombie_like] at @s run scoreboard players add @p count_zombies 1
scoreboard players set @a count_players 0
execute as @a run scoreboard players add @a count_players 1
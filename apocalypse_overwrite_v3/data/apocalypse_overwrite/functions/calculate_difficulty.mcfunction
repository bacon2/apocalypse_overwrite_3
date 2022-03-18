scoreboard players set @a zombie_limit 40
scoreboard players add @a[advancements={minecraft:story/smelt_iron=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:story/mine_diamond=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:story/enchant_item=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/obtain_blaze_rod=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/obtain_ancient_debris=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/netherite_armor=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/create_beacon=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:nether/create_full_beacon=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:adventure/sleep_in_bed=true}] zombie_limit 5
scoreboard players add @a[advancements={minecraft:adventure/trade=true}] zombie_limit 10
scoreboard players add @a[advancements={minecraft:adventure/hero_of_the_village=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:adventure/throw_trident=true}] zombie_limit 15
scoreboard players add @a[advancements={minecraft:end/dragon_egg=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:end/elytra=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:end/respawn_dragon=true}] zombie_limit 20
execute store result storage apocalypse_overwrite:detect difficulty short 1 run difficulty
execute if data storage apocalypse_overwrite:detect {difficulty:0s} run scoreboard players reset @a
execute if data storage apocalypse_overwrite:detect {difficulty:2s} run scoreboard players add @a zombie_limit 10
execute if data storage apocalypse_overwrite:detect {difficulty:3s} run scoreboard players add @a zombie_limit 20
execute if data storage apocalypse_overwrite:detect {difficulty:1s} as @e[type=zombie] run attribute @s minecraft:generic.movement_speed base set 0.18
execute if data storage apocalypse_overwrite:detect {difficulty:2s} as @e[type=zombie] run attribute @s minecraft:generic.movement_speed base set 0.23
execute if data storage apocalypse_overwrite:detect {difficulty:3s} as @e[type=zombie] run attribute @s minecraft:generic.movement_speed base set 0.3
scoreboard players set @a zombie_max 400
scoreboard players operation @a zombie_max /= @s count_players
scoreboard players operation @a zombie_limit < @r zombie_max
execute at @a run execute as @e[type=minecraft:zombified_piglin, distance=..30] at @s run data modify entity @s AngryAt set from entity @p UUID
execute at @a run execute as @e[type=minecraft:zombified_piglin, distance=..30] run data modify entity @s AngerTime set value 100
execute run function apocalypse_overwrite:count_zombies
execute run function apocalypse_overwrite:calculate_difficulty
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie_villager ~ -10 ~ {Tags:["move_me"]}
execute if predicate apocalypse_overwrite:1_in_30 as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie_horse ~ -10 ~ {Tags:["move_me"], Passengers:[{id:"minecraft:zombie_villager"}], Attributes:[{Base: 0.5d, Name: "minecraft:generic.movement_speed"}], Tame:1b}
advancement grant @a[scores={kill_zombies=30..}, advancements={apocalypse_overwrite:eye_couch=false}] only apocalypse_overwrite:eye_couch
advancement grant @a[scores={kill_zombies=3000..}, advancements={apocalypse_overwrite:eye_couch_couch_eye=false}] only apocalypse_overwrite:eye_couch_couch_eye
execute as @e[nbt={SaddleItem:{id:"minecraft:saddle"}}, type=zombie_horse] at @s if entity @p[distance=..2] run advancement grant @p only apocalypse_overwrite:green_transportation
execute as @e[tag=police_dog] run attribute @s minecraft:generic.attack_damage base set 16
execute if predicate apocalypse_overwrite:1_in_30 at @e[type=minecraft:zombie, limit=1, sort=random] run summon minecraft:snowball ~ ~3 ~ {Tags:[aggravator]}
execute as @e[tag=aggravator] at @s run data modify entity @s Owner set from entity @e[type=minecraft:villager, limit=1, sort=random] UUID
execute as @e[type=minecart] run data modify entity @s Air set value 0s
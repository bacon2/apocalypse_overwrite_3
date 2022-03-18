execute as @e[type=#apocalypse_overwrite:zombie_like] at @s if entity @e[type=minecraft:zombie, distance=0.1..2] if predicate apocalypse_overwrite:1_in_30 run function apocalypse_overwrite:lunge
execute as @e[type=#apocalypse_overwrite:zombie_like] at @s if entity @a[distance=..10] unless data storage apocalypse_overwrite:detect {difficulty:1s} run function apocalypse_overwrite:zombie_break_block
execute as @e[type=#apocalypse_overwrite:zombie_like] run data modify entity @s Fire set value -1s
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie ~ -10 ~ {Tags:["move_me"]}
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie ~ -10 ~ {Tags:["move_me_underground"]}
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:the_nether"}] at @s run summon zombified_piglin ~ ~100 ~ {Tags:["move_me_underground"]}
execute at @a[sort=random] run spreadplayers ~ ~ 1 100 false @e[tag=move_me]
execute at @a[sort=random] run spreadplayers ~ ~ 1 100 under 50 false @e[tag=move_me_underground]
tag @e[tag=move_me] remove move_me
tag @e[tag=move_me_underground] remove move_me_underground
execute if predicate apocalypse_overwrite:1_in_30 run function apocalypse_overwrite:random_tick
execute as @a[nbt={SelectedItem:{id:"minecraft:rotten_flesh"}}, nbt={Inventory:[{id:"minecraft:rotten_flesh",Slot:-106b}]}] at @s run effect give @e[type=#apocalypse_overwrite:zombie_like, limit=1, sort=nearest] minecraft:weakness 1 0 true
execute as @a[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate",tag:{nbt:"body_odor"}}]}] at @s run function apocalypse_overwrite:body_odor
execute at @e[type=minecart] if entity @p[distance=..1] run function apocalypse_overwrite:car
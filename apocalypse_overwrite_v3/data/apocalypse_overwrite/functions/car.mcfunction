execute as @a at @s anchored eyes if block ^ ^ ^0.5 #apocalypse_overwrite:fluids run tp @e[tag=car,distance=..1] ^ ^ ^0.5
execute as @a at @s anchored eyes if block ^ ^ ^0.5 #apocalypse_overwrite:fluids if block ~ ~-1 ~ #apocalypse_overwrite:zombie_resistant run tp @e[tag=car,distance=..1] ^ ^ ^0.5
playsound minecraft:block.beehive.work master @p ~ ~ ~ 20 0.05
execute as @e[tag=car] at @s if block ~ ~-0.2 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.2 ~
execute as @e[tag=car] at @s if block ~ ~-0.2 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.2 ~
execute as @e[tag=car] at @s if block ~ ~-0.2 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.2 ~
execute as @e[tag=car] at @s if block ~ ~-0.2 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.2 ~
execute as @e[tag=car] at @s if block ~ ~-0.4 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.4 ~
execute as @e[tag=car] at @s if block ~ ~-0.4 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.4 ~
execute as @e[tag=car] at @s if block ~ ~-0.4 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.4 ~
execute as @e[tag=car] at @s if block ~ ~-0.4 ~ #apocalypse_overwrite:fluids run tp @s ~ ~-0.4 ~
execute as @a[nbt={Inventory:[{tag:{display:{Name:'{"text":"Gasoline", "italic":"false", "color":"gray"}'}}}]}] store success entity @e[type=minecart, limit=1, sort=nearest, distance=..1, tag=!car] Air int 1 run clear @s minecraft:black_dye{display:{Name:'{"text":"Gasoline", "italic":"false", "color":"gray"}'}} 1
tag @e[type=minecart, nbt={Air:1s}] add car
tag @e[type=minecart, nbt={Air:0s}] remove car
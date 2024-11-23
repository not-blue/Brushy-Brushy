# sheep
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=minecraft:sheep,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=better_brushes.sheep,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["better_brushes.sheep"], width: 1, height: 1.4}
execute as @e[type=minecraft:interaction,tag=better_brushes.sheep] at @s at @e[type=minecraft:sheep,distance=..0.1] rotated as @e[type=minecraft:sheep,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.sheep] at @s unless entity @e[type=minecraft:sheep,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=better_brushes.sheep] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s

# sheep brush dispenser
execute as @e[type=minecraft:sheep,tag=!better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~-1 ~ ~ minecraft:dispenser[facing=east] run function better_brushes:redstone/setup_sheep_dispenser
execute as @e[type=minecraft:sheep,tag=!better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~1 ~ ~ minecraft:dispenser[facing=west] run function better_brushes:redstone/setup_sheep_dispenser
execute as @e[type=minecraft:sheep,tag=!better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~ ~ ~-1 minecraft:dispenser[facing=south] run function better_brushes:redstone/setup_sheep_dispenser
execute as @e[type=minecraft:sheep,tag=!better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~ ~ ~1 minecraft:dispenser[facing=north] run function better_brushes:redstone/setup_sheep_dispenser
function better_brushes:redstone/tick_sheep_dispenser

# horse
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=#better_brushes:equestrian,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=better_brushes.horse,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["better_brushes.horse"], width: 1.6, height: 1.8}
execute as @e[type=minecraft:interaction,tag=better_brushes.horse] at @s at @e[type=#better_brushes:equestrian,distance=..0.1] rotated as @e[type=#better_brushes:equestrian,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.horse] at @s unless entity @e[type=#better_brushes:equestrian,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=better_brushes.horse] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s

# pets
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=#better_brushes:pet,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=better_brushes.pet,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["better_brushes.pet"], width: 1, height: 0.95}
execute as @e[type=minecraft:interaction,tag=better_brushes.pet] at @s at @e[type=#better_brushes:pet,distance=..0.1] rotated as @e[type=#better_brushes:pet,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.pet] at @s unless entity @e[type=#better_brushes:pet,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=better_brushes.pet] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s
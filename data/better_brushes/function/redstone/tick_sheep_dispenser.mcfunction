# check if sheep is still by a dispenser, and remove armadillo if not
tag @e[type=minecraft:sheep,tag=better_brushes.sheep_still_has_dispenser] remove better_brushes.sheep_still_has_dispenser
execute as @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~-1 ~ ~ minecraft:dispenser[facing=east] run tag @s add better_brushes.sheep_still_has_dispenser
execute as @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~1 ~ ~ minecraft:dispenser[facing=west] run tag @s add better_brushes.sheep_still_has_dispenser
execute as @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~ ~ ~-1 minecraft:dispenser[facing=south] run tag @s add better_brushes.sheep_still_has_dispenser
execute as @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] at @s align xz positioned ~ ~0.5 ~ if block ~ ~ ~1 minecraft:dispenser[facing=north] run tag @s add better_brushes.sheep_still_has_dispenser

execute as @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser,tag=!better_brushes.sheep_still_has_dispenser] at @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] if score @s better_brushes.uuid_0 = @n[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] better_brushes.uuid_0 run kill @n[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo]
tag @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser,tag=!better_brushes.sheep_still_has_dispenser] remove better_brushes.sheep_has_dispenser

# check if armadillo's sheep is still alive, and remove armadillo if not
tag @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_keep_alive] remove better_brushes.sheep_armadillo_keep_alive
execute as @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] at @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] if score @s better_brushes.uuid_0 = @n[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] better_brushes.uuid_0 run tag @s add better_brushes.sheep_armadillo_keep_alive

kill @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo,tag=!better_brushes.sheep_armadillo_keep_alive]

# move armadillo to follow sheep
execute as @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] at @e[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] if score @s better_brushes.uuid_0 = @n[type=minecraft:sheep,tag=better_brushes.sheep_has_dispenser] better_brushes.uuid_0 run tp @s ~ ~ ~

# lock hopper directly under the sheep's armadillo.
# unfortunately, i cannot prevent the hopper from pulling the scute before its converted,
# so hoppers need to be placed under mud or something like that.
execute as @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] at @s align xz positioned ~ ~0.5 ~ if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 8

# change armadillo drops to sheep drops
execute as @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo] at @s as @e[type=minecraft:item,nbt={Item:{id:"minecraft:armadillo_scute",count:1}},distance=..0.3,tag=!better_brushes.scute_no_replace] run function better_brushes:redstone/replace_armadillo_scute

# tag all other scute drops so they aren't replaced with the sheep loot table
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:armadillo_scute",count:1}},tag=!better_brushes.scute_no_replace] add better_brushes.scute_no_replace
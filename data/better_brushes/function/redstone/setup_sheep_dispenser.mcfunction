# add an armadillo that can be hit with a brush from a dispenser.
summon minecraft:armadillo ~ ~ ~ {Tags: ["better_brushes.sheep_armadillo_needs_setup"],NoAI:true,Invulnerable:true,Silent:true}
effect give @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_needs_setup] minecraft:invisibility infinite 1 true

team join better_brushes.sheep_armadillo @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_needs_setup]

# setup UUID score for pairing armadillo with sheep
data modify storage better_brushes:sheep uuid_0 set from entity @s UUID[0]
execute as @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_needs_setup] store result score @s better_brushes.uuid_0 run data get storage better_brushes:sheep uuid_0
execute store result score @s better_brushes.uuid_0 run data get storage better_brushes:sheep uuid_0

# update tags
tag @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_needs_setup] add better_brushes.sheep_armadillo
tag @e[type=minecraft:armadillo,tag=better_brushes.sheep_armadillo_needs_setup] remove better_brushes.sheep_armadillo_needs_setup
tag @s add better_brushes.sheep_has_dispenser
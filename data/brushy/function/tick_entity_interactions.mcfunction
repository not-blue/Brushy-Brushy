# sheep
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=minecraft:sheep,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=brushy.sheep,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["brushy.sheep"], width: 1, height: 1.4}
execute as @e[type=minecraft:interaction,tag=brushy.sheep] at @s at @e[type=minecraft:sheep,distance=..0.1] rotated as @e[type=minecraft:sheep,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=brushy.sheep] at @s unless entity @e[type=minecraft:sheep,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=brushy.sheep] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s

# horse
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=#brushy:equestrian,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=brushy.horse,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["brushy.horse"], width: 1.6, height: 1.8}
execute as @e[type=minecraft:interaction,tag=brushy.horse] at @s at @e[type=#brushy:equestrian,distance=..0.1] rotated as @e[type=#brushy:equestrian,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=brushy.horse] at @s unless entity @e[type=#brushy:equestrian,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=brushy.horse] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s

# pets
execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] at @s as @e[type=#brushy:pet,distance=..5] at @s rotated as @s unless entity @e[type=minecraft:interaction,tag=brushy.pet,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {Tags: ["brushy.pet"], width: 1, height: 0.95}
execute as @e[type=minecraft:interaction,tag=brushy.pet] at @s at @e[type=#brushy:pet,distance=..0.1] rotated as @e[type=#brushy:pet,distance=..0.1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:interaction,tag=brushy.pet] at @s unless entity @e[type=#brushy:pet,distance=..0.1] run kill @s
execute as @e[type=minecraft:interaction,tag=brushy.pet] at @s unless entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:brush"}}] run kill @s
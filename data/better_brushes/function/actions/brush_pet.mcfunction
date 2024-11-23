advancement revoke @s only better_brushes:brush_pet

data modify storage better_brushes:brush unbreaking_level set value 0
data modify storage better_brushes:brush unbreaking_level set from entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute unless entity @s[gamemode=creative] run function better_brushes:damage_16 with storage better_brushes:brush

# sounds and particles
playsound minecraft:item.brush.brushing.generic neutral @a ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.pet,nbt={interaction:{}},distance=..5] at @s if entity @e[type=minecraft:cat,distance=..0.3] run playsound minecraft:entity.cat.purr neutral @a ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.pet,nbt={interaction:{}},distance=..5] at @s if entity @e[type=minecraft:wolf,distance=..0.3] run playsound minecraft:entity.wolf.pant neutral @a ~ ~ ~
execute as @e[type=minecraft:interaction,tag=better_brushes.pet,nbt={interaction:{}},distance=..5] at @s run particle minecraft:heart ~ ~1 ~ 0.2 0 0.2 0 1

# give a small amount of regen
execute as @e[type=minecraft:interaction,tag=better_brushes.pet,nbt={interaction:{}},distance=..5] at @s as @n[type=#better_brushes:pet] if data entity @s Owner run effect give @s minecraft:regeneration 3 1 false

function better_brushes:check_broken_brush
advancement revoke @s only better_brushes:brush_sheep

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

data modify storage better_brushes:brush unbreaking_level set value 0
data modify storage better_brushes:brush unbreaking_level set from entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute unless entity @s[gamemode=creative] run function better_brushes:damage_16 with storage better_brushes:brush
execute as @e[type=minecraft:interaction,tag=better_brushes.sheep,nbt={interaction:{}},distance=..5] at @s run loot spawn ~ ~ ~ loot better_brushes:brush_sheep

playsound minecraft:block.wool.break neutral @a ~ ~ ~
playsound minecraft:item.brush.brushing.generic neutral @a ~ ~ ~

function better_brushes:check_broken_brush
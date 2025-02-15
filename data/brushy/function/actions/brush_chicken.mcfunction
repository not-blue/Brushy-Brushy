advancement revoke @s only brushy:brush_chicken

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

data modify storage brushy:brush unbreaking_level set value 0
data modify storage brushy:brush unbreaking_level set from entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute unless entity @s[gamemode=creative] run function brushy:damage_16 with storage brushy:brush
execute as @e[type=minecraft:interaction,tag=brushy.chicken,nbt={interaction:{}},distance=..5] at @s run loot spawn ~ ~ ~ loot brushy:brush_chicken

playsound minecraft:item.brush.brushing.generic neutral @a ~ ~ ~

function brushy:check_broken_brush
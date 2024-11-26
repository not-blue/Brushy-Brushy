advancement revoke @s only brushy:brush

scoreboard players add @s brushy.brush_time 1
scoreboard players set @s brushy.brush_time_reset 12

data modify storage brushy:brush color set value false
data modify storage brushy:brush color set from entity @s SelectedItem.components."minecraft:custom_data".color
execute if score @s brushy.brush_time matches 8 run function brushy:brush with storage brushy:brush

execute if score @s brushy.brush_time matches 8 run scoreboard players reset @s brushy.brush_time_reset
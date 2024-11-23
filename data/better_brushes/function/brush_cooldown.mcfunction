advancement revoke @s only better_brushes:brush

scoreboard players add @s better_brushes.brush_time 1
scoreboard players set @s better_brushes.brush_time_reset 12

data modify storage better_brushes:brush color set value false
data modify storage better_brushes:brush color set from entity @s SelectedItem.components."minecraft:custom_data".color
execute if score @s better_brushes.brush_time matches 8 run function better_brushes:brush with storage better_brushes:brush

execute if score @s better_brushes.brush_time matches 8 run scoreboard players reset @s better_brushes.brush_time_reset
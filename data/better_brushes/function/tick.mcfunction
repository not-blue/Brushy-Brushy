execute as @a unless score @s better_brushes.brush_time_reset matches 0 run scoreboard players remove @a better_brushes.brush_time_reset 1
execute as @a if score @s better_brushes.brush_time_reset matches 0 run scoreboard players reset @s better_brushes.brush_time
execute as @a if score @s better_brushes.brush_time_reset matches 0 run scoreboard players reset @s better_brushes.brush_time_reset

function better_brushes:tick_entity_interactions
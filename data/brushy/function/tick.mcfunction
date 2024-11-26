execute as @a unless score @s brushy.brush_time_reset matches 0 run scoreboard players remove @a brushy.brush_time_reset 1
execute as @a if score @s brushy.brush_time_reset matches 0 run scoreboard players reset @s brushy.brush_time
execute as @a if score @s brushy.brush_time_reset matches 0 run scoreboard players reset @s brushy.brush_time_reset

function brushy:tick_entity_interactions
advancement revoke @s only better_brushes:brush_horse

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

data modify storage better_brushes:brush unbreaking_level set value 0
data modify storage better_brushes:brush unbreaking_level set from entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute unless entity @s[gamemode=creative] run function better_brushes:damage_16 with storage better_brushes:brush

# particles
execute as @e[type=minecraft:interaction,tag=better_brushes.horse,nbt={interaction:{}},distance=..5] at @s run particle minecraft:heart ~ ~2 ~ 0.2 0 0.2 0 1

# InLove => 600
# Temper => +10 (to match golden apple)
execute as @e[type=minecraft:interaction,tag=better_brushes.horse,nbt={interaction:{}},distance=..5] at @s run tag @e[type=#better_brushes:equestrian,distance=..0.1] add better_brushes.horse_update

# Temper += 10 (matches golden apple)
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] store result score @s better_brushes.temper run data get entity @s Temper
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] run scoreboard players set @s better_brushes.temper_addition 10
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] run scoreboard players operation @s better_brushes.temper += @s better_brushes.temper_addition
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] store result entity @s Temper int 1 run scoreboard players get @s better_brushes.temper

# InLove = 600
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] if data entity @s Tame run data modify entity @s InLove set value 600

# Age += 500 (less than food, but still helps growth)
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] run scoreboard players set @s better_brushes.adult_age 0
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] store result score @s better_brushes.age run data get entity @s Age
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] unless score @s better_brushes.age >= @s better_brushes.adult_age run scoreboard players set @s better_brushes.age_addition 500
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] unless score @s better_brushes.age >= @s better_brushes.adult_age run scoreboard players operation @s better_brushes.age += @s better_brushes.age_addition
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] unless score @s better_brushes.age >= @s better_brushes.adult_age store result entity @s Age int 1 run scoreboard players get @s better_brushes.age

# give a small amount of regen
execute as @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update,nbt={Tame:true}] run effect give @s minecraft:regeneration 3 1 false

tag @e[type=#better_brushes:equestrian,tag=better_brushes.horse_update] remove better_brushes.horse_update

playsound minecraft:entity.horse.ambient neutral @a ~ ~ ~

function better_brushes:check_broken_brush
advancement revoke @s only brushy:brush_horse

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

data modify storage brushy:brush unbreaking_level set value 0
data modify storage brushy:brush unbreaking_level set from entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute unless entity @s[gamemode=creative] run function brushy:damage_16 with storage brushy:brush

# particles
execute as @e[type=minecraft:interaction,tag=brushy.horse,nbt={interaction:{}},distance=..5] at @s run particle minecraft:heart ~ ~2 ~ 0.2 0 0.2 0 1

# InLove => 600
# Temper => +10 (to match golden apple)
execute as @e[type=minecraft:interaction,tag=brushy.horse,nbt={interaction:{}},distance=..5] at @s run tag @e[type=#brushy:equestrian,distance=..0.1] add brushy.horse_update

# Temper += 10 (matches golden apple)
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] store result score @s brushy.temper run data get entity @s Temper
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] run scoreboard players set @s brushy.temper_addition 10
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] run scoreboard players operation @s brushy.temper += @s brushy.temper_addition
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] store result entity @s Temper int 1 run scoreboard players get @s brushy.temper

# InLove = 600
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] if data entity @s Tame run data modify entity @s InLove set value 600

# Age += 500 (less than food, but still helps growth)
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] run scoreboard players set @s brushy.adult_age 0
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] store result score @s brushy.age run data get entity @s Age
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] unless score @s brushy.age >= @s brushy.adult_age run scoreboard players set @s brushy.age_addition 500
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] unless score @s brushy.age >= @s brushy.adult_age run scoreboard players operation @s brushy.age += @s brushy.age_addition
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update] unless score @s brushy.age >= @s brushy.adult_age store result entity @s Age int 1 run scoreboard players get @s brushy.age

# give a small amount of regen
execute as @e[type=#brushy:equestrian,tag=brushy.horse_update,nbt={Tame:true}] run effect give @s minecraft:regeneration 3 1 false

tag @e[type=#brushy:equestrian,tag=brushy.horse_update] remove brushy.horse_update

playsound minecraft:entity.horse.ambient neutral @a ~ ~ ~

function brushy:check_broken_brush
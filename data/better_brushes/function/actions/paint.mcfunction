execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return run function better_brushes:actions/wash_brush

# playsound minecraft:item.honeycomb.wax_on player @a ~ ~ ~

# terracotta
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:terracotta unless block ~ ~ ~ minecraft:$(color)terracotta run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #minecraft:terracotta unless block ~ ~ ~ minecraft:$(color)terracotta run return run setblock ~ ~ ~ minecraft:$(color)terracotta

# concrete
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:concrete unless block ~ ~ ~ minecraft:$(color)concrete run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #better_brushes:concrete unless block ~ ~ ~ minecraft:$(color)concrete run return run setblock ~ ~ ~ minecraft:$(color)concrete

# concrete powder
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:concrete_powder unless block ~ ~ ~ minecraft:$(color)concrete_powder run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #better_brushes:concrete_powder unless block ~ ~ ~ minecraft:$(color)concrete_powder run return run setblock ~ ~ ~ minecraft:$(color)concrete_powder

# wool
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:wool unless block ~ ~ ~ minecraft:$(color)wool run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #minecraft:wool unless block ~ ~ ~ minecraft:$(color)wool run return run setblock ~ ~ ~ minecraft:$(color)wool

# wool_carpets
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:wool_carpets unless block ~ ~ ~ minecraft:$(color)carpet run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #minecraft:wool_carpets unless block ~ ~ ~ minecraft:$(color)carpet run return run setblock ~ ~ ~ minecraft:$(color)carpet

# glass
execute unless entity @s[gamemode=creative] if block ~ ~ ~ minecraft:glass run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ minecraft:glass run return run setblock ~ ~ ~ minecraft:$(color)stained_glass

# stained glass
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:stained_glass unless block ~ ~ ~ minecraft:$(color)stained_glass run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #better_brushes:stained_glass unless block ~ ~ ~ minecraft:$(color)stained_glass run return run setblock ~ ~ ~ minecraft:$(color)stained_glass

# glass_pane
execute unless entity @s[gamemode=creative] if block ~ ~ ~ minecraft:glass_pane run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ minecraft:glass_pane run return run setblock ~ ~ ~ minecraft:$(color)stained_glass_pane

# stained_glass_pane
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:stained_glass_pane unless block ~ ~ ~ minecraft:$(color)stained_glass_pane run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #better_brushes:stained_glass_pane unless block ~ ~ ~ minecraft:$(color)stained_glass_pane run return run setblock ~ ~ ~ minecraft:$(color)stained_glass_pane

# bed
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:beds unless block ~ ~ ~ minecraft:$(color)bed run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #minecraft:beds[facing=north,part=foot] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "north", x: 0, z: 1 }
$execute if block ~ ~ ~ #minecraft:beds[facing=north,part=foot] unless block ~ ~ ~ minecraft:$(color)bed positioned ~ ~ ~-1 run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed
$execute if block ~ ~ ~ #minecraft:beds[facing=north,part=head] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "north", x: 0, z: 1 }
$execute if block ~ ~ ~ #minecraft:beds[facing=north,part=head] unless block ~ ~ ~ minecraft:$(color)bed run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed

$execute if block ~ ~ ~ #minecraft:beds[facing=south,part=foot] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "south", x: 0, z: -1 }
$execute if block ~ ~ ~ #minecraft:beds[facing=south,part=foot] unless block ~ ~ ~ minecraft:$(color)bed positioned ~ ~ ~1 run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed
$execute if block ~ ~ ~ #minecraft:beds[facing=south,part=head] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "south", x: 0, z: -1 }
$execute if block ~ ~ ~ #minecraft:beds[facing=south,part=head] unless block ~ ~ ~ minecraft:$(color)bed run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed

$execute if block ~ ~ ~ #minecraft:beds[facing=east,part=foot] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "east", x: -1, z: 0 }
$execute if block ~ ~ ~ #minecraft:beds[facing=east,part=foot] unless block ~ ~ ~ minecraft:$(color)bed positioned ~1 ~ ~ run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed
$execute if block ~ ~ ~ #minecraft:beds[facing=east,part=head] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "east", x: -1, z: 0 }
$execute if block ~ ~ ~ #minecraft:beds[facing=east,part=head] unless block ~ ~ ~ minecraft:$(color)bed run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed

$execute if block ~ ~ ~ #minecraft:beds[facing=west,part=foot] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "west", x: 1, z: 0 }
$execute if block ~ ~ ~ #minecraft:beds[facing=west,part=foot] unless block ~ ~ ~ minecraft:$(color)bed positioned ~-1 ~ ~ run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed
$execute if block ~ ~ ~ #minecraft:beds[facing=west,part=head] unless block ~ ~ ~ minecraft:$(color)bed run data modify storage better_brushes:bed bed set value { color: "$(color)", facing: "west", x: 1, z: 0 }
$execute if block ~ ~ ~ #minecraft:beds[facing=west,part=head] unless block ~ ~ ~ minecraft:$(color)bed run return run function better_brushes:actions/paint_bed with storage better_brushes:bed bed

# candle
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:candles unless block ~ ~ ~ minecraft:$(color)candle run item modify entity @s weapon.mainhand better_brushes:damage_4
$execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=false] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=1,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=false] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=2,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=false] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=3,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=false] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=4,lit=false]
$execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=true] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=1,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=true] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=2,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=true] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=3,lit=true]
$execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=true] unless block ~ ~ ~ minecraft:$(color)candle run return run setblock ~ ~ ~ minecraft:$(color)candle[candles=4,lit=true]

# shulker_box
data remove storage better_brushes:shulker_box Items
$execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:shulker_boxes unless block ~ ~ ~ minecraft:$(color)shulker_box run item modify entity @s weapon.mainhand better_brushes:damage_4
execute if block ~ ~ ~ #minecraft:shulker_boxes run data modify storage better_brushes:shulker_box Items set from block ~ ~ ~ Items
$execute if block ~ ~ ~ #minecraft:shulker_boxes unless block ~ ~ ~ minecraft:$(color)shulker_box run setblock ~ ~ ~ minecraft:$(color)shulker_box
execute if block ~ ~ ~ #minecraft:shulker_boxes run return run data modify block ~ ~ ~ Items set from storage better_brushes:shulker_box Items
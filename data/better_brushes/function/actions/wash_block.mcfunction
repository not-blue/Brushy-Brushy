execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return run function better_brushes:actions/wash_brush

# terracotta
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:terracotta unless block ~ ~ ~ minecraft:terracotta run item modify entity @s weapon.mainhand better_brushes:damage
execute if block ~ ~ ~ #minecraft:terracotta unless block ~ ~ ~ minecraft:terracotta run return run setblock ~ ~ ~ minecraft:terracotta

# glass
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:stained_glass unless block ~ ~ ~ minecraft:glass run item modify entity @s weapon.mainhand better_brushes:damage
execute if block ~ ~ ~ #better_brushes:stained_glass unless block ~ ~ ~ minecraft:glass run return run setblock ~ ~ ~ minecraft:glass

# glass_pane
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:stained_glass_pane unless block ~ ~ ~ minecraft:glass_pane run item modify entity @s weapon.mainhand better_brushes:damage
execute if block ~ ~ ~ #better_brushes:stained_glass_pane unless block ~ ~ ~ minecraft:glass_pane run return run setblock ~ ~ ~ minecraft:glass_pane

# candle
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:candles unless block ~ ~ ~ minecraft:candle run item modify entity @s weapon.mainhand better_brushes:damage
execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=false] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=1,lit=false]
execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=false] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=2,lit=false]
execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=false] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=3,lit=false]
execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=false] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=4,lit=false]
execute if block ~ ~ ~ #minecraft:candles[candles=1,lit=true] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=1,lit=true]
execute if block ~ ~ ~ #minecraft:candles[candles=2,lit=true] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=2,lit=true]
execute if block ~ ~ ~ #minecraft:candles[candles=3,lit=true] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=3,lit=true]
execute if block ~ ~ ~ #minecraft:candles[candles=4,lit=true] unless block ~ ~ ~ minecraft:candle run return run setblock ~ ~ ~ minecraft:candle[candles=4,lit=true]

# shulker_box
execute unless entity @s[gamemode=creative] if block ~ ~ ~ #minecraft:shulker_boxes unless block ~ ~ ~ minecraft:shulker_box run item modify entity @s weapon.mainhand better_brushes:damage
execute if block ~ ~ ~ #minecraft:shulker_boxes unless block ~ ~ ~ minecraft:shulker_box run data modify storage better_brushes:shulker_box Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #minecraft:shulker_boxes unless block ~ ~ ~ minecraft:shulker_box run setblock ~ ~ ~ minecraft:shulker_box
execute if block ~ ~ ~ minecraft:shulker_box run return run data modify block ~ ~ ~ Items set from storage better_brushes:shulker_box Items
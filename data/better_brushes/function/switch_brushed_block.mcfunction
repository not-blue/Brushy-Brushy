# paint with brush custom_data color
$execute if block ~ ~ ~ #better_brushes:paintable if data entity @s SelectedItem.components."minecraft:custom_data".color unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":false}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":""}}}}] run return run function better_brushes:actions/paint {color: "$(color)_"}

# paint with wet brush, removing color
execute if block ~ ~ ~ #better_brushes:paintable if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":""}}}}] run return run function better_brushes:actions/wash_block

# cauldron with paint brush
execute if block ~ ~ ~ minecraft:water_cauldron if data entity @s SelectedItem.components."minecraft:custom_data".color unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":false}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":""}}}}] run return run function better_brushes:actions/wash_brush

# cauldron with normal brush
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":false}}}}] if block ~ ~ ~ minecraft:water_cauldron run return run function better_brushes:actions/wet_brush
execute unless data entity @s SelectedItem.components."minecraft:custom_data".color if block ~ ~ ~ minecraft:water_cauldron run return run function better_brushes:actions/wet_brush

# mossy block with normal brush
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":false}}}}] if block ~ ~ ~ #better_brushes:mossy run return run function better_brushes:actions/remove_moss
execute unless data entity @s SelectedItem.components."minecraft:custom_data".color if block ~ ~ ~ #better_brushes:mossy run return run function better_brushes:actions/remove_moss

# infested block with normal brush
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"color":false}}}}] if block ~ ~ ~ #better_brushes:infested run return run function better_brushes:actions/activate_infestation
execute unless data entity @s SelectedItem.components."minecraft:custom_data".color if block ~ ~ ~ #better_brushes:infested run return run function better_brushes:actions/activate_infestation
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

playsound minecraft:block.moss_carpet.break neutral @a ~ ~ ~

execute unless entity @s[gamemode=creative] if block ~ ~ ~ #better_brushes:mossy run item modify entity @s weapon.mainhand better_brushes:damage

# moss/vines loot
execute if block ~ ~ ~ #better_brushes:mossy run loot spawn ~ ~ ~ loot better_brushes:remove_moss

# cobblestone variants
execute if block ~ ~ ~ minecraft:mossy_cobblestone run return run setblock ~ ~ ~ minecraft:cobblestone

execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=top,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=top,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=bottom,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=bottom,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=double,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=double,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=top,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=top,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=bottom,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=bottom,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=double,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_slab[type=double,waterlogged=true]

execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=north,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=north,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=south,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=south,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=east,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=east,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=west,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=west,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=north,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=north,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=south,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=south,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=east,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=east,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=west,waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=west,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=north,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=north,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=south,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=south,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=east,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=east,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=top,facing=west,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=top,facing=west,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=north,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=north,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=south,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=south,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=east,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=east,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[half=bottom,facing=west,waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_stairs[half=bottom,facing=west,waterlogged=true]

execute if block ~ ~ ~ minecraft:mossy_cobblestone_wall[waterlogged=false] run return run setblock ~ ~ ~ minecraft:cobblestone_wall[waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_wall[waterlogged=true] run return run setblock ~ ~ ~ minecraft:cobblestone_wall[waterlogged=true]

# stone brick variants
execute if block ~ ~ ~ minecraft:mossy_stone_bricks run return run setblock ~ ~ ~ minecraft:stone_bricks
execute if block ~ ~ ~ minecraft:infested_mossy_stone_bricks run return run setblock ~ ~ ~ minecraft:infested_stone_bricks

execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=top,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=top,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=bottom,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=bottom,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=double,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=double,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=top,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=top,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=bottom,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=bottom,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_slab[type=double,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_slab[type=double,waterlogged=true]

execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=north,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=north,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=south,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=south,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=east,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=east,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=west,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=west,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=north,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=north,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=south,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=south,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=east,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=east,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=west,waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=west,waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=north,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=north,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=south,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=south,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=east,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=east,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=top,facing=west,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=top,facing=west,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=north,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=north,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=south,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=south,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=east,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=east,waterlogged=true]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_stairs[half=bottom,facing=west,waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_stairs[half=bottom,facing=west,waterlogged=true]

execute if block ~ ~ ~ minecraft:mossy_stone_brick_wall[waterlogged=false] run return run setblock ~ ~ ~ minecraft:stone_brick_wall[waterlogged=false]
execute if block ~ ~ ~ minecraft:mossy_stone_brick_wall[waterlogged=true] run return run setblock ~ ~ ~ minecraft:stone_brick_wall[waterlogged=true]
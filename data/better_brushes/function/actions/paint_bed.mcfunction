# replace the head block first, so the bed item doesn't drop
setblock ~ ~ ~ minecraft:air replace

# then set the head and foot (in that order)
$setblock ~ ~ ~ minecraft:$(color)bed[facing=$(facing),part=head] replace
$setblock ~$(x) ~ ~$(z) minecraft:$(color)bed[facing=$(facing),part=foot] replace
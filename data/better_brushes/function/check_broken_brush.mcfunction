execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:damage":64}}}] run return fail

item replace entity @s weapon.mainhand with minecraft:air
playsound entity.item.break
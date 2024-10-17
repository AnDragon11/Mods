data remove entity @e[tag=tools,sort=nearest,limit=1] attack

data modify storage minecraft:coords coordinates.block set value air
data modify storage minecraft:coords coordinates.block set from entity @p SelectedItem.id

#shovel
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:position run function tools:position/pos1

#copy
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:copy run function tools:position/pos3
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:cut run function tools:position/pos3


#brush
execute as @a[tag=editor] at @s if predicate tools:brush_m run function tools:brush/radius

execute as @a[tag=editor] at @e[tag=selected] if predicate tools:brush_m run function tools:brush/left_radius



#fill
execute as @a[tag=editor] at @s if predicate tools:fill run execute as @e[tag=tools,distance=...01] at @s run function tools:fill/replace


#hand
execute as @a[tag=editor] at @e[tag=selected] unless predicate tools:tools_check_any run setblock ~ ~ ~ air destroy
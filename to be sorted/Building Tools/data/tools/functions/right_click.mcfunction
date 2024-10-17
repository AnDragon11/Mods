data remove entity @e[tag=tools,sort=nearest,limit=1] interaction

data modify storage minecraft:coords coordinates.block set value air
data modify storage minecraft:coords coordinates.block set from entity @p SelectedItem.id

#position
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:position run function tools:position/pos2

#radius
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:brush_m run function tools:brush/right_radius

#brush
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:brush run function tools:brush/brush

#fill
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:fill run function tools:fill/start

#structures
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:diamond_sword run place template minecraft:sphere ~ ~1 ~

execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/cherry run place feature minecraft:cherry ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/acacia run place feature minecraft:acacia ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/oak run place feature minecraft:oak ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/birch run place feature minecraft:birch ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/dark_oak run place feature minecraft:dark_oak ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/taiga run place feature minecraft:spruce ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/jungle run place feature minecraft:jungle_tree ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/azalea run place feature minecraft:azalea_tree ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/brown_mushroom run place feature minecraft:huge_brown_mushroom ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/red_mushroom run place feature minecraft:huge_red_mushroom ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/bamboo run place feature minecraft:bamboo_no_podzol ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/mangrove run place feature minecraft:mangrove ~ ~1 ~
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:trees/moss run place feature minecraft:moss_patch ~ ~1 ~



#copy and cut
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:copy run function tools:copy/paste with storage minecraft:coords coordinates
execute as @a[tag=editor] at @e[tag=selected] if predicate tools:cut run function tools:copy/move with storage minecraft:coords coordinates


#hand
execute as @a[tag=editor] at @e[tag=selected] unless predicate tools:tools_check_any run function tools:hand/place with storage minecraft:coords coordinates
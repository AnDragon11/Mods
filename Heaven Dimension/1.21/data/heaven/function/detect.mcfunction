execute as @a store result score @s Height run data get entity @s Pos[1]

#teleportation
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s Height >= GoHeaven Height in heaven:sky run forceload add ~ ~
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s Height >= GoHeaven Height in heaven:sky positioned over motion_blocking run tp ~ ~ ~
execute as @a[nbt={Dimension:"heaven:sky"}] at @s run forceload remove ~ ~

execute as @a[nbt={Dimension:"heaven:sky"}] at @s if score @s Height <= GoOverworld Height in minecraft:overworld run tp @s ~ 330 ~

#Anti Gravity Arrows
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4,Amplifier: 3b}],inGround:0b}] at @s unless data entity @s {NoGravity:1b} run data modify entity @s NoGravity set value 1
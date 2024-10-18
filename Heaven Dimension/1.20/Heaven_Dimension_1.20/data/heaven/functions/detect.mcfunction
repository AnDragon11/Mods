scoreboard players set @a GoHeaven 300
scoreboard players set @a GoOverworld -32
execute as @a store result score @s Hight run data get entity @s Pos[1]
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s Hight >= @s GoHeaven in heaven:sky run tp @s ~ 10 ~
execute as @a[nbt={Dimension:"heaven:sky"}] at @s if score @s Hight <= @s GoOverworld in minecraft:overworld run tp @s ~ 280 ~

#Anti Gravity Arrows
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4b,Amplifier: 3b}],inGround:0b}] at @s unless data entity @s {NoGravity:1b} run data modify entity @s NoGravity set value 1

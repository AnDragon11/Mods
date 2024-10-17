# Editors only
execute as @a[tag=editor] at @s run function tools:main


execute as @a[gamemode=creative] at @s if data entity @s Inventory.[{Slot:103b}].tag.editor run tag @s add editor
execute as @a at @s unless data entity @s Inventory.[{Slot:103b}].tag.editor run tag @s remove editor


# NON EDITORS: Manual function to kill all assosiated entities and tags

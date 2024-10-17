## TAG EDITOR >> MATCH TOOL >> SPAWN/TP INTERACTION >> DETECT CLICK >> GET SPECIFIC TOOL >> RUN FUNCTION 

# checks if any interactions have the same id
# no? then run interaction funciton. yes? tp nearest interaction
execute unless entity @e[tag=tools,limit=1] run summon interaction ~ ~ ~ {height:2f,Tags:["tools"]}

tp @e[tag=tools,limit=1,sort=nearest] @s

execute unless entity @e[tag=selected,limit=1] run function tools:selected

#raycast
execute anchored eyes unless predicate tools:air run function tools:raycast/raycast_shift
execute anchored eyes if predicate tools:air run function tools:raycast/raycast


#detect clicks
execute as @e[tag=tools,limit=1,sort=nearest] if predicate tools:right_click run function tools:right_click
execute as @e[tag=tools,limit=1,sort=nearest] if predicate tools:left_click run function tools:left_click

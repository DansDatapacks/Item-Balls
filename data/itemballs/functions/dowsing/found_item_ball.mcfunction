# executes as player after finding nearby item ball

# notify player
title @s actionbar {"text":"Item Found Nearby!"}

# sound
execute at @s run playsound cobblemon:pc.on player @s ~ ~ ~ 1 1

# get item ball location
data modify storage itemballs:dowsing.location Pos.X set from entity @e[type=minecraft:armor_stand,tag=itemballs.marker.found,limit=1,sort=nearest] Pos[0]
data modify storage itemballs:dowsing.location Pos.Y set from entity @e[type=minecraft:armor_stand,tag=itemballs.marker.found,limit=1,sort=nearest] Pos[1]
data modify storage itemballs:dowsing.location Pos.Z set from entity @e[type=minecraft:armor_stand,tag=itemballs.marker.found,limit=1,sort=nearest] Pos[2]

# set dowsing machine on
execute if predicate itemballs:holding_dowsing_machine_mainhand run item modify entity @s weapon.mainhand itemballs:dowsing_machine_on
execute if predicate itemballs:holding_dowsing_machine_offhand run item modify entity @s weapon.offhand itemballs:dowsing_machine_on

# remove storage
data remove storage itemballs:dowsing.location Pos
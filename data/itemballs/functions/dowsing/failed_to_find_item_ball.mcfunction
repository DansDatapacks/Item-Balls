# runs as player after failing to find nearby item ball

# notify player
title @s actionbar {"text":"No Item Found Nearby..."}

# sound
execute at @s run playsound cobblemon:pc.off player @s ~ ~ ~ 1 1

# set dowsing machine off
execute if predicate itemballs:holding_dowsing_machine_mainhand run item modify entity @s weapon.mainhand itemballs:dowsing_machine_off
execute if predicate itemballs:holding_dowsing_machine_offhand run item modify entity @s weapon.offhand itemballs:dowsing_machine_off
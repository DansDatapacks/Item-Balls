# sync triggers to their markers

# find unsynced triggers
execute as @e[type=minecraft:wandering_trader,tag=itemballs.trigger.init] run function itemballs:sync_trigger
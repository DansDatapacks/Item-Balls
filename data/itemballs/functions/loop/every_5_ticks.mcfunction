# runs every 1 ticks (4th of a second)

# handle dowsing machine
execute as @a[tag=!itemballs.dowsing.tracking] at @s if predicate itemballs:holding_dowsing_machine if score @s itemballs.crouching matches 1.. run function itemballs:dowsing/init_dowsing_machine_tracking
execute as @a[tag=itemballs.dowsing.tracking] at @s unless score @s itemballs.crouching matches 1.. run function itemballs:dowsing/end_dowsing_machine_tracking
execute as @a[tag=itemballs.dowsing.tracking] at @s unless predicate itemballs:holding_dowsing_machine run function itemballs:dowsing/end_dowsing_machine_tracking
execute as @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger] at @s run function itemballs:dowsing/sync_dowsing_trigger

# cooldown
execute as @a if score @s itemballs.dowsing_cooldown matches 1.. run scoreboard players remove @s itemballs.dowsing_cooldown 1

# reset scores
scoreboard players reset @a itemballs.crouching

# loop
schedule function itemballs:loop/every_5_ticks 5t replace
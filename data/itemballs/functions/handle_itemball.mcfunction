# runs every second (executes as item ball marker)

# if player nearby (and is not currently tracking)
execute if entity @p[distance=..7] if entity @s[tag=!itemballs.marker.tracking] at @s run function itemballs:init_tracking

# no player nearby (and is currently tracking)
execute unless entity @p[distance=..7] if entity @s[tag=itemballs.marker.tracking] at @s run function itemballs:end_tracking

# pop item balls with no supporting block
execute if block ~ ~ ~ #itemballs:passable at @s run function itemballs:loot_pop
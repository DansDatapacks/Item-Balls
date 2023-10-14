# runs as dowsing trigger wandering traders

# get id
scoreboard players operation #itemballs.dowsing.id itemballs.temp = @s itemballs.id

# find player
execute as @a[tag=itemballs.dowsing.tracking] if score @s itemballs.id = #itemballs.dowsing.id itemballs.temp run tag @s add itemballs.dowsing.player.match

# no player found
execute unless entity @a[tag=itemballs.dowsing.player.match] run tp ~ ~-1000 ~
execute unless entity @a[tag=itemballs.dowsing.player.match] run kill @s

# teleport to player
execute at @p[tag=itemballs.dowsing.player.match] run tp ~ ~ ~

# reset tags
tag @a[tag=itemballs.dowsing.player.match] remove itemballs.dowsing.player.match
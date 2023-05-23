# pop loot (executes as item ball marker)

# give loot
execute if entity @s[tag=itemballs.common] run loot give @p[tag=itemballs.opening_item_ball] loot itemballs:gameplay/rarity/common
execute if entity @s[tag=itemballs.uncommon] run loot give @p[tag=itemballs.opening_item_ball] loot itemballs:gameplay/rarity/uncommon
execute if entity @s[tag=itemballs.rare] run loot give @p[tag=itemballs.opening_item_ball] loot itemballs:gameplay/rarity/rare

# play sound
playsound cobblemon:poke_ball.open block @p[tag=itemballs.opening_item_ball] ~ ~ ~ 1 0.9

# play particles
particle minecraft:firework ~ ~1 ~ .01 .1 .01 .05 5

# kill trigger
execute positioned ~ ~-.7 ~ run tp @e[type=minecraft:wandering_trader,tag=itemballs.trigger,distance=...5] ~ -1000 ~

# kill marker
kill @s
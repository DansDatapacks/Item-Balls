# pop loot (executes as item ball marker)

# spawn loot
execute if entity @s[tag=itemballs.common] run loot spawn ~ ~.7 ~ loot itemballs:gameplay/rarity/common
execute if entity @s[tag=itemballs.uncommon] run loot spawn ~ ~.7 ~ loot itemballs:gameplay/rarity/uncommon
execute if entity @s[tag=itemballs.rare] run loot spawn ~ ~.7 ~ loot itemballs:gameplay/rarity/rare

# play sound
execute at @s run playsound cobblemon:poke_ball.open block @a ~ ~ ~ 1 0.9

# play particles
particle minecraft:firework ~ ~1 ~ .01 .1 .01 .05 5

# kill trigger
execute positioned ~ ~-.7 ~ as @e[type=minecraft:wandering_trader,tag=itemballs.trigger,distance=...5] run function itemballs:utility/remove_self

# kill marker
kill @s
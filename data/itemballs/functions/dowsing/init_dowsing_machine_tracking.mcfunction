# runs on all players that are holding a dowsing machine and are sneaking/crouching

# summon trigger wandering trader (in the sky to not show it)
summon minecraft:wandering_trader ~ 500 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Offers:{},ActiveEffects:[{Id:11,Amplifier:5b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["global.ignore","itemballs.dowsing.trigger","itemballs.dowsing.trigger.init"]}

# sync id between player and trigger wandering trader
execute positioned ~ 500 ~ run scoreboard players operation @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger.init,limit=1,sort=nearest] itemballs.id = @s itemballs.id

# turn off collision
execute positioned ~ 500 ~ run team join noCollision @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger.init,limit=1,sort=nearest]

# tag player as tracking
tag @s add itemballs.dowsing.tracking

# remove tags
tag @e[type=minecraft:wandering_trader,tag=itemballs.dowsing.trigger.init] remove itemballs.dowsing.trigger.init
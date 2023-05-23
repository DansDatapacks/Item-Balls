# player detected near item ball marker (executes as item ball)

# summon trigger villager
summon minecraft:villager ~ ~-.75 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Offers:{},ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Tags:["global.ignore","itemballs.trigger","itemballs.trigger.init"]}

# sync id between marker and trigger villager
scoreboard players operation @e[type=minecraft:villager,tag=itemballs.trigger.init,limit=1,sort=nearest] itemballs.id = @s itemballs.id

# tag as tracking
tag @s add itemballs.marker.tracking
scoreboard players set #hit in.fire_laser 1
summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;16777215]}]}}}}
data modify entity @e[type=firework_rocket,distance=..4,limit=1,sort=nearest] Owner set from entity @p[gamemode=!spectator] UUID

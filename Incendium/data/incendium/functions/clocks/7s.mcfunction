# clock: 7s

schedule function incendium:clocks/7s 7s replace

execute as @e[type=blaze,tag=in.sentry] at @s run function incendium:entity/sentry/7s

kill @e[type=arrow,tag=in.temp_arrow,nbt={inGround:1b}]

execute store result score %mob.griefing in.constants run gamerule mobGriefing

tag @e[tag=laser] remove laser
tag @e[tag=in.laser] remove in.laser
tag @e[tag=in.shot] remove in.shot

kill @e[type=falling_block,tag=in.kill_fire]

function incendium:technical/summon_helper

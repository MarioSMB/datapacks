# from: clocks/main
# @s: ticking entity

# various
execute if entity @s[tag=in.dune_blaze] run function incendium:entity/dune_blaze/main

execute if entity @s[tag=in.sentry] run function incendium:entity/sentry/main

execute if entity @s[tag=in.baby_ghast] run function incendium:entity/baby_ghast/main

# castle
data modify entity @s[tag=in.castle,tag=!in.active,tag=!in.NoAI] NoAI set value 1b
tag @s[tag=in.castle,tag=!in.active,tag=!in.NoAI] add in.NoAI
execute if entity @s[tag=in.castle,tag=in.active] run function incendium:castle/mob/main

# sanctum
execute if entity @s[tag=in.sanctum] run function incendium:sanctum/mob/main

# boss
execute if entity @s[tag=in.hovering_inferno] run function incendium:entity/hovering_inferno/main

# from: entity/mob/main
# @s: dune blaze

#> TODO: reconsider force
particle minecraft:falling_dust redstone_block ~ ~0.85 ~ 0.1 0.3 0.1 0 1 force

execute if predicate incendium:20_percent if block ~ ~-1 ~ ice run effect give @s instant_damage

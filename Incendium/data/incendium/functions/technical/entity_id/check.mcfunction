# from: entity/mob/main
# @s: entity
# resets all eids maybe

execute if score @s in.eid matches 32768.. run function incendium:technical/entity_id/reset

function incendium:technical/entity_id/init

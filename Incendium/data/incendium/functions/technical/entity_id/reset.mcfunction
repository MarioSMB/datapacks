# from ./check
# reset

scoreboard players reset * in.eid

tellraw @a[tag=in.admin,tag=in.debug] {"text": "Resetting in.eid", "color": "#ff8000"}

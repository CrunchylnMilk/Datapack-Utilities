
#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy

scoreboard objectives add du_jump minecraft.custom:minecraft.jump
scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add pregen_radius trigger

#version
scoreboard players set $du.ver.major load 2
scoreboard players set $du.ver.minor load 3
scoreboard players set $du.ver.fix load 0

#Team Data
team add du_nopush
team modify du_nopush collisionRule never

#ID stuff
execute unless score $uuid.incr du_uuid matches ..2147483647 run scoreboard players set $uuid.incr du_uuid 0

#init modules
function du:base/init
function du:math/init
function du:world/utils/init

#schedule load message
schedule function du:load_message 2s

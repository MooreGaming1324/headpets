##
 # effects.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
##Set Id and Name
scoreboard players operation @s hpet.pet_id = @p[tag=hpetSummon] hpet.player_id
data modify entity @s CustomName set from entity @e[type=text_display,tag=hpetTemp,sort=nearest,limit=1] text
kill @e[type=text_display,tag=hpetTemp]

##Effects
execute as @a[distance=..5] if score @s hpet.option.sounds matches 0 run playsound minecraft:entity.illusioner.prepare_mirror ambient @s ~ ~ ~
execute at @s run particle flash ~ ~1 ~ 0 0 0 10 3

##Reset
tag @p[tag=hpetSummon] remove hpetSummon
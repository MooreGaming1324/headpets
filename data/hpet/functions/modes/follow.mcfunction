##
 # follow.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute at @s if score .Idle hpet.temp matches 0 run tp @s ~ ~-.01 ~ facing entity @p[tag=hpetActive]
execute at @s if score .Idle hpet.temp matches 1 run tp @s ~ ~.01 ~ facing entity @p[tag=hpetActive]

#sprinting
execute facing entity @p[scores={hpet.sprint=1..},tag=hpetActive] feet if entity @s[distance=2..] at @s run teleport @s ^ ^ ^0.35 facing entity @p eyes
#normal
execute facing entity @p[scores={hpet.sprint=0,hpet.sneak=0},tag=hpetActive] feet if entity @s[distance=1.5..] at @s run teleport @s ^ ^ ^0.35 facing entity @p eyes
#sneaking
execute facing entity @p[scores={hpet.sneak=1..},tag=hpetActive] feet if entity @s[distance=2.5..] at @s run teleport @s ^ ^ ^0.09 facing entity @p eyes

#if too far away (10 blocks)
execute if entity @s[distance=10..] run tp @s @p

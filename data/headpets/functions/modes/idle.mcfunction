##
 # idle.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute at @s if score .Idle hpet.temp matches 0 run tp @s ~ ~-.01 ~ facing entity @p[tag=hpetActive]
execute at @s if score .Idle hpet.temp matches 1 run tp @s ~ ~.01 ~ facing entity @p[tag=hpetActive]
execute at @s facing entity @a[distance=2.5..,scores={hpet.sneak=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.09 facing entity @p eyes

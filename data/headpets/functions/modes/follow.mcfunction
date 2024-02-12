##
 # follow.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute at @s facing entity @a[distance=2..,scores={hpet.sprint=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s facing entity @a[distance=1.5..,scores={hpet.jump=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s facing entity @a[distance=1.5..,scores={hpet.walk=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
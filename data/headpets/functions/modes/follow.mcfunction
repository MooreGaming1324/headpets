##
 # follow.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute at @s facing entity @a[distance=2..,scores={hpets.sprint=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s facing entity @a[distance=1.5..,scores={hpets.jump=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s facing entity @a[distance=1.5..,scores={hpets.walk=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
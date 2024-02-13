##
 # follow.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##
execute at @s if score .Idle hpet.temp matches 0 run tp @s ~ ~-.01 ~ facing entity @p[tag=hpetActive]
execute at @s if score .Idle hpet.temp matches 1 run tp @s ~ ~.01 ~ facing entity @p[tag=hpetActive]

execute at @s as @a[tag=hpetActive,tag=!hpetMount] if score @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] hpet.pet_id = @s hpet.player_id as @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] run execute facing entity @a[distance=2..,scores={hpet.sprint=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s as @a[tag=hpetActive,tag=!hpetMount] if score @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] hpet.pet_id = @s hpet.player_id as @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] run execute facing entity @a[distance=1.5..,scores={hpet.sprint=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s as @a[tag=hpetActive,tag=!hpetMount] if score @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] hpet.pet_id = @s hpet.player_id as @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] run execute facing entity @a[distance=1.5..,scores={hpet.jump=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s as @a[tag=hpetActive,tag=!hpetMount] if score @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] hpet.pet_id = @s hpet.player_id as @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] run execute facing entity @a[distance=1.5..,scores={hpet.walk=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.35 facing entity @p eyes
execute at @s as @a[tag=hpetActive,tag=!hpetMount] if score @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] hpet.pet_id = @s hpet.player_id as @e[type=armor_stand,tag=hpet,sort=nearest,limit=1] run execute facing entity @a[distance=2.5..,scores={hpet.sneak=1..},tag=hpetActive,limit=1] feet run teleport @s ^ ^ ^0.09 facing entity @p eyes
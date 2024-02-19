##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Pet Summon Detection
execute as @e[type=item,nbt={Item:{tag:{hpet:{Pet:true}}}}] if data entity @s Thrower at @s run function hpet:summon/check_pet


##Triggers
scoreboard players enable @a hpet_mount
execute as @a[scores={hpet_mount=1..}] run function hpet:trigger/mount


##Mode Detection
#hover around players head
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/mount
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=1..}] run tag @s remove hpetMount
#follow player when moving
execute as @a[tag=hpetActive,tag=!hpetMount,tag=!hpetCombat] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/follow
#combat detection
execute as @a[tag=hpetActive,tag=hpetCombat] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/combat_hide

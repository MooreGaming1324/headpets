##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Pet Summon Detection
execute as @e[type=item,nbt={Item:{tag:{hpet:{Pet:true}}}}] at @s if entity @p[tag=!hpetActive] run function headpets:summon/check_pet


##Triggers
scoreboard players enable @a hpet_mount
execute as @a[scores={hpet_mount=1..}] run function headpets:trigger/mount


##Mode Detection
#hover around players head
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/mount
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=1..}] run tag @s remove hpetMount
#follow player when moving
execute as @a[tag=hpetActive,tag=!hpetMount] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/follow


##Reset detection scoreboards
scoreboard players set @a hpet.sprint 0
scoreboard players set @a hpet.sneak 0
scoreboard players set @a hpet.walk 0
execute as @a at @s unless block ~ ~-.001 ~ air run scoreboard players set @s hpet.jump 0
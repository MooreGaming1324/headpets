##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

##Pet Summon Detection
execute as @e[type=item,nbt={Item:{tag:{hpet:{Pet:true}}}}] at @s if entity @p[tag=!hpetActive] run function headpets:summon/check_pet





##Mode Detection
#hover around players head
execute as @a[tag=hpetActive,scores={hpet.sprint=0,hpet.sneak=0,hpet.jump=0,hpet.walk=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/hover
#follow player when moving
execute as @a[tag=hpetActive,scores={hpet.sprint=1..,hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/follow
execute as @a[tag=hpetActive,scores={hpet.jump=1..,hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/follow
execute as @a[tag=hpetActive,scores={hpet.walk=1..,hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/follow
#idle bob when player sneaking
execute as @a[tag=hpetActive,scores={hpet.sneak=1..}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function headpets:modes/idle


##Reset detection scoreboards
scoreboard players set @a hpet.sprint 0
scoreboard players set @a hpet.sneak 0
scoreboard players set @a hpet.walk 0
execute as @a at @s unless block ~ ~-.001 ~ air run scoreboard players set @s hpet.jump 0
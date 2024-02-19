##
 # main.mcfunction
 # 
 #
 # Created by MooreGaming1324.
##

## Data Library
#   tag:
#       hpet:
#           



## Players
execute as @a at @s run function hpet:player/main

## Item Summons
execute as @e[predicate=hpet:entity/is_summon] if data entity @s Thrower at @s run function hpet:summon/main

## Pets 
execute as @e[predicate=hpet:entity/is_pet] at @s run function hpet:pet/main



##Mode Detection
#hover around players head
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=0}] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/mount
execute as @a[tag=hpetActive,tag=hpetMount,scores={hpet.sneak=1..}] run tag @s remove hpetMount
#follow player when moving
execute as @a[tag=hpetActive,tag=!hpetMount,tag=!hpetCombat] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/follow
#combat detection
execute as @a[tag=hpetActive,tag=hpetCombat] at @s as @e[tag=hpet,type=armor_stand] if score @s hpet.pet_id = @p hpet.player_id run function hpet:modes/combat_hide

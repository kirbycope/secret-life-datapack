execute as @s[scores={timer=0}] run scoreboard players set @s timer 1
execute as @s[scores={timer=1}] run title @a title "§cYour secret is..."
execute as @s[scores={timer=20}] run title @a title "§c3"
execute as @s[scores={timer=20}] run playsound ui.button.click block @s ~ ~ ~
execute as @s[scores={timer=40}] run title @a title "§c2"
execute as @s[scores={timer=40}] run playsound ui.button.click block @s ~ ~ ~
execute as @s[scores={timer=60}] run title @a title "§c1"
execute as @s[scores={timer=60}] run playsound ui.button.click block @s ~ ~ ~
execute as @s[scores={timer=80}] run title @a clear
execute as @s[scores={timer=80,session1=1,session2=0,session3=0,session4=0,session5=0}] run function secret:session1
execute as @s[scores={timer=80,session1=1,session2=1,session3=0,session4=0,session5=0}] run function secret:session2
execute as @s[scores={timer=80,session1=1,session2=1,session3=1,session4=0,session5=0}] run function secret:session3
execute as @s[scores={timer=80,session1=1,session2=1,session3=1,session4=1,session5=0}] run function secret:session4
execute as @s[scores={timer=80,session1=1,session2=1,session3=1,session4=1,session5=1}] run function secret:session5
execute as @s[scores={timer=80}] run execute at @s run particle totem_of_undying ~ ~ ~ 0 2 0 .5 100
execute as @s[scores={timer=80}] run tag @s remove countdown
execute as @s[scores={timer=80}] run scoreboard players set @s timer 0

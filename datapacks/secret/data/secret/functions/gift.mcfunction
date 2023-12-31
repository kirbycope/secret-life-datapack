# Let the executing player know if they have given their heart away
execute as @s[scores={s1gift=1,session1=1,session2=0,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s2gift=1,session1=1,session2=1,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s3gift=1,session1=1,session2=1,session3=1,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s4gift=1,session1=1,session2=1,session3=1,session4=1,session5=0,session6=0,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s5gift=1,session1=1,session2=1,session3=1,session4=1,session5=1,session6=0,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s6gift=1,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=0,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s7gift=1,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=0,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s8gift=1,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=0}] run tell @s Heart already given this session!
execute as @s[scores={s9gift=1,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=1}] run tell @s Heart already given this session!

# If the executing player has a heart to give this session, then add tag `gift`, and save that it was given
execute as @s[scores={s1gift=0,session1=1,session2=0,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s1gift=0,session1=1,session2=0,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run scoreboard players set @s s1gift 1
execute as @s[scores={s2gift=0,session1=1,session2=1,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s2gift=0,session1=1,session2=1,session3=0,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run scoreboard players set @s s2gift 1
execute as @s[scores={s3gift=0,session1=1,session2=1,session3=1,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s3gift=0,session1=1,session2=1,session3=1,session4=0,session5=0,session6=0,session7=0,session8=0,session9=0}] run scoreboard players set @s s3gift 1
execute as @s[scores={s4gift=0,session1=1,session2=1,session3=1,session4=1,session5=0,session6=0,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s4gift=0,session1=1,session2=1,session3=1,session4=1,session5=0,session6=0,session7=0,session8=0,session9=0}] run scoreboard players set @s s4gift 1
execute as @s[scores={s5gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=0,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s5gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=0,session7=0,session8=0,session9=0}] run scoreboard players set @s s5gift 1
execute as @s[scores={s6gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=0,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s6gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=0,session8=0,session9=0}] run scoreboard players set @s s6gift 1
execute as @s[scores={s7gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=0,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s7gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=0,session9=0}] run scoreboard players set @s s7gift 1
execute as @s[scores={s8gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=0}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s8gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=0}] run scoreboard players set @s s8gift 1
execute as @s[scores={s9gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=1}] run tag @p[distance=0.1..] add gift
execute as @s[scores={s9gift=0,session1=1,session2=1,session3=1,session4=1,session5=1,session6=1,session7=1,session8=1,session9=1}] run scoreboard players set @s s9gift 1

# Increment the max hearts for the player tagged `gift`
execute as @p[tag=gift,scores={health=60}] run attribute @s generic.max_health base set 62
execute as @p[tag=gift,scores={health=59}] run attribute @s generic.max_health base set 61
execute as @p[tag=gift,scores={health=58}] run attribute @s generic.max_health base set 60
execute as @p[tag=gift,scores={health=57}] run attribute @s generic.max_health base set 59
execute as @p[tag=gift,scores={health=56}] run attribute @s generic.max_health base set 58
execute as @p[tag=gift,scores={health=55}] run attribute @s generic.max_health base set 57
execute as @p[tag=gift,scores={health=54}] run attribute @s generic.max_health base set 56
execute as @p[tag=gift,scores={health=53}] run attribute @s generic.max_health base set 55
execute as @p[tag=gift,scores={health=52}] run attribute @s generic.max_health base set 54
execute as @p[tag=gift,scores={health=51}] run attribute @s generic.max_health base set 53
execute as @p[tag=gift,scores={health=50}] run attribute @s generic.max_health base set 52
execute as @p[tag=gift,scores={health=49}] run attribute @s generic.max_health base set 51
execute as @p[tag=gift,scores={health=48}] run attribute @s generic.max_health base set 50
execute as @p[tag=gift,scores={health=47}] run attribute @s generic.max_health base set 49
execute as @p[tag=gift,scores={health=46}] run attribute @s generic.max_health base set 48
execute as @p[tag=gift,scores={health=45}] run attribute @s generic.max_health base set 47
execute as @p[tag=gift,scores={health=44}] run attribute @s generic.max_health base set 46
execute as @p[tag=gift,scores={health=43}] run attribute @s generic.max_health base set 45
execute as @p[tag=gift,scores={health=42}] run attribute @s generic.max_health base set 44
execute as @p[tag=gift,scores={health=41}] run attribute @s generic.max_health base set 43
execute as @p[tag=gift,scores={health=40}] run attribute @s generic.max_health base set 42
execute as @p[tag=gift,scores={health=39}] run attribute @s generic.max_health base set 41
execute as @p[tag=gift,scores={health=38}] run attribute @s generic.max_health base set 40
execute as @p[tag=gift,scores={health=37}] run attribute @s generic.max_health base set 39
execute as @p[tag=gift,scores={health=36}] run attribute @s generic.max_health base set 38
execute as @p[tag=gift,scores={health=35}] run attribute @s generic.max_health base set 37
execute as @p[tag=gift,scores={health=34}] run attribute @s generic.max_health base set 36
execute as @p[tag=gift,scores={health=33}] run attribute @s generic.max_health base set 35
execute as @p[tag=gift,scores={health=32}] run attribute @s generic.max_health base set 34
execute as @p[tag=gift,scores={health=31}] run attribute @s generic.max_health base set 33
execute as @p[tag=gift,scores={health=30}] run attribute @s generic.max_health base set 32
execute as @p[tag=gift,scores={health=29}] run attribute @s generic.max_health base set 31
execute as @p[tag=gift,scores={health=28}] run attribute @s generic.max_health base set 30
execute as @p[tag=gift,scores={health=27}] run attribute @s generic.max_health base set 29
execute as @p[tag=gift,scores={health=26}] run attribute @s generic.max_health base set 28
execute as @p[tag=gift,scores={health=25}] run attribute @s generic.max_health base set 27
execute as @p[tag=gift,scores={health=24}] run attribute @s generic.max_health base set 26
execute as @p[tag=gift,scores={health=23}] run attribute @s generic.max_health base set 25
execute as @p[tag=gift,scores={health=22}] run attribute @s generic.max_health base set 24
execute as @p[tag=gift,scores={health=21}] run attribute @s generic.max_health base set 23
execute as @p[tag=gift,scores={health=20}] run attribute @s generic.max_health base set 22
execute as @p[tag=gift,scores={health=19}] run attribute @s generic.max_health base set 21
execute as @p[tag=gift,scores={health=18}] run attribute @s generic.max_health base set 20
execute as @p[tag=gift,scores={health=17}] run attribute @s generic.max_health base set 19
execute as @p[tag=gift,scores={health=16}] run attribute @s generic.max_health base set 18
execute as @p[tag=gift,scores={health=15}] run attribute @s generic.max_health base set 17
execute as @p[tag=gift,scores={health=14}] run attribute @s generic.max_health base set 16
execute as @p[tag=gift,scores={health=13}] run attribute @s generic.max_health base set 15
execute as @p[tag=gift,scores={health=12}] run attribute @s generic.max_health base set 14
execute as @p[tag=gift,scores={health=11}] run attribute @s generic.max_health base set 13
execute as @p[tag=gift,scores={health=10}] run attribute @s generic.max_health base set 12
execute as @p[tag=gift,scores={health=9}] run attribute @s generic.max_health base set 11
execute as @p[tag=gift,scores={health=8}] run attribute @s generic.max_health base set 10
execute as @p[tag=gift,scores={health=7}] run attribute @s generic.max_health base set 9
execute as @p[tag=gift,scores={health=6}] run attribute @s generic.max_health base set 8
execute as @p[tag=gift,scores={health=5}] run attribute @s generic.max_health base set 7
execute as @p[tag=gift,scores={health=4}] run attribute @s generic.max_health base set 6
execute as @p[tag=gift,scores={health=3}] run attribute @s generic.max_health base set 5
execute as @p[tag=gift,scores={health=2}] run attribute @s generic.max_health base set 4
execute as @p[tag=gift,scores={health=1}] run attribute @s generic.max_health base set 3

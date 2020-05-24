#execute at @a[tag=mend] as @e[type=minecraft:experience_orb,distance=..0] run say 1
### 아이템들 ###

	### 패시브 ###

		### 공통 ###
			# 체력증가 (5개까지 나옴, 보스전 보상, 골드 소모)
			# 제트팩 (안정해짐) [시선에 따라서 움직임, 걸으면 날기시작]
			# 라마 (골드 소모, 상자방) [공격을 도와줌, 펫]
			# 인벤세이브 (보스전 보상, 상자방) [소실저주 무시]
			# 에머 추가 (3개까지 나옴, 체력 소모)
			# 수선 (영웅 보상, 체력 소모)
			# 흡혈 (골드 소모, 상자방, 보스전 보상)
			# 올스텟 업 (골드 소모, 상자방, 보스전 보상)
			# 갑옷
			# 엔더의 눈 (상자방, 골드 소모) [숨겨진 방 보기]
			# 나침반 (상자방, 골드소모, 보스전 보상) [보스방 추적]
			# 내구성 마법 (영웅 보상, 에머 소모) [저항 버프]
			# 렌덤박스 (상자방, 보스전 보상, 골드 소모)
			# 에머 시간 단축
			# 치명타 () [기절]
			# 출혈 ()
			# 흡혈 (상자방, 골드소모, 보스전 보상) [적을 죽일시 일정확률로 즉시회복 효과]
			# 재생 (상자방, 골드 소모, 보스전 보상) [피해를 입으먼 일부를 회복함]
			# 크리퍼 (상자방, 골드소모)
			# 독 폭탄
			# 위더 폭탄
			# 나약함 폭탄
			# 구속 폭탄
			# 죽이면 애머획득
			# 밝기에 따라 힘 증가
			# 레벨에 따라 힘 증가
			# 모션 값이 0에서 멀어질수록 공격력 증가
			# 모루 (인첸트 제한 해제)
			# 지식의 책 ( 지금 있는 방의 몬스터 종류, 등등 을 공유 )
			# 진짜 칼 ( 이제서야, )
		###########

		### rd1 ###
			# 힘 마법 (영웅 보상, 체력을 소모)
			# 밀어내기 마법 (골드 소모, 상자방)
			# 화살 2개 발사 (영웅 보상, rd1, rd2 공통, 체력을 소모)
		###########

		### rd2 ###
			# 다중발사 마법 (골드 소모, 상자방)
			# 빠른장전 마법 (영웅보상, 체력을 소모)
			# 화살 2개 발사 (영웅보상, rd1, rd2 공통, 체력을 소모)
		###########

		### rd3 ###
			# 범위 증가 ()
			# 
		###########

		### nd1 ###
			# 날카로움 마법 (영웅보상, 체력을 소모)
			# 밀치기 마법 (골드소모, 상자방)
		###########

		### nd2 ###
			# 충절 ()
		###########

	### 소모성 아이템 ###

		### 공통 ###
			# 우유 (상자방, 골드 소모) [독, 위더 제거]
			# 경험치병 ()
		###########
	##################

	### 저주 ###

		# binding
		# varnish
	###########

	### 스킬 아이템 ###

		### 공통 ###
			# 얼음 마법 (골드소모, 상자방)
			# 화염 마법 (골드소모, 상자방)
			# 포탑설치	
			# 다이스 ()	
	################
##############

execute store result score count-item-armor item-random if entity @e[tag=item-selecter]

scoreboard players set max-item item-random 19
execute as @e[tag=item-selecter,tag=host] at @s unless score max-item item-random <= count-item-armor item-random run summon minecraft:armor_stand ~ ~ ~ {Tags:["item-selecter"]}
execute as @e[tag=item-selecter,tag=host] at @s unless score max-item item-random <= count-item-armor item-random run tp ^ ^ ^1

execute as @e[tag=item-selecter,tag=load,tag=!end] store result score item-num item-random run data get entity @s Pos[2]
execute as @e[tag=item-selecter,tag=load,tag=!end] run tag @s add end

execute at @a[tag=event-now] as @e[tag=map-all,tag=event,sort=nearest,limit=1] if entity @s[tag=!end-active-event,scores={event-type=1}] run function comm:game-start/class/actevent-item
execute as @e[tag=item-random,scores={item-random=..0}] at @s run function comm:game-start/class/summon-item

--5DSA002
Debug.SetAIName("Cup Ramen Man")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,1800,0,0)
--[[message
	Source: Yu-Gi-Oh! 5D's - Episode 115
]]
--Card group1  
--Backrow1 
local co1 = Debug.AddCard(511600374,1,1,LOCATION_SZONE,5,POS_FACEUP)--
--backrow0
Debug.AddCard(4178474,0,0,LOCATION_SZONE,2,POS_FACEDOWN) --
local co2 = Debug.AddCard(511600374,0,0,LOCATION_SZONE,5,POS_FACEUP)--
--MZ1 
Debug.AddCard(511009132,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --
--MZ0  
Debug.AddCard(72992744,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--

--Hand0   
Debug.AddCard(8487449,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(513000154,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--Extra0  

--	

Debug.PreAddCounter(co1, 0x91, 4)
Debug.PreAddCounter(co2, 0x91, 4)
Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()


--注释

--LOCATION_DECK  卡组
--LOCATION_SZONE  后场
--LOCATION_GRAVE   墓地
--LOCATION_HAND    手牌
--LOCATION_MZONE   怪区
--LOCATION_EXTRA  额外
--POS_FACEDOWN   里侧
--POS_FACEUP     表侧
--POS_FACEUP_DEFENSE    表侧防守
--POS_FACEUP_ATTACK     表侧攻击
--Debug.PreEquip(e1,c1)  绑定e1和C1
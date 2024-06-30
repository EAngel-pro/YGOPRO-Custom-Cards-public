--Pendulum Tutorial
Debug.SetAIName("Tutorial")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,7300,0,0)
--[[message
	Name: Pendulum Tutorial
	Complexity: 1/10
	Master Rule: 5
]]
--Card group1  
--Strange area1 
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--

--Strange area0  

--Card group0   
Debug.AddCard(15146890,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court0   
--Backrow1
--graveyard0  
Debug.AddCard(11819616,0,0,LOCATION_GRAVE,0,POS_FACEUP)--

--Hand0   
Debug.AddCard(78193831,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(53257892,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(72714461,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(87798440,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(51531505,0,0,LOCATION_HAND,0,POS_FACEDOWN)--


--额外0  
--	



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
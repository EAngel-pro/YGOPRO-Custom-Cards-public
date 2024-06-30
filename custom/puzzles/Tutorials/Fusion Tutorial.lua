--Fusion Tutorial
Debug.SetAIName("Tutorial")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,7300,0,0)
--[[message
	Name: Fusion Tutorial
	Complexity: 1/10
	Master Rule: 5
]]
--Card group1  
--Strange area1 
Debug.AddCard(15951532,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)--
Debug.AddCard(27125110,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)--
Debug.AddCard(27125110,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
Debug.AddCard(27125110,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)--

--Strange area0  
Debug.AddCard(52551211,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(17732278,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Card group0   
--back-court0   
Debug.AddCard(59919307,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
--Backrow1
Debug.AddCard(10813327,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(5851097,1,1,LOCATION_SZONE,3,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(89943723,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(10667321,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(18144506,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(44394295,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(21143940,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--extra1
Debug.AddCard(50449881,1,1,LOCATION_EXTRA,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(85507811,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(50608164,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(20366274,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
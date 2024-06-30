--Xyz Tutorial
Debug.SetAIName("Tutorial")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,2800,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--[[message
	Name: Xyz Tutorial
	Complexity: 1/10
	Master Rule: 5
]]
--Card group1  
Debug.AddCard(43237273,1,1,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(80344569,1,1,LOCATION_DECK,0,POS_FACEDOWN)--
--mzone1 
Debug.AddCard(25958491,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--

--Strange area0  
Debug.AddCard(92826944,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(47660516,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Card group0   
--back-court0   
--Backrow1
--graveyard0  

--Hand0   
Debug.AddCard(44877690,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(44877690,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(25259669,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(74519184,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--hand1
Debug.AddCard(15574615,1,1,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(54959865,1,1,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(75574498,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(20785975,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
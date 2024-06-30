--Link Tutorial
Debug.SetAIName("Tutorial")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,1800,0,0)
--[[message
	Name: Link Tutorial
	Complexity: 1/10
	Master Rule: 5
]]
--Card group1  
--Strange area1 
Debug.AddCard(68987122,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--
Debug.AddCard(98978921,1,1,LOCATION_MZONE,6,POS_FACEUP_ATTACK)--
Debug.AddCard(41248270,1,1,LOCATION_MZONE,5,POS_FACEUP_ATTACK)--
Debug.AddCard(2411269,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(22953211,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--

--Strange area0  
Debug.AddCard(66457407,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(69865139,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Card group0   
--back-court0   
Debug.AddCard(97077563,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
--Backrow1
Debug.AddCard(40838625,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--
--graveyard0  

--Hand0   
Debug.AddCard(14943837,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(81439173,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(53129443,0,0,LOCATION_HAND,0,POS_FACEDOWN)--


--额外0  
Debug.AddCard(50588353,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(1861629,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
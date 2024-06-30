--Ritual Tutorial
Debug.SetAIName("Tutorial")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,3000,0,0)
--[[message
	Name: Ritual Tutorial
	Complexity: 1/10
	Master Rule: 5
]]
--Card group1  
--Strange area1 
Debug.AddCard(51126152,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--

--Strange area0  

--Card group0   
Debug.AddCard(60365591,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(86327225,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court0   
--Backrow1
--graveyard0  
Debug.AddCard(34230233,0,0,LOCATION_GRAVE,0,POS_FACEUP)--

--Hand0   
Debug.AddCard(33731070,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(13048472,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(25880422,0,0,LOCATION_HAND,0,POS_FACEDOWN)--


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
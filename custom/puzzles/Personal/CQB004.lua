--CQB004
Debug.SetAIName("Dort")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,3500,0,0)
Debug.SetPlayerInfo(1,13000,0,0)
--[[message
	Name: DP
	Complexity: 8/10
	Master Rule: 5
]]
--Card group1  
--Strange area1 
Debug.AddCard(55787576,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)--
Debug.AddCard(86165817,1,1,LOCATION_MZONE,5,POS_FACEUP_DEFENSE)--
Debug.AddCard(69890967,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
Debug.AddCard(68722455,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)--
Debug.AddCard(32012841,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)--
--Strange area0  
Debug.AddCard(89943723,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(65192027,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
--deck1
Debug.AddCard(89493368,1,1,LOCATION_DECK,0,POS_FACEDOWN)--
--Card group0   
Debug.AddCard(21887179,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(23571046,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(99261403,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(15341821,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(23770284,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(6631034,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court0   
Debug.AddCard(24068492,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--23140
Debug.AddCard(40633297,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(80604091,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--
Debug.AddCard(83968380,0,0,LOCATION_SZONE,4,POS_FACEDOWN)--
Debug.AddCard(62980542,0,0,LOCATION_SZONE,0,POS_FACEDOWN)--
--Backrow1
Debug.AddCard(82732705,1,1,LOCATION_SZONE,2,POS_FACEUP)--
Debug.AddCard(8842266,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(10813327,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--
Debug.AddCard(71249758,1,1,LOCATION_SZONE,4,POS_FACEDOWN)--
--Hand0   
Debug.AddCard(54959865,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(43237273,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(80344569,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(19139516,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--ED0  
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(48996569,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(28677304,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(11502550,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(40080312,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(90050480,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
--Hand1
--Debug.PreEquip(e1,c1)


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
--Z1
Debug.SetAIName("Z")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--Card group1  
--Strange area1 

--Strange area0  
Debug.AddCard(50732780,0,0,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)--
Debug.AddCard(11613567,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(58685438,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--

--Card group0   
Debug.AddCard(18407024,0,0,LOCATION_DECK,0,POS_FACEDOWN)--	
Debug.AddCard(43422537,0,0,LOCATION_DECK,0,POS_FACEDOWN)--	
--back-court0   
Debug.AddCard(37576645,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
--Backrow1
--graveyard0  
Debug.AddCard(46710683,0,0,LOCATION_GRAVE,0,POS_FACEUP)--

--Hand0   
Debug.AddCard(22835145,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--额外0  
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(97489701,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(94515289,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
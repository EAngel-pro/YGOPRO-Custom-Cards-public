--DP 3
Debug.SetAIName("Dort")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,6600,0,0)
--Card group1  
--Strange area1 
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
--Strange area0  
Debug.AddCard(65192027,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(27125110,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--

--Card group0   
Debug.AddCard(6631034,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court0   
Debug.AddCard(83968380,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(40633297,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
--Backrow1
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)--
Debug.AddCard(82732705,1,1,LOCATION_SZONE,3,POS_FACEUP)--
Debug.AddCard(8842266,1,1,LOCATION_SZONE,1,POS_FACEDOWN)--
--graveyard0  
Debug.AddCard(99261403,0,0,LOCATION_GRAVE,0,POS_FACEUP)--

--Hand0   
Debug.AddCard(19613556,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
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
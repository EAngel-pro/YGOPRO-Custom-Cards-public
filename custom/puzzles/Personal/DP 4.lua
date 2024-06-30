--DP 4
Debug.SetAIName("Dort")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,900,0,0)
Debug.SetPlayerInfo(1,5300,0,0)
--Card group1  
--Strange area1 
Debug.AddCard(69890967,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(89493368,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
--Strange area0  


--Card group0   
--back-court0   
Debug.AddCard(53582587,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(24068492,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
--Backrow1
--graveyard0  
Debug.AddCard(23571046,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(23571046,0,0,LOCATION_GRAVE,0,POS_FACEUP)--

--Hand0   
Debug.AddCard(15341821,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(19139516,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(43422537,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
--额外0  
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
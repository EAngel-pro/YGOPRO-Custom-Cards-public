--Z2
Debug.SetAIName("Z")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,3300,0,0)
--Card group1  
--Strange area1 

--Strange area0  
Debug.AddCard(61864793,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)--

--Card group0   	
--back-court0   
--Backrow1
--graveyard0  

--Hand0   
Debug.AddCard(12817939,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(94820406,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--额外0  
Debug.AddCard(58332301,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
--WCS - 2010 - 01
Debug.SetAIName("Check")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,2600,0,0)
--Card group1  
--Strange area1 
--Strange area0  
Debug.AddCard(74093656,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--

--Token
--Card group0   
--back-court1   
Debug.AddCard(29401950,1,1,LOCATION_SZONE,2,POS_FACEDOWN)--
--graveyard0  

--Hand0   
Debug.AddCard(47372349,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(23635815,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(97204936,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
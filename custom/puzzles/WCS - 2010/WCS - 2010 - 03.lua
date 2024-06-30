--WCS - 2010 - 03
Debug.SetAIName("Check")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,3800,0,0)
--Card group1  
--Strange area1 
Debug.AddCard(65192027,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
--Strange area0  

--Token
--Card group0   
--Backrow0   
Debug.AddCard(2295440,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
--graveyard0  

--Hand0   
Debug.AddCard(33420078,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(20932152,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(94664694,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(21159309,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(68543408,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(7841112,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(44508094,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(46195773,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
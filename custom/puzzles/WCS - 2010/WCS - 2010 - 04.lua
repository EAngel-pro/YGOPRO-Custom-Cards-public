--WCS - 2010 - 04
Debug.SetAIName("Check")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,3000,0,0)
--Deck0  
Debug.AddCard(57774843,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(94381039,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(83725008,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(7183277,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(58996430,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Strange area1 
Debug.AddCard(31305911,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)--
Debug.AddCard(31305911,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)--
Debug.AddCard(31305911,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
--Strange area0  
Debug.AddCard(21502796,0,0,LOCATION_MZONE,2,POS_FACEDOWN_DEFENSE)--
--Token
--Card group0   
--Backrow0   
Debug.AddCard(83968380,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(35346968,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
--Backrow1   
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(87148330,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
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
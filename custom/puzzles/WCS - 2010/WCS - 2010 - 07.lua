--WCS - 2010 - 07
Debug.SetAIName("Owner")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,4000,0,0)
Debug.SetPlayerInfo(1,4000,0,0)
--Deck0  
Debug.AddCard(80549379,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Strange area1 
Debug.AddCard(900787,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
--Strange area0  
Debug.AddCard(21249921,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
--Token
--Deck1

--Backrow0   
Debug.AddCard(74701381,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(97077563,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
--Backrow1   
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(43422537,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(13626450,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(83986578,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(13361027,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(81962318,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--Extra0  

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
--WCS - 2010 - 08
Debug.SetAIName("Owner")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,2000,0,0)
Debug.SetPlayerInfo(1,5400,0,0)
--Deck0  
Debug.AddCard(13821299,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(97651498,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--Strange area1 
Debug.AddCard(59509952,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(72634965,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
--Strange area0  

--Token
--Deck1

--Backrow0   
Debug.AddCard(72575145,0,0,LOCATION_SZONE,0,POS_FACEDOWN)--
Debug.AddCard(1475311,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--
Debug.AddCard(71453557,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(31550470,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(79759861,0,0,LOCATION_SZONE,4,POS_FACEDOWN)--
--Backrow1   
Debug.AddCard(82732705,1,1,LOCATION_SZONE,2,POS_FACEUP)--
Debug.AddCard(85742772,1,1,LOCATION_SZONE,0,POS_FACEUP)--
Debug.AddCard(85742772,1,1,LOCATION_SZONE,1,POS_FACEUP)--
Debug.AddCard(85742772,1,1,LOCATION_SZONE,3,POS_FACEUP)--
Debug.AddCard(85742772,1,1,LOCATION_SZONE,4,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(51827737,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(98954375,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(51566770,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--Extra0  
Debug.AddCard(95453143,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(9888196,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
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
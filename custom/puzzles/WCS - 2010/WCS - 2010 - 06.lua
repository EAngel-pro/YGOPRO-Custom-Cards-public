--WCS - 2010 - 06
Debug.SetAIName("Owner")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,5000,0,0)
Debug.SetPlayerInfo(1,5000,0,0)
--Deck0  
Debug.AddCard(98045062,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(8903700,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(34358408,0,0,LOCATION_DECK,0,POS_FACEDOWN)--

--Strange area1 
Debug.AddCard(61757117,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(77044671,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
--Strange area0  

--Token
--Deck1
Debug.AddCard(57281778,1,1,LOCATION_DECK,0,POS_FACEDOWN)--
--Backrow0   

--Backrow1   

--graveyard0  
Debug.AddCard(33420078,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
--Hand0   
Debug.AddCard(72426662,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(15341821,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(69035382,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(85087012,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

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
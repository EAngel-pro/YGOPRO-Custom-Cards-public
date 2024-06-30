--WCS - 2010 - 09
Debug.SetAIName("Owner")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,13900,0,0)
--Deck0  
--Strange area1 
Debug.AddCard(21947653,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)--
Debug.AddCard(30646525,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--
Debug.AddCard(33413279,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(47084486,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
Debug.AddCard(89943723,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)--
--Strange area0  
Debug.AddCard(21615956,0,0,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)--
Debug.AddCard(34659866,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
--Token
--Deck1

--Backrow0   
Debug.AddCard(63102017,0,0,LOCATION_SZONE,0,POS_FACEDOWN)--
Debug.AddCard(43422537,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--
Debug.AddCard(46652477,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(63995093,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(48976825,0,0,LOCATION_SZONE,4,POS_FACEDOWN)--
--Backrow1   
Debug.AddCard(30459350,1,1,LOCATION_SZONE,2,POS_FACEUP)--
Debug.AddCard(44947065,1,1,LOCATION_SZONE,0,POS_FACEUP)--
Debug.AddCard(44947065,1,1,LOCATION_SZONE,1,POS_FACEUP)--
Debug.AddCard(46173679,1,1,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(46173679,1,1,LOCATION_SZONE,4,POS_FACEDOWN)--
--graveyard0  
Debug.AddCard(34659866,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(34659866,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
--Hand0   
Debug.AddCard(62180201,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(65192027,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(77585513,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(37520316,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(8487449,0,0,LOCATION_HAND,0,POS_FACEDOWN)--

--Extra0  
Debug.AddCard(511000229,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
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
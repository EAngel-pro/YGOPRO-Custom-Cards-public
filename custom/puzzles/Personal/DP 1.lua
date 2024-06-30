--DP 1
Debug.SetAIName("Dort")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1400,0,0)
Debug.SetPlayerInfo(1,2550,0,0)
--Card group1  
--Strange area1 
c1=Debug.AddCard(20277860,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(32012841,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--
--Strange area0  
Debug.AddCard(21887179,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(2732323,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)--

--Token
--Card group0   
Debug.AddCard(23770284,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(45939841,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court1   
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)--
e1=Debug.AddCard(40619825,1,1,LOCATION_SZONE,3,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(55144522,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  

--	
Debug.PreEquip(e1,c1)


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
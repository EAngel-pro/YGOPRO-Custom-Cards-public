--DP 2
Debug.SetAIName("Dort")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,1)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,2500,0,0)
--Card group1  
--Strange area1 
c1=Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--
--Strange area0  
Debug.AddCard(89943723,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--

--Card group0   
--back-court0   
--Backrow1
e1=Debug.AddCard(40619825,1,1,LOCATION_SZONE,2,POS_FACEUP)--
--graveyard0  

--Hand0   
Debug.AddCard(54959865,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(17955766,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(43237273,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(89621922,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(17732278,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(80344569,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(55171412,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(28677304,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(11502550,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(81566151,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(85507811,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(48996569,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
--CQB001
Debug.SetAIName("Snipsworth")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1100,0,0)
Debug.SetPlayerInfo(1,4000,0,0)
--[[message
	Name: Z-ARC Turbo
	Complexity: 3/10
	Master Rule: 3
]]
--Card group1  
--Strange area1 
Debug.AddCard(31305911,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE) --
--Strange area0  

--Token
--Card group0   
Debug.AddCard(60473572,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(1845204,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(75195825,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--back-court0   

--graveyard0  

--Hand0   
Debug.AddCard(81439173,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(22211622,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(96227613,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(14943837,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(52824910,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
Debug.AddCard(71490127,0,0,LOCATION_HAND,0,POS_FACEDOWN)--
--额外0  
Debug.AddCard(27337596,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(19974580,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(3366982,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(13331639,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--

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
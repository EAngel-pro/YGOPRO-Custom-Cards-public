--CQB013
Debug.SetAIName("Snipsworth")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,4400,0,0)
Debug.SetPlayerInfo(1,22500,0,0)
--[[message
	Name: Ties That Bind
	Complexity: 8/10
	Master Rule: 5
]]
--Mzone1 
local g0=Debug.AddCard(34004470,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--Saturn
Debug.PreSummon(g0,SUMMON_TYPE_NORMAL)
local g1=Debug.AddCard(8062132,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--Vennom
Debug.PreSummon(g1,SUMMON_TYPE_SPECIAL)
g1:CompleteProcedure()
local g2=Debug.AddCard(84687358,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--MFD
g2:CompleteProcedure()
Debug.PreSummon(g2,SUMMON_TYPE_FUSION)
local g3=Debug.AddCard(27279764,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)--Towers
Debug.PreSummon(g3,SUMMON_TYPE_NORMAL)
local g4=Debug.AddCard(18013090,1,1,LOCATION_MZONE,0,POS_FACEUP_DEFENSE)--Nitro
g4:CompleteProcedure()
Debug.PreSummon(g4,SUMMON_TYPE_SYNCHRO)
--Mzone0
local p0=Debug.AddCard(57774843,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--JD
Debug.PreSummon(p0,SUMMON_TYPE_SPECIAL)
local p1=Debug.AddCard(70595331,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)--Blud
Debug.PreSummon(p1,SUMMON_TYPE_SPECIAL)
local p2=Debug.AddCard(33420078,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)--Plague
Debug.PreSummon(p2,SUMMON_TYPE_SPECIAL)
--Deck0   
Debug.AddCard(70117860,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(26194151,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(63804806,0,0,LOCATION_DECK,0,POS_FACEDOWN)--	
Debug.AddCard(89538537,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(21900719,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
Debug.AddCard(86198326,0,0,LOCATION_DECK,0,POS_FACEDOWN)--
--Backrow1
e1=Debug.AddCard(7452945,1,1,LOCATION_SZONE,2,POS_FACEUP)--
--Backrow0
Debug.AddCard(37576645,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--
Debug.AddCard(37576645,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--
Debug.AddCard(37576645,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--
Debug.AddCard(65959844,0,0,LOCATION_SZONE,5,POS_FACEUP)--
--Hand0   
Debug.AddCard(23842445,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(99899504,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(2295440,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(63977008,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(92826944,0,0,LOCATION_HAND,0,POS_FACEDOWN)--	
--Hand1
Debug.AddCard(53573406,1,1,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(53573406,1,1,LOCATION_HAND,0,POS_FACEDOWN)--	
Debug.AddCard(53573406,1,1,LOCATION_HAND,0,POS_FACEDOWN)--	
--ED0  
Debug.AddCard(92661479,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(60800381,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(21187631,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(87259077,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(73580471,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(50954680,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(96029574,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
Debug.AddCard(74892653,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--
--gy0
local gy1=Debug.AddCard(89516305,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
gy1:CompleteProcedure()
Debug.AddCard(94350039,0,0,LOCATION_GRAVE,0,POS_FACEUP)--
--gy1
Debug.AddCard(72677437,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(72677437,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(72677437,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(81985784,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(81985784,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(94656263,1,1,LOCATION_GRAVE,0,POS_FACEUP)--
Debug.AddCard(94656263,1,1,LOCATION_GRAVE,0,POS_FACEUP)--

Debug.PreAddCounter(g1, 0x11, 2)
Debug.PreEquip(e1,g4)
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
--QB解谜21
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,100,0,0)
Debug.SetPlayerInfo(1,7200,0,0)
--怪区1 
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --青眼白龙
--怪区0 
Debug.AddCard(41230939,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)--电子暗黑魔角
--卡组0 
Debug.AddCard(03019642,0,0,LOCATION_DECK,0,POS_FACEDOWN)--电子暗黑龙骨
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)--青眼白龙
Debug.AddCard(89631139,0,0,LOCATION_DECK,0,POS_FACEDOWN)--青眼白龙
Debug.AddCard(70095154,0,0,LOCATION_DECK,0,POS_FACEDOWN)--电子龙
Debug.AddCard(70095154,0,0,LOCATION_DECK,0,POS_FACEDOWN)--电子龙
--后场0
Debug.AddCard(74848038,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--死者转生
Debug.AddCard(79759861,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--向死者招手
Debug.AddCard(70278545,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--谦虚之壶
--墓地0
Debug.AddCard(36870345,0,0,LOCATION_GRAVE,0,POS_FACEUP)--龙骑兵团-小标枪兵
Debug.AddCard(36870345,0,0,LOCATION_GRAVE,0,POS_FACEUP)--龙骑兵团-小标枪兵
Debug.AddCard(89631139,0,0,LOCATION_GRAVE,0,POS_FACEUP)--青眼白龙
Debug.AddCard(48568432,0,0,LOCATION_GRAVE,0,POS_FACEUP)--三角火龙
Debug.AddCard(48568432,0,0,LOCATION_GRAVE,0,POS_FACEUP)--三角火龙
--手牌0 
Debug.AddCard(77625948,0,0,LOCATION_HAND,0,POS_FACEDOWN)--电子黑暗刃
Debug.AddCard(48766543,0,0,LOCATION_HAND,0,POS_FACEDOWN)--电子科技翼龙
Debug.AddCard(17658803,0,0,LOCATION_HAND,0,POS_FACEDOWN)--翡翠龙
Debug.AddCard(77565204,0,0,LOCATION_HAND,0,POS_FACEDOWN)--未来融合
Debug.AddCard(03659803,0,0,LOCATION_HAND,0,POS_FACEDOWN)--超载融合
Debug.AddCard(71490127,0,0,LOCATION_HAND,0,POS_FACEDOWN)--龙之镜
--额外0  
Debug.AddCard(40418351,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--铠黑龙-电子暗黑龙
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--青眼究极龙
Debug.AddCard(64599569,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)--嵌合超载龙
--除外

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
--LOCATION_REMOVED  除外
--POS_FACEDOWN   里侧
--POS_FACEUP     表侧
--POS_FACEUP_DEFENSE    表侧防守
--POS_FACEUP_ATTACK     表侧攻击
--Debug.PreEquip(e1,c1)  绑定e1和C1
--tc:CompleteProcedure()解除TC苏生限制
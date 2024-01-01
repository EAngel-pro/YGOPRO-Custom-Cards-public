--Battle Warrior 2
function c35833438.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	Fusion.AddProcMix(c,true,true,55550921,aux.FilterBoolFunctionEx(Card.IsRace,RACE_WARRIOR))
end

--Amazon otF
function c33747369.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	Fusion.AddProcMix(c,false,false,17968114,aux.FilterBoolFunctionEx(Card.IsRace,RACE_PLANT))
end

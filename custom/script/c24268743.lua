--Junk Fiend
function c24268743.initial_effect(c)
	--synchro summon
	Synchro.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsRace,RACE_FIEND),1,1,aux.FilterSummonCode(60800381),1,1)
	c:EnableReviveLimit()
end

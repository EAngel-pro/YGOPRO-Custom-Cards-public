--Big C
local s,id=GetID()
function s.initial_effect(c)
	--synchro summon
	Synchro.AddProcedure(c,aux.FilterSummonCode(79043452),1,1,Synchro.NonTuner(Card.IsCode,13569911),1,1)
	c:EnableReviveLimit()
end
--Machina Queen
function c77947620.initial_effect(c)
	--synchro summon
	Synchro.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsRace,RACE_MACHINE),1,1,Synchro.NonTuner(Card.IsSetCard,0x36),1,99)
	c:EnableReviveLimit()
end

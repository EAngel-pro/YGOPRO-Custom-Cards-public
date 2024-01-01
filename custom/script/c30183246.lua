--Spirit Warrior
function c30183246.initial_effect(c)
	--synchro summon
	Synchro.AddProcedure(c,c30183246.tfilter,1,1,Synchro.NonTuner(Card.IsRace,RACE_ZOMBIE),1,1)
	c:EnableReviveLimit()
end
c30183246.material_setcode=0x1017
function c30183246.tfilter(c)
	return c:IsCode(35419445) or c:IsHasEffect(20932152)
end

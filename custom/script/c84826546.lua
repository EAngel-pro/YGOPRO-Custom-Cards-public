--Red Dragon Armor Master
local s,id=GetID()
function s.initial_effect(c)
	--effect
	local e2=aux.AddNormalSummonProcedure(c,true,true,1,1,SUMMON_TYPE_TRIBUTE,aux.Stringid(id,0),s.otfilter)
	local e3=aux.AddNormalSetProcedure(c,true,true,1,1,SUMMON_TYPE_TRIBUTE,aux.Stringid(id,0),s.otfilter)
end
function s.otfilter(c,tp)
	return c:IsSetCard(0x1543) and c:IsType(TYPE_MONSTER) and (c:IsControler(tp) or c:IsFaceup())
end

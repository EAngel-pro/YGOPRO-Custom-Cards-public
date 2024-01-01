--FG LV7
function c68129054.initial_effect(c)
	--summon
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_LIMIT_SUMMON_PROC)
	e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e1:SetRange(LOCATION_HAND)
	e1:SetCondition(c68129054.spcon)
	e1:SetOperation(c68129054.spop)
	e1:SetValue(SUMMON_TYPE_TRIBUTE)
	c:RegisterEffect(e1)
	local e2=e1:Clone()
	e2:SetCode(EFFECT_LIMIT_SET_PROC)
	c:RegisterEffect(e2)
	--cannot special summon
	local e3=Effect.CreateEffect(c)
	e3:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e3:SetType(EFFECT_TYPE_SINGLE)
	e3:SetCode(EFFECT_SPSUMMON_CONDITION)
	c:RegisterEffect(e3)
end
c68129054.lvdncount=2
c68129054.lvdn={38849637,93854575}
c68129054.listed_names={38849637}
c68129054.LVnum=7
c68129054.LVset=0xFFF
function c68129054.spcon(e,c)
	if c==nil then return true end
	local g=Duel.GetReleaseGroup(c:GetControler())
	return Duel.GetLocationCount(c:GetControler(),LOCATION_MZONE)>-2
		and g:GetCount()>1 and g:IsExists(Card.IsCode,1,nil,38849637)
end
function c68129054.spop(e,tp,eg,ep,ev,re,r,rp,c)
	local g=Duel.GetReleaseGroup(tp)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_RELEASE)
	local sg1=g:FilterSelect(tp,Card.IsCode,1,1,nil,38849637)
	g:RemoveCard(sg1:GetFirst())
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_RELEASE)
	local sg2=g:Select(tp,1,1,nil)
	sg1:Merge(sg2)
	Duel.Release(sg1,REASON_COST)
end

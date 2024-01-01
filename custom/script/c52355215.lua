--E HERO LG
function c52355215.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	Fusion.AddProcMix(c,true,true,88010182,21844576)
	--effect
	local e1=Effect.CreateEffect(c)
	e1:SetCategory(CATEGORY_DESTROY+CATEGORY_RECOVER)
	e1:SetType(EFFECT_TYPE_IGNITION)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCountLimit(1)
	e1:SetCost(c52355215.cost)
	e1:SetTarget(c52355215.tg)
	e1:SetOperation(c52355215.op)
	c:RegisterEffect(e1)
end
function c52355215.filter(c)
	return c:IsType(TYPE_TRAP+TYPE_SPELL)
end
function c52355215.tg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.IsExistingMatchingCard(c52355215.filter,tp,0,LOCATION_ONFIELD,1,nil) end
	local sg=Duel.GetMatchingGroup(c52355215.filter,tp,0,LOCATION_ONFIELD,nil)
	Duel.SetOperationInfo(0,CATEGORY_DESTROY,sg,sg:GetCount(),0,0)
	Duel.SetOperationInfo(0,CATEGORY_RECOVER,nil,0,1-tp,sg:GetCount()*1000)
end
function c52355215.op(e,tp,eg,ep,ev,re,r,rp)
	local sg=Duel.GetMatchingGroup(c52355215.filter,tp,0,LOCATION_ONFIELD,nil)
	local ct=Duel.Destroy(sg,REASON_EFFECT)
	Duel.Recover(tp,ct*1000,REASON_EFFECT)
end
function c52355215.cost(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.CheckReleaseGroup(tp,Card.IsSetCard,1,nil,0x3008) end
	local g=Duel.SelectReleaseGroup(tp,Card.IsSetCard,1,1,nil,0x3008)
	Duel.Release(g,REASON_COST)
end

--SLBHeart
function c35803390.initial_effect(c)
	--immune
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCode(EFFECT_IMMUNE_EFFECT)
	e1:SetValue(c35803390.efilter)
	c:RegisterEffect(e1)
	--negate
	local e2=Effect.CreateEffect(c)
	e2:SetCategory(CATEGORY_NEGATE)
	e2:SetType(EFFECT_TYPE_QUICK_O)
	e2:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DAMAGE_CAL)
	e2:SetCode(EVENT_CHAINING)
	e2:SetRange(LOCATION_MZONE)
	e2:SetCondition(c35803390.negcon)
	e2:SetCost(c35803390.discost)
	e2:SetTarget(c35803390.negtg)
	e2:SetOperation(c35803390.negop)
	c:RegisterEffect(e2)
end
function c35803390.cfilter(c,tp)
	return c:IsControler(tp) and c:IsSetCard(0x1F4) and c:IsLocation(LOCATION_MZONE) and c:IsFaceup()
end
function c35803390.negcon(e,tp,eg,ep,ev,re,r,rp)
	if not (rp==1-tp and re:IsHasProperty(EFFECT_FLAG_CARD_TARGET)) then return false end
	local g=Duel.GetChainInfo(ev,CHAININFO_TARGET_CARDS)
	return g and g:IsExists(c35803390.cfilter,1,nil,tp) and Duel.IsChainNegatable(ev)
end
function c35803390.negtg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetOperationInfo(0,CATEGORY_NEGATE,eg,1,0,0)
end
function c35803390.negop(e,tp,eg,ep,ev,re,r,rp)
	if Duel.NegateActivation(ev) then return true end
end
function c35803390.discost(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return e:GetHandler():IsAbleToHandAsCost() end
	Duel.SendtoHand(e:GetHandler(),nil,REASON_COST)
end
function c35803390.efilter(e,te)
	return te:IsActiveType(TYPE_SPELL+TYPE_TRAP)
end
--T-S Maiden
function c16447793.initial_effect(c)
	c:EnableReviveLimit()
	Link.AddProcedure(c,c16447793.matfilter,2)
	--cannot direct attack
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_CANNOT_DIRECT_ATTACK)
	c:RegisterEffect(e1)
	--win con
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_F+EFFECT_FLAG_CANNOT_DISABLE)
	e2:SetCode(EVENT_BATTLE_DAMAGE)
	e2:SetOperation(c16447793.winop)
	c:RegisterEffect(e2)
end
function c16447793.matfilter(c)
	return c:GetSummonLocation()==LOCATION_EXTRA and c:IsLevelAbove(11)
end
function c16447793.winop(e,tp,eg,ep,ev,re,r,rp)
	Duel.Win(tp,0xF0)
end
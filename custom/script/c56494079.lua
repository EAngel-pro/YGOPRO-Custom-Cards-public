--SL BB
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	c:RegisterEffect(e1)
	--cannot attack
	local e3=Effect.CreateEffect(c)
	e3:SetType(EFFECT_TYPE_FIELD)
	e3:SetRange(LOCATION_SZONE)
	e3:SetTargetRange(0,LOCATION_MZONE)
	e3:SetCode(EFFECT_CANNOT_SELECT_BATTLE_TARGET)
	e3:SetCondition(s.damcon)
	e3:SetValue(s.cannotatk)
	c:RegisterEffect(e3)
end
function s.cfilter(c)
	return c:IsFaceup() and c:IsCode(35803390)
end
function s.cfilter2(c)
	return c:IsFaceup() and c:IsCode(49395829)
end
function s.cfilter3(c)
	return c:IsFaceup() and c:IsCode(41150172)
end
function s.damcon(e)
	return Duel.IsExistingMatchingCard(s.cfilter,e:GetHandlerPlayer(),LOCATION_MZONE,0,1,nil)
		and Duel.IsExistingMatchingCard(s.cfilter2,e:GetHandlerPlayer(),LOCATION_MZONE,0,1,nil)
		and Duel.IsExistingMatchingCard(s.cfilter3,e:GetHandlerPlayer(),LOCATION_MZONE,0,1,nil)
end
function s.cannotatk(e,c)
	return c:IsFaceup() and c:IsSetCard(0x11F4) and c:IsType(TYPE_MONSTER)
end
--Pw
local s,id=GetID()
function s.initial_effect(c)
	--Take no battle damage involving this card
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetCode(EFFECT_AVOID_BATTLE_DAMAGE)
	e2:SetValue(s.tglimit)
	c:RegisterEffect(e2)
end
function s.tglimit(e,c)
	return c and c:IsRace(RACE_WARRIOR)
end
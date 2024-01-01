--Blaster Elite
function c25141363.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	Fusion.AddProcMixN(c,true,true,aux.FilterBoolFunctionEx(c25141363.mfilter2),4)
	--spsummon condition
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e1:SetCode(EFFECT_SPSUMMON_CONDITION)
	e1:SetValue(c25141363.EvilHeroLimit)
	c:RegisterEffect(e1)
end
function c25141363.mfilter2(c)
	return c:IsSetCard(0x1036)
end

--Special Summon limit for CBT Fusion monsters
function c25141363.EvilHeroLimit(e,se,sp,st)
	return se:GetHandler():IsCode(88116785)
end
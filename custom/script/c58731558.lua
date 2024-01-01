--Eclipse Lord
Duel.LoadScript("c430.lua")
function c58731558.initial_effect(c)
	c:EnableReviveLimit()
	--cannot special summon
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e1:SetCode(EFFECT_SPSUMMON_CONDITION)
	e1:SetValue(aux.FALSE)
	c:RegisterEffect(e1)
	--special summon from hand
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_FIELD)
	e2:SetCode(EFFECT_SPSUMMON_PROC)
	e2:SetProperty(EFFECT_FLAG_UNCOPYABLE)
	e2:SetRange(LOCATION_HAND)
	e2:SetCondition(c58731558.spcon)
	e2:SetOperation(c58731558.spop)
	c:RegisterEffect(e2)
	--atkup
	local e3=Effect.CreateEffect(c)
	e3:SetType(EFFECT_TYPE_SINGLE)
	e3:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e3:SetCode(EFFECT_UPDATE_ATTACK)
	e3:SetRange(LOCATION_MZONE)
	e3:SetValue(c58731558.atkval)
	c:RegisterEffect(e3)
	--banish
	local e4=Effect.CreateEffect(c)
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
	e4:SetCode(EVENT_PHASE+PHASE_END)
	e4:SetRange(LOCATION_MZONE)
	e4:SetCountLimit(1)
	e4:SetCondition(c58731558.drcon)
	e4:SetOperation(c58731558.rmop)
	c:RegisterEffect(e4)
	--Special Summon
	local e5=Effect.CreateEffect(c)
	e5:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
	e5:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e5:SetCode(EVENT_PHASE+PHASE_END)
	e5:SetRange(LOCATION_REMOVED)
	e5:SetCountLimit(1)
	e5:SetCondition(c58731558.spcon2)
	e5:SetTarget(c58731558.sptg2)
	e5:SetOperation(c58731558.spop2)
	c:RegisterEffect(e5)
end

function c58731558.cfilter(c)
	return (not c:IsLocation(LOCATION_MZONE) or c:IsFaceup()) and c:IsAbleToRemoveAsCost() 
		and (c:IsLocation(LOCATION_HAND+LOCATION_SZONE) or aux.SpElimFilter(c,true,true))
end
function c58731558.sprfilter1(c,mg,ft)
	local mg2=mg:Clone()
	local ct=ft
	if c:IsLocation(LOCATION_MZONE) then ct=ct+1 end
	mg2:RemoveCard(c)
	return c:IsCode(84187918) and mg2:IsExists(c58731558.sprfilter2,1,nil,mg2,ct)
end
function c58731558.sprfilter2(c,mg,ft)
	local mg2=mg:Clone()
	local ct=ft
	if c:IsLocation(LOCATION_MZONE) then ct=ct+1 end
	mg2:RemoveCard(c)
	return c:IsCode(50547922) and ct>0
end
function c58731558.spcon(e,c)
	if c==nil then return true end
	local tp=c:GetControler()
	local ft=Duel.GetLocationCount(tp,LOCATION_MZONE)
	local mg=Duel.GetMatchingGroup(c58731558.cfilter,tp,LOCATION_HAND+LOCATION_ONFIELD,0,nil)
	return mg:IsExists(c58731558.sprfilter1,1,nil,mg,ft)
end
function c58731558.spop(e,tp,eg,ep,ev,re,r,rp,c)
	local mg=Duel.GetMatchingGroup(c58731558.cfilter,tp,LOCATION_HAND+LOCATION_ONFIELD,0,nil)
	local ft=Duel.GetLocationCount(tp,LOCATION_MZONE)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_REMOVE)
	local g1=mg:FilterSelect(tp,c58731558.sprfilter1,1,1,nil,mg,ft)
	local tc1=g1:GetFirst()
	mg:RemoveCard(tc1)
	if tc1:IsLocation(LOCATION_MZONE) then ft=ft+1 end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_REMOVE)
	local g2=mg:FilterSelect(tp,c58731558.sprfilter2,1,1,nil,mg,ft)
	local tc2=g2:GetFirst()
	if tc2:IsLocation(LOCATION_MZONE) then ft=ft+1 end
	mg:RemoveCard(tc2)
	g1:Merge(g2)
	Duel.Remove(g1,POS_FACEUP,REASON_COST)
end
function c58731558.atkfilter(c)
	return c:IsType(TYPE_MONSTER) and c:IsMoon() or c:IsSetCard(0x157)
end
function c58731558.atkval(e,c)
	return Duel.GetMatchingGroupCount(c58731558.atkfilter,c:GetControler(),LOCATION_GRAVE+LOCATION_REMOVED,LOCATION_GRAVE+LOCATION_REMOVED,0,nil)*1000
end
function c58731558.drcon(e,tp,eg,ep,ev,re,r,rp)
	return Duel.GetTurnPlayer()~=tp
end
function c58731558.rmop(e,tp,eg,ep,ev,re,r,rp)
	Duel.Remove(e:GetHandler(),POS_FACEUP,REASON_EFFECT)
end
--banished special
function c58731558.spcon2(e,tp,eg,ep,ev,re,r,rp)
	return Duel.GetTurnPlayer()==tp
end
function c58731558.sptg2(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,e:GetHandler(),1,0,0)
end
function c58731558.spop2(e,tp,eg,ep,ev,re,r,rp,chk)
	local c=e:GetHandler()
	Duel.SpecialSummon(c,0,tp,tp,true,true,POS_FACEUP_ATTACK)
end

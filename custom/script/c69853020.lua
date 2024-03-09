--Chaos Rain
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetHintTiming(0,TIMING_END_PHASE)
	c:RegisterEffect(e1)
	--effect
	local e2=Effect.CreateEffect(c)
	e2:SetCategory(CATEGORY_SPECIAL_SUMMON+CATEGORY_SEARCH)
	e2:SetType(EFFECT_TYPE_QUICK_O)
	e2:SetRange(LOCATION_SZONE)
	e2:SetCode(EVENT_FREE_CHAIN)
	e2:SetHintTiming(0,TIMING_END_PHASE)
	e2:SetCountLimit(1)
	e2:SetCost(s.cost)
	e2:SetTarget(s.tg)
	e2:SetOperation(s.op)
	c:RegisterEffect(e2)
end
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
	e:SetLabel(100)
	return true
end
function s.cfilter(c,e,tp,ft)
	local lv=c:GetLevel()
	local atk=c:GetAttack()
	local def=c:GetDefense()
	local code=c:GetCode()
	return lv>0 and Duel.IsExistingMatchingCard(s.spfilter,tp,LOCATION_DECK+LOCATION_HAND,0,1,nil,lv,atk,def,code,e,tp)
		and (ft>0 or (c:IsControler(tp) and c:GetSequence()<5)) and (c:IsControler(tp) or c:IsFaceup()) --no links
end
function s.spfilter(c,lv,atk,def,code,e,tp)
	return c:GetLevel()==lv and c:GetAttack()==atk and c:GetDefense()==def and c:GetCode()~=code and c:IsSetCard(0xCF) and ( c:IsCanBeSpecialSummoned(e,0,tp,false,false) or c:IsCanBeSpecialSummoned(e,0,tp,true,true) and c:IsCode(40544475) )
end
function s.tg(e,tp,eg,ep,ev,re,r,rp,chk)
	local ft=Duel.GetLocationCount(tp,LOCATION_MZONE)
	if chk==0 then
		if e:GetLabel()~=100 then return false end
		e:SetLabel(0)
		return ft>-1 and Duel.CheckReleaseGroupCost(tp,s.cfilter,1,false,nil,nil,e,tp,ft)
	end
	local rg=Duel.SelectReleaseGroupCost(tp,s.cfilter,1,1,false,nil,nil,e,tp,ft)
	s[0]=rg:GetFirst():GetLevel()
	s[1]=rg:GetFirst():GetAttack()
	s[2]=rg:GetFirst():GetDefense()
	s[3]=rg:GetFirst():GetCode()
	Duel.Release(rg,REASON_COST)
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,nil,1,tp,LOCATION_DECK+LOCATION_HAND)
end
function s.op(e,tp,eg,ep,ev,re,r,rp)
	if Duel.GetLocationCount(tp,LOCATION_MZONE)<=0 then return end
	local lv=s[0]
	local atk=s[1]
	local def=s[2]
	local code=s[3]
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
	local g=Duel.SelectMatchingCard(tp,s.spfilter,tp,LOCATION_DECK+LOCATION_HAND,0,1,1,nil,lv,atk,def,code,e,tp)
	if #g>0 then
		Duel.SpecialSummon(g,0,tp,tp,true,true,POS_FACEUP)
	end
end
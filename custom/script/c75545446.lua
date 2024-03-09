--Pure Unity
local s,id=GetID()
function s.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetCost(s.cost)
	e1:SetTarget(s.target)
	e1:SetOperation(s.activate)
	c:RegisterEffect(e1)
end
s.listed_names={60246171,48202661,69456283,82057833}
function s.spcheck(sg,tp)
	return aux.ReleaseCheckMMZ(sg,tp) and sg:IsExists(s.chk,1,nil,sg) and sg:IsExists(s.chk2,1,nil,sg) and sg:IsExists(s.chk3,1,nil,sg)
end
function s.chk(c,sg)
	return c:IsCode(60246171)
end
function s.chk2(c,sg)
	return c:IsCode(48202661)
end
function s.chk3(c,sg)
	return c:IsCode(69456283)
end
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.CheckReleaseGroupCost(tp,Card.IsCode,3,nil,s.spcheck,nil,60246171,48202661,69456283) end
	local sg=Duel.SelectReleaseGroupCost(tp,Card.IsCode,3,3,nil,s.spcheck,nil,60246171,48202661,69456283)
	Duel.Release(sg,REASON_COST)
end
function s.filter(c,e,tp)
	return c:IsCode(82057833) and c:IsCanBeSpecialSummoned(e,0,tp,true,true)
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then
		if e:GetLabel()==0 and Duel.GetLocationCount(tp,LOCATION_MZONE)<=-1 then return false end
		e:SetLabel(0)
		return Duel.IsExistingMatchingCard(s.filter,tp,LOCATION_HAND+LOCATION_DECK,0,1,nil,e,tp)
	end
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,nil,1,tp,LOCATION_HAND+LOCATION_DECK)
end
function s.activate(e,tp,eg,ep,ev,re,r,rp)
	if Duel.GetLocationCount(tp,LOCATION_MZONE)<=-1 then return end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
	local g=Duel.SelectMatchingCard(tp,s.filter,tp,LOCATION_HAND+LOCATION_DECK,0,1,1,nil,e,tp)
	if #g>0 then
		Duel.SpecialSummon(g,0,tp,tp,true,true,POS_FACEUP)
		g:GetFirst():CompleteProcedure()
	end
end

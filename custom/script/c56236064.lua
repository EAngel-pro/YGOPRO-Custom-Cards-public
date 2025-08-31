--Light Mother
local s,id=GetID()
function s.initial_effect(c)
	--pendulum summon
	Pendulum.AddProcedure(c)
	--owari
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.Stringid(id,0))
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetCode(EFFECT_SPSUMMON_PROC_G)
	e1:SetProperty(EFFECT_FLAG_UNCOPYABLE+EFFECT_FLAG_CANNOT_DISABLE)
	e1:SetRange(LOCATION_PZONE)
	e1:SetCondition(s.pencon)
	e1:SetOperation(s.penop)
	e1:SetValue(SUMMON_TYPE_PENDULUM+SUMMON_TYPE_RITUAL)
	local e3=Effect.CreateEffect(c)
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_GRANT)
	e3:SetRange(LOCATION_PZONE)
	e3:SetTargetRange(LOCATION_SZONE,0)
	e3:SetTarget(aux.TargetBoolFunction(Card.IsLocation,LOCATION_PZONE))
	e3:SetLabelObject(e1)
	c:RegisterEffect(e3)
	--functional effect
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_FIELD)
	e2:SetCode(EFFECT_ADD_SETCODE)
	e2:SetRange(LOCATION_PZONE)
	e2:SetTargetRange(LOCATION_MZONE+LOCATION_HAND+LOCATION_GRAVE,0)
	e2:SetTarget(s.tg)
	e2:SetValue(0x1F9)
	c:RegisterEffect(e2)
end
--functional effect
function s.tg(e,c)
	return c:IsAttribute(ATTRIBUTE_LIGHT)
end
--owari
function s.penfilter(c,e,tp,lscale,rscale)
	local pg=aux.GetMustBeMaterialGroup(tp,Group.CreateGroup(),tp,c,nil,REASON_RITUAL)
	return #pg<=0 and s.pendfilter(c,e,tp,lscale,rscale,false)
end
function s.pencon(e,c,og)
	if c==nil then return true end
	local tp=c:GetControler()
	local rpz=Duel.GetFieldCard(tp,LOCATION_PZONE,1)
	if rpz==nil or c==rpz or Duel.GetFlagEffect(tp,10000000)>0 then return false end
	local lscale=c:GetLeftScale()
	local rscale=rpz:GetRightScale()
	if lscale>rscale then lscale,rscale=rscale,lscale end
	local loc=0
	if Duel.GetLocationCount(tp,LOCATION_MZONE)>0 then loc=loc|LOCATION_HAND end
	if Duel.GetLocationCountFromEx(tp)>0 then loc=loc|LOCATION_EXTRA end
	if loc==0 then return false end
	local g=nil
	if og then
		g=og:Filter(Card.IsLocation,nil,loc)
	else
		g=Duel.GetFieldGroup(tp,loc,0)
	end
	return g:IsExists(s.penfilter,1,nil,e,tp,lscale,rscale)
end
function s.penop(e,tp,eg,ep,ev,re,r,rp,c,sg,inchain)
	local tp=e:GetOwnerPlayer()
	local rpz=Duel.GetFieldCard(tp,LOCATION_PZONE,1)
	local lscale=c:GetLeftScale()
	local rscale=rpz:GetRightScale()
	if lscale>rscale then lscale,rscale=rscale,lscale end
	local ft=Duel.GetLocationCountFromEx(tp)
	if Duel.IsPlayerAffectedByEffect(tp,CARD_BLUEEYES_SPIRIT) then ft=1 else ft=99 end
	ft=math.min(ft,aux.CheckSummonGate(tp) or ft)
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
	local g=Duel.SelectMatchingCard(tp,s.penfilter,tp,LOCATION_EXTRA+LOCATION_HAND,0,Duel.IsSummonCancelable() and 0 or 1,ft,nil,e,tp,lscale,rscale)
	if g then
		sg:Merge(g)
	end
	if #sg>0 then
		Duel.Hint(HINT_CARD,0,id)
		if not inchain then
			Duel.RegisterFlagEffect(tp,10000000,RESET_PHASE|PHASE_END|RESET_SELF_TURN,0,1)
		end
		Duel.HintSelection(Group.FromCards(c))
		Duel.HintSelection(Group.FromCards(rpz))
	end
	local tc=Duel.GetMatchingGroup(s.desfilter,tp,LOCATION_HAND|LOCATION_EXTRA|LOCATION_ONFIELD,0,nil,e)
	if tc then
		for tc in aux.Next(g) do
			tc:CompleteProcedure()
		end
	end
end
function s.pendfilter(c,e,tp,lscale,rscale,lvchk)
	if lscale>rscale then lscale,rscale=rscale,lscale end
	local lv=0
	if c.pendulum_level then
		lv=c.pendulum_level
	else
		lv=c:GetLevel()
	end
	return (c:IsLocation(LOCATION_HAND) or (c:IsFaceup() and c:IsType(TYPE_PENDULUM)))
		and (lvchk or (lv>lscale and lv<rscale) or c:IsHasEffect(511004423)) and ( c:IsCanBeSpecialSummoned(e,SUMMON_TYPE_PENDULUM,tp,false,false) or 
			( c:IsCanBeSpecialSummoned(e,SUMMON_TYPE_PENDULUM,tp,true,false) and c:IsRitualMonster() ) )
		and not c:IsForbidden()
end
function s.desfilter(c,e)
	return c:IsRitualMonster() and (c:IsFaceup() or not c:IsLocation(LOCATION_ONFIELD))
end

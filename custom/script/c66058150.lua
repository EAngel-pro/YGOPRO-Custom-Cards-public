--XXX
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
	c:EnableCounterPermit(0x0FFE,LOCATION_MZONE)
	--Special Summon Restrict
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_UNCOPYABLE)
	e1:SetCode(EFFECT_SPSUMMON_CONDITION)
	c:RegisterEffect(e1)
	--Special Summon + Survive
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_O)
	e2:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e2:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DAMAGE_CAL+EFFECT_FLAG_DELAY)
	e2:SetCode(EVENT_CUSTOM+id)--513000124/511002521
	e2:SetRange(LOCATION_HAND+LOCATION_DECK)
	e2:SetCondition(s.spcon)
	e2:SetTarget(s.sptg)
	e2:SetOperation(s.spop)
	c:RegisterEffect(e2)
	--spsummon success
	local e0=Effect.CreateEffect(c)
	e0:SetCategory(CATEGORY_COUNTER)
	e0:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_F)
	e0:SetCode(EVENT_SPSUMMON_SUCCESS)
	e0:SetTarget(s.addct)
	e0:SetOperation(s.addc)
	c:RegisterEffect(e0)
	--Condition
	local e3=Effect.CreateEffect(c)
	e3:SetType(EFFECT_TYPE_FIELD)
	e3:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
	e3:SetTargetRange(1,0)
	e3:SetCode(id)
	e3:SetLabel(0)
	e3:SetLabelObject(e2)
	e3:SetCondition(s.econ)
	Duel.RegisterEffect(e3,0)
	local e4=e3:Clone()
	e4:SetLabel(1)
	Duel.RegisterEffect(e4,1)
	--Counter removal
	local e6=Effect.CreateEffect(c)
	e6:SetType(EFFECT_TYPE_TRIGGER_F+EFFECT_TYPE_FIELD)
	e6:SetRange(LOCATION_MZONE)
	e6:SetCode(EVENT_PHASE+PHASE_STANDBY)
	e6:SetCountLimit(1)
	e6:SetOperation(s.ctop)
	c:RegisterEffect(e6)
	--Self-Destruction
	local e7=Effect.CreateEffect(c)
	e7:SetType(EFFECT_TYPE_TRIGGER_F+EFFECT_TYPE_FIELD)
	e7:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e7:SetRange(LOCATION_MZONE)
	e7:SetCode(EVENT_PHASE+PHASE_END)
	e7:SetCondition(s.descon)
	e7:SetOperation(s.desop)
	c:RegisterEffect(e7)
	--activate
	local e8=Effect.CreateEffect(c)
	e8:SetCategory(CATEGORY_ATKCHANGE)
	e8:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e8:SetRange(LOCATION_MZONE)
	e8:SetCode(EVENT_SPSUMMON_SUCCESS)
	e8:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e8:SetOperation(s.activate)
	c:RegisterEffect(e8)
	local e9=e8:Clone()
	e9:SetCode(EVENT_DAMAGE)
	c:RegisterEffect(e9)
	local e10=e8:Clone()
	e10:SetCode(EVENT_PAY_LPCOST)
	c:RegisterEffect(e10)
	aux.GlobalCheck(s,function()
		--Check for Raise
		local ge0=Effect.CreateEffect(c)
		ge0:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
		ge0:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DAMAGE_CAL)
		ge0:SetCode(EVENT_DAMAGE)
		ge0:SetOperation(s.zeroop1)--s=???
		-- Debug.Message("s=")
		-- Debug.Message(s)
		-- Debug.Message("c"..id)
		-- Debug.Message(s=="c"..id)
		Duel.RegisterEffect(ge0,0)
		s[0]=0
		s[1]=0
		local ge1=Effect.CreateEffect(c)
		ge1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
		ge1:SetCode(EVENT_PAY_LPCOST)
		ge1:SetOperation(s.checkop1)
		Duel.RegisterEffect(ge1,0)
		local ge2=ge1:Clone()
		ge2:SetCode(EVENT_DAMAGE)
		Duel.RegisterEffect(ge2,0)
	end)
end

function s.checkop1(e,tp,eg,ep,ev,re,r,rp)
	-- Debug.Message("atk 1 "..ev.."")
	s[ep]=s[ep]+ev
	-- Debug.Message("atk 1.5 "..s[ep].."")
end
function s.econ(e,tp)
	return e:GetLabelObject() and e:GetLabelObject():IsActivatable(e:GetLabel())
end
function s.spcon(e,tp)
	return Duel.GetLP(tp)<=0
end
function s.zeroop1(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()--and (r&REASON_EFFECT==REASON_EFFECT or c:IsCode(66058150)) 
	if Duel.GetLP(0)<=0 and not Duel.IsPlayerAffectedByEffect(0,EFFECT_CANNOT_LOSE_LP) 
		and Duel.GetFlagEffect(0,id+1)==0 and Duel.IsPlayerAffectedByEffect(0,id)
		and ep==0 then
		local iz1=Effect.CreateEffect(c)
		iz1:SetType(EFFECT_TYPE_FIELD)
		iz1:SetCode(EFFECT_CANNOT_LOSE_LP)
		iz1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
		iz1:SetTargetRange(1,0)
		Duel.RegisterEffect(iz1,0)
		local iz2=Effect.CreateEffect(c)
		iz2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
		iz2:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DAMAGE_CAL)
		iz2:SetCode(EVENT_ADJUST)
		iz2:SetLabelObject(iz1)
		iz2:SetLabel(0)
		iz2:SetOperation(s.zeroresetop1)
		Duel.RegisterEffect(iz2,0)
		Duel.RaiseEvent(Duel.GetMatchingGroup(aux.TRUE,0,0xff,0,nil),EVENT_CUSTOM+id,nil,0,0,0,0)
		Duel.RegisterFlagEffect(0,id+1,0,0,1)
	end
	if Duel.GetLP(1)<=0 and not Duel.IsPlayerAffectedByEffect(1,EFFECT_CANNOT_LOSE_LP) 
		and Duel.GetFlagEffect(1,id+1)==0 and Duel.IsPlayerAffectedByEffect(1,id)
		and ep==1 then
		local iz1=Effect.CreateEffect(c)
		iz1:SetType(EFFECT_TYPE_FIELD)
		iz1:SetCode(EFFECT_CANNOT_LOSE_LP)
		iz1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
		iz1:SetTargetRange(1,0)
		Duel.RegisterEffect(iz1,1)
		local iz2=Effect.CreateEffect(c)
		iz2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
		iz2:SetProperty(EFFECT_FLAG_DAMAGE_STEP+EFFECT_FLAG_DAMAGE_CAL)
		iz2:SetCode(EVENT_ADJUST)
		iz2:SetLabelObject(iz1)
		iz2:SetLabel(0)
		iz2:SetOperation(s.zeroresetop1)
		Duel.RegisterEffect(iz2,1)
		Duel.RaiseEvent(Duel.GetMatchingGroup(aux.TRUE,0,0xff,0,nil),EVENT_CUSTOM+id,nil,0,0,1,0)
		Duel.RegisterFlagEffect(1,id+1,0,0,1)
	end
end
function s.zeroresetop1(e,tp,eg,ep,ev,re,r,rp)
	if Duel.GetCurrentChain()==0 or e:GetLabel()>0 then
		local ct=e:GetLabel()+1
		e:SetLabel(ct)
	end
	if (e:GetLabel()==2 and Duel.GetCurrentPhase()&PHASE_DAMAGE==0) or e:GetLabel()==3 then
		e:GetLabelObject():Reset()
		e:Reset()
		Duel.ResetFlagEffect(tp,id+1)
	end
end

function s.sptg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.GetLocationCount(tp,LOCATION_MZONE)>0
		and e:GetHandler():IsCanBeSpecialSummoned(e,0,tp,true,false) end
	local e1=Effect.CreateEffect(e:GetHandler())
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
	e1:SetTargetRange(1,0)
	e1:SetReset(RESET_CHAIN)
	e1:SetCode(EFFECT_CANNOT_LOSE_LP)
	Duel.RegisterEffect(e1,tp)
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,e:GetHandler(),1,tp,LOCATION_HAND+LOCATION_DECK)
end
function s.spop(e,tp,eg,ep,ev,re,r,rp)
	local c = e:GetHandler()
	local tp=e:GetHandlerPlayer()
	if Duel.GetLocationCount(tp,LOCATION_MZONE)<=0 then return end
	if c:IsRelateToEffect(e) and Duel.SpecialSummon(c,0,tp,tp,true,false,POS_FACEUP)~=0 then
		local e2=Effect.CreateEffect(c)
		e2:SetType(EFFECT_TYPE_FIELD)
		e2:SetCode(EFFECT_CANNOT_LOSE_LP)
		e2:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
		e2:SetLabelObject(c)
		e2:SetCondition(s.lcon)
		e2:SetTargetRange(1,0)
		Duel.RegisterEffect(e2,tp)
	end
end
function s.lcon(e,tp,eg,ep,ev,re,r,rp)
	local c = e:GetLabelObject()
	local py = e:GetHandlerPlayer()
	return c:IsFaceup() and c:IsLocation(LOCATION_MZONE) and c:IsControler(py)
end
function s.ctop(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	if c:IsFaceup() and c:IsRelateToEffect(e) then
		c:RemoveCounter(tp,0x0FFE,1,REASON_EFFECT)
	end
end
function s.descon(e,tp)
	return e:GetHandler():GetCounter(0x0FFE)==0 and Duel.GetTurnPlayer()==tp
end

function s.desop(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	Duel.Destroy(c,REASON_EFFECT)
end
function s.addct(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetOperationInfo(0,CATEGORY_COUNTER,nil,1,0,0x0FFE)
end
function s.addc(e,tp,eg,ep,ev,re,r,rp)
	if e:GetHandler():IsRelateToEffect(e) then
		e:GetHandler():AddCounter(0x0FFE,1)
	end
end
function s.activate(e,tp,eg,ep,ev,re,r,rp)
	-- Debug.Message("atk 2 "..s[tp].."")
	local c=e:GetHandler()
	-- local atk=Duel.GetChainInfo(0,CHAININFO_TARGET_PARAM)
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_SET_ATTACK_FINAL)
	e1:SetReset(RESET_EVENT+RESETS_STANDARD)
	e1:SetValue(s[tp])
	c:RegisterEffect(e1)
end
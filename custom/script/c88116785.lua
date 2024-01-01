--Unity 融合
local s,id=GetID()
function s.initial_effect(c)
	local e1=Fusion.CreateSummonEff{handler=c,fusfilter=aux.FilterBoolFunction(Card.IsCode,25141363),
									matfilter=Fusion.OnFieldMat(s.fil),extrafil=s.fextra}
	c:RegisterEffect(e1)
end
function s.fil(c)
	return c:IsSetCard(0x1036)
end
function s.fextra(e,tp,mg)
	return Duel.GetMatchingGroup(s.fil,tp,LOCATION_ONFIELD,0,nil)
end
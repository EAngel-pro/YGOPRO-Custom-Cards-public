--DS LV5
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
end
s.LVnum=5
s.LVset=0xFFE
s.listed_names={80849491}
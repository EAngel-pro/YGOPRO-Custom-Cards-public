--Custom Archtype
if not CustomArchetype then
	CustomArchetype = {}
	
	local MakeCheck=function(setcodes,archtable,extrafuncs)
		return function(c,sc,sumtype,playerid)
			sumtype=sumtype or 0
			playerid=playerid or PLAYER_NONE
			if extrafuncs then
				for _,func in pairs(extrafuncs) do
					if Card[func](c,sc,sumtype,playerid) then return true end
				end
			end
			if setcodes then
				for _,setcode in pairs(setcodes) do
					if c:IsSetCard(setcode,sc,sumtype,playerid) then return true end
				end
			end
			if archtable then
				if c:IsSummonCode(sc,sumtype,playerid,table.unpack(archtable)) then return true end
			end
			return false
		end
	end

	CustomArchetype.OCGMoon={
75850803,
511002070,
79629370,
45909477,
160002007,
511002212,
160201008,
43413875,
97452817,
56809158,
26523337,
20191720,
15464375,
6483224,
16366944,
160015025,
511002069,
85215458,
55610595,
35058857,
100000655,
52038441,
54594017,
66150724,
43528009,
511000610,
810000112,
14087893,
83715234,
511000919,
511009534,
19508728,
36607978,
100000333,
511000607,
160010063,
511000143,
14005031,
160204033,
160011037,
160204023,
33698022,
9839115,
66818682,
33541430,
95515518,
90290572,
100200249,
34755994,
71818935
	}
	Card.IsMoon=MakeCheck({0x1F7},CustomArchetype.OCGMoon)
	
	CustomArchetype.OCGEclipse={
64063868,
92204263,
51858306,
21576077,
160010045,
511001287,
31834488,
35480699,
45852939
	}
	Card.IsEclipse=MakeCheck({0x1F8},CustomArchetype.OCGEclipse)
	
	CustomArchetype.OCGArcher={
65570596,
160301008,
65303664,
44451698,
18724123,
83021423,
49922726,
91869203,
73176465,
15130912,
30303854,
39581190,
9848939,
48742406,
98865920,
4252828,
54326448,
51852507,
55001420,
62023839,
67987611,
42810973
	}
	Card.IsArcher=MakeCheck({0x1F9},CustomArchetype.OCGArcher)

	CustomArchetype.OCGUnderwater={511001172}
	Card.IsUnderwater=MakeCheck({0x1FC},CustomArchetype.OCGUnderwater)

end

SURF.Payout = 3500
SURF.adjustSpawnNoStart = 120

SURF.TrialVectors = {
	Vector(11828.114257813, -43.264877319336, 10304.03125),
	{
		{
			Vector(11455.813476563, -0.30209732055664, 10303.327148438),
			Vector(12543.856445313, 0.0059345066547394, 10304.03125),
			Vector(12202.666992188, 511.85855102539, 10304.03125),
			Vector(11200.162109375, 511.60565185547, 10303.969726563),
			Vector(11455.813476563, -0.30209732055664, 10303.327148438),
		},
		{
			Vector(11455.903320313, -0.12380218505859, 10303.854492188),
			Vector(11200.122070313, -512.03125, 10303.963867188),
			Vector(12202.629882813, -511.99786376953, 10304.014648438),
			Vector(12543.928710938, 0.049827098846436, 10304.46875),
			Vector(11455.813476563, -0.30209732055664, 10303.327148438),

		},
	},
	useAdvancedMesh = true,
	targetZHeight = 10390
}


EntCleanup = {
	"func_button",
	"Secret",
	"SecretTeleport",
	"easteregg",
}

CubeLines={
	{Vector(11541.682617188,-6.4766917228699,10304.03125),Vector(3008.03125,-1146.0229492188,8226.044921875),Vector(3008.03125,1146.9719238281,9789.0810546875)},
	{Vector(2238.4777832031,-77.254287719727,8448.03125),Vector(-3583.96875,-1145.9797363281,7472.1298828125),Vector(-3583.96875,1151.1806640625,8892.9697265625)},
	{Vector(-4432.6518554688,-56.068389892578,7552.03125),Vector(7679.96875,1147.1892089844,5328.8803710938),Vector(7679.96875,-1149.93359375,6717.9409179688)},
	{Vector(8545.8623046875,8.7144966125488,5376.03125),Vector(-1791.96875,-1146.3349609375,727.47143554688),Vector(-1791.96875,1140.0239257813,2107.8107910156)},
	{Vector(-2549.2116699219,-26.122026443481,768.03125),Vector(7935.96875,1079.9050292969,-2875.7321777344),Vector(7935.96875,-1012.9522705078,-1487.3001708984)},
	{Vector(8751.12890625,43.757747650146,-2815.96875),Vector(-9472.1240234375, -2111.9772949219, -7167.96875),Vector(-10494.899414063, 2111.1235351563, -5633.96875)},
}

SURF.bonusZones = { Vector(2651.84765625, 3.7666869163513, -6783.96875) }

SURF.splitInfo = {
	{Vector(2397,1150.6650390625,8228.390625), Vector(3008.03125,-1146.7810058594,9789.3720703125), target = 1, type = 'end'},
	{Vector(1390.3323974609,-1158.4091796875,8383.9765625), Vector(1982.6264648438,1144.2138671875,9792.912109375), target = 2, type = 'start'},
	{Vector(-4334.7211914063,1154.4946289063,7569.9204101563), Vector(-3583.9687,-1140.3431396484,8909.701171875), target = 2, type = 'end'},
	{Vector(-4629.7416992188,-1184.5565185547,7507.5004882813), Vector(-5443.03125,1145.1013183594,8892.0732421875), target = 3, type = 'start'},
	{Vector(8362.3984375,-1171.5390625,5401.466796875), Vector(7677.181640625,1157.9624023438,6703.271484375), target = 3, type = 'end'},
	{Vector(9500.169921875,1165.8510742188,5157.1845703125), Vector(8710.4501953125,-1145.71875,6644.7993164063), target = 4, type = 'start'},
	{Vector(-1791.96875, -1149.8012695313, 753.97521972656), Vector(-2399.3032226563, 1144.2502441406, 2105.0053710938), target = 4, type = 'end'},
	{Vector(-2816.03125,-1147.2236328125,768.93005371094), Vector(-3498.2209472656,1106.9017333984,2038.4304199219), target = 5, type = 'start'},
	{Vector(7935.96875,-1188.0906982422,-2834.1887207031), Vector(8436.314453125,1153.505859375,-1489.0084228516), target = 5, type = 'end'},
	{Vector(9957.015625,-1095.1513671875,-2887.4897460938), Vector(8964.802734375,1143.7136230469,-1472.03125), target = 6, type = 'start'},
}

local stepAutohopZones = {
	{Vector(3710.9443359375, -1800.8291015625, 7827.091796875),Vector(3469.1284179688, 1575.6987304688, 10111.205078125), maxHops = 2, enabled = true},
	{Vector(1725.71875, -1456.7114257813, 6592.03125), Vector(1983.7421875, 1152.3035888672, 9790.89453125)},
	{Vector(-2428.62109375, -2284.794921875, 6592.03125), Vector(-3312.765625, 1423.1901855469, 9095.5732421875), maxHops = 2, enabled = true},
	{Vector(-4611.505859375,1156.6968994141,8898.58984375), Vector(-5436.794921875,-1761.9781494141,5224.25)},
	{Vector(6928.2587890625,1902.6750488281,4224.03125), Vector(7343.8505859375,-1492.6148681641,6713.6616210938), maxHops = 2, enabled = true},
	{Vector(8705.2783203125,1153.8620605469,6637.6997070313), Vector(9527.6806640625,-1486.1965332031,4224.03125)},
	{Vector(-256.03125,-1151.0795898438,507.45404052734), Vector(-1780.8791503906,1151.96875,2107.5659179688), maxHops = 1, enabled = true},
	{Vector(-2825.8708496094,-1148.4874267578,1982.2894287109), Vector(-4606.6904296875,2050.8688964844,300.27505493164)},
	{Vector(6285.9506835938,3150.1647949219,-4735.96875), Vector(7921.5048828125,-1429.5311279297,-1475.400390625), maxHops = 1, enabled = true},
	{Vector(8961.6484375,1151.96875,-2878.8391113281), Vector(9619.3759765625,-1151.96875,-1473.3907470703)}
}


local function StepAhop()
	SURF.CreateAutohopStepZones(stepAutohopZones)

	local bonus = ents.Create("surf_globalahop")
	bonus:SetTriggerPosition(Vector(2745.4389648438, 83.234344482422, -6783.96875), Vector(2626.4194335938, -65.492523193359, -6783.96875))
	bonus:Spawn()

	local e = ents.Create("surf_disableahop")
	e:SetTriggerPosition(Vector(11507.31640625, -456.17517089844, 10304.03125), Vector(12075.514648438, 377.35681152344, 10765.34375))
	e:Spawn()	
end
hook.Add("InitPostEntity", "StepAhop", StepAhop)

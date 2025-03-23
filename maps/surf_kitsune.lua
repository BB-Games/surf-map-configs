SURF.Payout = 2000
SURF.TrialVectors = {Vector(-15751.525390625,-14816.069335938,816.03125),Vector(-14995.25390625,-14837.684570313,1023.96875)}
SURF.disableNoRunZones = true
CubeLines={
	{Vector(-15359.6875,-15025.33984375,816.03125),Vector(-13703.728515625,-14816.256835938,-463.96875),Vector(-12801.919921875,-15359.96875,-316.65789794922), "Red"},
	{Vector(-13309.625976563,-14962.99609375,-463.96875),Vector(-11646.422851563,-14826.190429688,-1743.96875),Vector(-10743.201171875,-15359.96875,-1577.107421875), "Orange"},
	{Vector(-11262.379882813,-14985.158203125,-1743.96875),Vector(-8583.0810546875,-14816.841796875,-2943.96875),Vector(-7674.0200195313,-15359.96875,-2786.7590332031), "Yellow"},
	{Vector(-8191.2221679688,-14979.807617188,-2943.96875),Vector(-5511.1904296875,-14816.641601563,-5407.96875),Vector(-4725.2138671875,-15175.591796875,-5248.03125), "Green"},
	{Vector(-5118.244140625,-14976.413085938,-5407.96875),Vector(-2436.6162109375,-14817.731445313,-7903.96875),Vector(-1509.5322265625,-15359.96875,-7753.0361328125), "Cyan"},
	{Vector(-2047.783203125,-14974.788085938,-7903.96875),Vector(122.55068969727,-14530.696289063,-12127.96875),Vector(984.04193115234,-15071.96875,-11981.377929688), "Blue"},
	{Vector(512.67529296875,-14687.143554688,-12127.96875),Vector(8580.3466796875,-765.04437255859,6552.03125),Vector(7799.248046875,-339.30276489258,6687.96875), "Purple"},
	{Vector(8192.22265625,-592.224609375,6552.03125),Vector(-14715.71484375,14675.70703125,10784.03125),Vector(-15617.369140625,15215.96875,10906.54296875), "Pink"},
	{Vector(-15100.568359375,14977.048828125,10784.03125),
		{	
			Vector(-16063.82421875, 9648.033203125, -11935.96875),
			Vector(-15791.872070313, 9648.333984375, -11935.96875),
			Vector(-15519.983398438, 9784.0908203125, -11935.96875),
			Vector(-15520.244140625, 10568.157226563, -11936.01171875),
			Vector(-15792.27734375, 10704.03125, -11936.033203125),
			Vector(-16063.96875, 10703.982421875, -11935.930664063)
		},
		nil,
		"White",
		useMesh = true,
		targetZHeight = -11721.243164063,
		position = Vector(-15785.770507813, 10127.28515625, -11935.96875)
	}
}

EntCleanup={
	"ambient_generic",
	"func_button",
}

SURF.splitInfo = {
	{Vector(-15751.994140625,-12047.780273438,384.03125), Vector(-14975.577148438,-11504.03125,584.17834472656), target = 1, type = 'end'},
	{Vector(-13704.025390625,-14818.197265625,-463.96875), Vector(-12920.196289063,-14816.151367188,-163.96875), target = 2, type = 'start'},
	{Vector(-13703.940429688,-13023.818359375,-719.96875), Vector(-12922.268554688, -12480.03125, -524.55584716797), target = 2, type = 'end'},
	{Vector(-11655.649414063,-14817.54296875,-1743.96875), Vector(-10872.104492188,-14816.19140625,-1443.96875), target = 3, type = 'start'},
	{Vector(-11655.813476563,-11039.6171875,-2111.96875), Vector(-10874.703125, -10496.03125, -1911.9764404297), target = 3, type = 'end'},
	{Vector(-8878.076171875,-14692.301757813,-3300.96875), Vector(-7141.1840820313,-14816.359375,-2443.96875), target = 4, type = 'start'},
	{Vector(-8583.5263671875,-9087.2373046875,-4319.96875), Vector(-7798.712890625,-8544.03125,-4124.458984375), target = 4, type = 'end'},
	{Vector(-5851.7524414063,-14394.173828,-5807.96875), Vector(-4243.71630,-14819.620117188,-5007.96875), target = 5, type = 'start'},
	{Vector(-5511.7963867188,-9087.291015625,-6943.96875), Vector(-4729.5229492188, -8544.03125, -6724.392578125), target = 5, type = 'end'},
	{Vector(-2739.6442871094,-14216.412109375,-7903.96875), Vector(-1256.0571289063,-14818.315429688,-7403.96875), target = 6, type = 'start'},
	{Vector(-2439.8500976563,-8799.6162109375,-13151.96875), Vector(-1655.9774169922,-8256.03125,-12942.168945313), target = 6, type = 'end'},
	{Vector(-300.65118408203,-14531.06640625,-12127.96875), Vector(1200.79180908203,-14228.403320313,-11827.96875), target = 7, type = 'start'},
	{Vector(5447.8012695313,-15552.352539063,-14079.96875), Vector(4661.185546875,-16095.96875,-13873.862304688), target = 7, type = 'end'},
	{Vector(8883.8837890625,-1067.75891113281,6552.03125), Vector(7400.1635742188,-764.29156494141,6952.03125), target = 8, type = 'start'},
	{Vector(8583.904296875,-14816.260742188,2512.03125), Vector(7794.2202148438, -15359.96875, 2719.6245117188), target = 8, type = 'end'},
	{Vector(-14144.03125,14272.197265625,10284.03125), Vector(-16063.96875,14673.23046875,11084.03125), target = 9, type = 'start'},
}

local stepAutohopZones = {
	{SURF.splitInfo[1][1], SURF.splitInfo[1][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[2][1], SURF.splitInfo[2][2]},
	{SURF.splitInfo[3][1], SURF.splitInfo[3][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[4][1], SURF.splitInfo[4][2]},
	{SURF.splitInfo[5][1], SURF.splitInfo[5][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[6][1], SURF.splitInfo[6][2]},
	{SURF.splitInfo[7][1], SURF.splitInfo[7][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[8][1], SURF.splitInfo[8][2]},
	{SURF.splitInfo[9][1], SURF.splitInfo[9][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[10][1], SURF.splitInfo[10][2]},
	{SURF.splitInfo[11][1], SURF.splitInfo[11][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[12][1], SURF.splitInfo[12][2]},
	{SURF.splitInfo[13][1], SURF.splitInfo[13][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[14][1], SURF.splitInfo[14][2]},
	{SURF.splitInfo[15][1], SURF.splitInfo[15][2], maxHops = 2, enabled = true},
	{SURF.splitInfo[16][1], SURF.splitInfo[16][2]}
}

//Not really wanting to use this due to the expense, but for now it'll do. 
EntTable = {
	{Pos = Vector(-16059.96875,10160.868164063,-11855.759765625), Radius = 30, Filter = "trigger_teleport", Cleanup = true}
}

local function MapAdditions()
	BB.EntModify() 
	SURF.CreateAutohopStepZones(stepAutohopZones)

	hook.Remove("InitPostEntity", "SetupMap")
end

hook.Add("InitPostEntity", "SetupMap",MapAdditions)






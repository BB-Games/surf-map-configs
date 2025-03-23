SURF.Payout = 10000
SURF.TrialVectors = {Vector(-12924.96875, -10004.15234375, 14963.842773438), Vector(-12910.192382813, -12623.758789063, 11622.03125)}
SURF.adjustSpawnNoStart = 80
CubeLines={
	{Vector(-13039.513671875,-11269.848632813,14464.03125),Vector(-14470.135742188,13817.297851563,-7167.478515625),Vector(-14968.563476563,12805.450195313,-6432.03125)},
	{Vector(-14576.577148438,13305.4921875,-7167.478515625),Vector(-15035.396484, 4447.816406, 14312),Vector(-15503.96875, 3864.4709472656, 14490.065429688)},
	{Vector(-13694.853515625,4096.0048828125,12672.03125),Vector(-3331.9504394531,11708.754882813,15232.03125),Vector(-3825.7192382813,10818.328125,15839.96875)},
	{Vector(-3513.4384765625,11263.32421875,15232.03125),Vector(5500.7924804688,-9888.9453125,-11103.96875),Vector(5040.34765625,-10616.865234375,-10144.03125)},
	{Vector(5385.7739257813,-10245.263671875,-11103.96875), Vector(1600.7564697266, 4127.3046875, -1087.3128662109),Vector(2687.1184082031, 3040.107421875, -500.0187988281)},
	{Vector(1857.8518066406,3576.5014648438,-1087.96875),Vector(-5119.8735351563,4095.96875,-7197.3959960938),Vector(-4096.3071289063,3072.03125,-7552.9916992188)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"point_servercommand",
}

SURF.autohopZones = {
	{Vector(-2620.8078613281, 13760.685546875, -11500.96875),Vector(-3329.8947753906, 12861.03125, -10956.75),Vector(-2610.005859375, 13324.103515625, -12287.96875)},
	{Vector(-11519.768555, 4192.339355, 13180.544922),Vector(-11776.171875, 3999.512939, 13275.171875), Vector(-11648.626953, 4085.898438, 13364.828125)},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-13204.133789063, -11270.956054688, 14464.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	SURF.CreateAutoHopZones()

	local disableGravModifier = ents.Create("surf_disablegravmodifier")
	disableGravModifier:SetTriggerPosition(Vector(-195.74128723145, 3617.8332519531, 11904.03125),Vector(-831.96875, 4632.7055664063, 12684.590820313))
	disableGravModifier:Spawn()

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(-13230.185546875, -0.91743963956833, 7680.03125)
}

SURF.splitInfo = {
	{Vector(-14496.336914063,13791.067382813,-7167.478515625), Vector(-14943.969726563,12833.015625,-6893.478515625), target = 1, type = 'end'},
	{Vector(-14464.3203125,12600.116210938,-7367.478515625), Vector(-14187.173828125,14023.62109375,-6893.478515625), target = 2, type = 'start'},
	{CubeLines[2][2], CubeLines[2][3], target = 2, type = 'end'},
	{Vector(-14977.786133, 3543.240723, 14260.096680), Vector(-14863.820313, 4792.545410, 14621.905273), target = 3, type = 'start'},
	{Vector(-199.684204, 4573.121094, 11890.246094), Vector(-831.96875,3616.0795898438,12423.448242188), target = 3, type = 'end'},
	{Vector(-3393.8764648438,11646.513671875,15232.03125), Vector(-3773.1520996094,10884.62890625,15432.03125), target = 3, type = 'end'},
	{Vector(-2939.365234375, 10516.317382813, 15532.03125), Vector(-3328.3005371094, 11911.560546875, 15132.03125), target = 4, type = 'start'},
	{Vector(5382.91796875,-10000.578125,-11103.96875), Vector(5041.998046875,-10477.860351563,-10733.96875), target = 4, type = 'end'},
	{Vector(5713.7392578125,-9728.1669921875,-11103.96875), Vector(5503.7280273438,-10751.779296875,-10793.96875), target = 5, type = 'start'},
	{CubeLines[5][2], CubeLines[5][3], target = 5, type = 'end'},
	{Vector(2271.96875,3710.8645019531,-1092.3586425781), Vector(2016.03125,3458.5432128906,-1200.4215087891), target = 6, type = 'start'},
	{Vector(2687.7109375,4527.5654296875,-1200.1096191406), Vector(2987.6911621094,2608.3051757813,-800.1176757813), target = 6, type = 'start'},

}


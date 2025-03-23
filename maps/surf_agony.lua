SURF.Payout = 7000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(-2.7357444763184, -5833.2553710938, 4224.03125),
	{
		Vector(-255.49584960938, -5632.3564453125, 4224.03125),
		Vector(-255.68786621094, -6015.337890625, 4224.03125),
		Vector(255.2999420166, -6015.302734375, 4224.03125),
		Vector(255.83374023438, -5632.3149414063, 4224.03125)
	},

	useMesh = true,
	targetZHeight = 4433
}

CubeLines={
	{Vector(-0.38517999649048,-5753.4204101563,4224.03125),Vector(11904.03125, 1792.6065673828, -7649.595703125),Vector(10624.65234375, 3328.4887695313, -6383.1865234375)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"tp_Bonus"
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(0.28444415330887, -5823.5551757813, 4224.03125))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("sv_maxvelocity", "3500")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(-9126.474609375, -14144.254882813, -5503.96875)
}

SURF.splitInfo = {
	{Vector(2431.0576171875,6112.03125,1215.3701171875), Vector(-2424.8012695313,8320.96875,-31.968719482422), target = 1, type = 'both'},
	{Vector(3245.0700683594,-9792.930664,2367.96875), Vector(-2284.9465332031,-5992.1391601563,1408.03125), target = 2, type = 'both'},
	{Vector(1983.96875,1647.0463867188,-1152.4508056641), Vector(-1983.96875,66.093147277832,-2462.6557617188), target = 3, type = 'both'},
	{Vector(2699.8364257813,2816.03125,-3694.9904785156), Vector(-2815.96875,4864.4482421875,-5262.392578125), target = 4, type = 'both'},
}


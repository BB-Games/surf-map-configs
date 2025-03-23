SURF.Payout = 8000

SURF.TrialVectors = {Vector(8880.298828125, 4480.3427734375, 14595.369140625), Vector(9030.2861328125, 5013.8139648438, 15356.068359375)}


CubeLines={
	{Vector(9322.9140625, 4796.0517578125, 14656.03125),Vector(7503.4672851563, -8808.62890625, -3199.96875),Vector(3120.03125, -13598.043945313, -1484.819458)},
}

SURF.bonusZones = {
	Vector(-6666.1987304688, 11298.48046875, 14968.03125),
	Vector(5314.3256835938, 11184.713867188, 14352.03125),
	Vector(-5098.8227539063, 12660.966796875, 5376.03125)
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start"
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(9322.9140625, 4796.0517578125, 14656.03125))
	playerSpawn:SetAngles(Angle(0, 180, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("sv_maxvelocity", 5000)
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


SURF.splitInfo = {
	{Vector(-6415.96875,4702.2358398438,11475.793945313), Vector(-7152.03125,2856.8850097656,12094.090820313), target = 1, type = 'both'},
	{Vector(-9600.03125,5270.75390625,3661.9829101563), Vector(-7346.6293945313,3114.7473144531, 5624.8247070313), target = 2, type = 'both'},
	{Vector(2623.96875,-10977.30859375,11904.716796875), Vector(3359.7958984375,-12830.436523438,12674.130859375), target = 3, type = 'both'},
	{Vector(1000.96871948242,5951.2124023438,-3772.3327636719), Vector(-431.96868896484,1093.1387939453,-857.43481445313), target = 4, type = 'both'},
}



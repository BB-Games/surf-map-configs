SURF.Payout = 6000
SURF.adjustSpawnNoStart = 120
SURF.TrialVectors = {Vector(13695.680664063, -10559.96875, 7775.7133789063), Vector(13619.735351563, -9024.03125, 8188.5009765625)}

CubeLines={
	{Vector(13789.599609375,-9817.62109375,7776.03125), Vector(-13280.333007813,-11389.69140625,-11375.96875),Vector(-15957.076171875,-8256.03125,-9413.6796875)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"point_servercommand",
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(14168.686523438, -9824.2197265625, 7776.03125))
	playerSpawn:SetAngles(Angle(0, -180, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local bonus = ents.Create("surf_globalahop")
	bonus:SetTriggerPosition(Vector(-9472.46875, 8256.47265625, 9792.03125), Vector(-10237.918945313, 8959.96875, 9994.884765625))
	bonus:Spawn()

	local e = ents.Create("surf_disableahop")
	e:SetTriggerPosition(Vector(13833.66015625, -10529.666992188, 7776.03125), Vector(14531.798828125, -9399.3486328125, 8102.013671875))
	e:Spawn()	

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(-9860.896484375, 8496.22265625, 9792.03125),
	Vector(-3361.7282714844, -5433.5961914063, 15296.03125),
	Vector(2846.8168945313, 2576.3947753906, -1615.96875)
}

SURF.splitInfo = {
	{Vector(-3710.6147460938,-8928.03125,5245.333984375), Vector(261.27093505859,-11455.96875,943.73400878906), target = 1, type = 'both'},
	{Vector(-12034.05859375,-7744.03125,187.53106689453), Vector(-16255.96875,-11903.180664063,-5336.5073242188), target = 2, type = 'both'},
}


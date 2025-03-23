SURF.Payout = 14000
SURF.disablePreSpeed = true
SURF.adjustSpawnNoStart = 100

SURF.TrialVectors = {Vector(-5376.4243164063, 3326.7575683594, 10366.03125), Vector(-5888.90234375, 2815.9362792969, 10000)}

CubeLines={
	{Vector(-5887.7431640625, 2816.2431640625, 10366.03125),
		{
			{Vector(-4096.03125, 1792.2156982422, 11456.03125), Vector(-7167.96875, 2047.5397949219, 12735.96875)},
			{Vector(-4863.7163085938, 1536.2396240234, 11456.022460938), Vector(-6400.265625, 1791.4213867188, 12735.03125)},
			{Vector(-4863.6196289063, 1536.3421630859, 11456.03125), Vector(-4682.8334960938, 1871.6744384766, 12735.96875), usePhysicsEnt = true, entAngle = Angle( 0, -45, 0)},
			{Vector(-6400.0668945313, 1536.0222167969, 11456.006835938), Vector(-6599.119140625, 1848.6796875, 12735.03125), usePhysicsEnt = true, entAngle = Angle( 0, -135, 0)},
		}
	}
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}

SURF.splitInfo = {
	{Vector(-2943.4621582031,-1151.96875,7042.4633789063), Vector(-3954.5673828125,-306.61138916016,8189.5712890625), target = 1, type = 'both'},
	{Vector(-8328.283203125,-1150.3582763672,7040.03125), Vector(-7350.3862304688,-265.65802001953,8188.1982421875), target = 1, type = 'both'},
	{Vector(-2971.8696289063,2944.03125,87.877197265625), Vector(-8319.96875, 3967.96875,-1511.9956054688), target = 2, type = 'both'},
	{Vector(-7669.4643554688,3849.134765625,-6783.96875), Vector(-4352.03125,-4617.4384765625,-4355.4340820313), target = 3, type = 'both'},
	{Vector(8175.2578125,-15375.96875,220.09008789063), Vector(6404.2646484375,-10347.012695313,-3605.96875), target = 4, type = 'both'},
}

local stopTime = {Vector(-4096.2329101563, 2559.3981933594, 11456.03125), Vector(-7167.96875, 2368.3967285156,12607.12890625)}
local wallPos = {Vector(-4096.03125, 2047.6821289063, 12193.2421875), Vector(-7167.009765625, 2457.4699707031, 11456.03125)}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-5631.992676, 3499.442627, 10432.031250))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local e = ents.Create("surf_stoptimer")
	e:SetTriggerPosition(stopTime[1], stopTime[2])
	e:Spawn()

	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(wallPos[1], wallPos[2])
	blockZone:SetPos(Vector(-5885.3959960938, 2194.5356445313, 11456.03125))
	blockZone:Spawn()
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

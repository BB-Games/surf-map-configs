SURF.Payout = 6500
SURF.TrialVectors = {Vector(-8437.1875, -10280.10546875, 9848.03125),Vector(-9000.4814453125, -10274.043945313, 9239.591796875)}


CubeLines = {
	{Vector(-8690.759765625,-10393.455078125,9248.03125),Vector(1426.1854248047,9207.5859375,-11142.688476563),Vector(3919.96875,10190.883789063,-9992.4970703125)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
}


local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-8687.919921875, -10799.798828125, 9248.03125))
	playerSpawn:SetAngles(Angle(1.781988, 89.321747, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

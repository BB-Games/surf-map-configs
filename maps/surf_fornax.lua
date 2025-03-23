SURF.Payout = 5500
SURF.disableNoRunZones = true
SURF.TrialVectors = {Vector(-13504.446289063, -3264.1633300781, 14976.03125),Vector(-13487.2109375, -4287.5107421875, 15487.96875)}

CubeLines={
	{Vector(-13600.081054688,-3775.9738769531,14976.03125),Vector(-8769.861328125,-4860.3950195313,2688.03125),Vector(-9979.5009765625,-2687.9848632813,3519.96875)},
}

local function AddSpawnAreas()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-13774.182617188, -3795.25, 14976.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

end
hook.Add("InitPostEntity", "Spawnmeup", AddSpawnAreas)


SURF.bonusZones = {
	Vector(-3237.990723, 13483.215820, 11279.031250),
	Vector(-15330.004882813, 10948.17578125, 12928.03125),
	Vector(-5510.0385742188, -11908.2265625, -6731.96875),
	Vector(-11126.069335938, -9926.4697265625, -767.96875),
	Vector(-4351.5786132813, -10746.895507813, 832.03125),
	Vector(8402.0859375, 854.94152832031, -14055.46875)
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"start1fadeon_out",
	"start1fadeon",
}


SURF.splitInfo = {
	{Vector(-6522.2001953125,-5888.03125,8185.6303710938), Vector(-6064.3212890625,-8926.171875,8767.2275390625), target = 1, type = 'both'},
	{Vector(-6527.96875,-1662.4587402344,8188.2060546875), Vector(-6295.5405273438,1198.5709228516,8767.96875), target = 1, type = 'both'},
	{Vector(-5562.9643554688,-4721.876953125,7935.96875), Vector(-5710.611328125,-2816.03125,6336.8525390625), target = 2, type = 'both'},
	{Vector(5631.96875,-1352.8336181641,4415.0654296875), Vector(6129.4609375,-6124.169921875,6332.4599609375), target = 3, type = 'both'},
}
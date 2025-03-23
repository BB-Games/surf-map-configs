SURF.TrialVectors = {Vector(-12177.688476563, -6953.0825195313, -175.96875), Vector(-12183.03515625, -7824.8828125, 623.96881103516)}
SURF.Payout = 3500

CubeLines = {
	{Vector(-12115.484375,-7299.6435546875,-175.96875),Vector(-3820.8063964844,-5147.96875,-13784.873046875),Vector(-6057.197265625,-250.03125,-12839.2265625)},
}


SURF.bonusZones = {
	Vector(9987.8369140625, 7731.9580078125, 6834.03125),
	Vector(-3889.6809082031, 4546.5200195313, 7570.03125),
	Vector(1186.1932373047, 12499.446289063, 15177.03125)
}

SURF.splitInfo = {
	{Vector(-4684.1923828125,-7321.8720703125,-9022.96875), Vector(-7079.5424804688,-7650.728515625,-5166.03125), target = 1, type = 'both'},
	{Vector(-14169.03125,-120.75511932373,-14193.352539063), Vector(-13908.360351563,1036.8397216797,-12583.03125), target = 2, type = 'both'},
	{Vector(-2269.1677246094,-15034.96875,-14898.33984375), Vector(-1744.96875,-12967.709960938,-12891.163085938), target = 3, type = 'both'},
	{Vector(-1196.96875,2538.7365722656,-14931.314453125), Vector(-1212.03125,5108.6977539063,-14081.92578125), target = 4, type = 'both'},
}

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"info_player_start",
}

hook.Add("InitPostEntity", "MapEnhancements", function()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-12011.875, -7358.9711914063, -175.96875))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end)


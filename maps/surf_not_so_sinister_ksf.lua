SURF.Payout = 18000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(490.95803833008, -186.1819152832, 1024.03125),
	{
		Vector(-9655.86328125, 15327.818359375, 12384.03125),
		Vector(-9655.9970703125, 14815.96875, 12384.000976563),
		Vector(-8711.9794921875, 14815.993164063, 12384.03125),
		Vector(-8711.9443359375, 15327.96875, 12384.030273438)
	},

	useMesh = true,
	targetZHeight = 12500
}

CubeLines={
	{Vector(-9173.5283203125,14924.083007813,12384.03125),Vector(-4181.4731445313,8677.884765625,7712.03125),Vector(-5060.6293945313,9131.8642578125,8223.96875)},
	{Vector(-4644.7104492188,8767.3154296875,7712.03125),Vector(1234.2644042969,-2634.9663085938,4192.03125),Vector(341.22250366211,-2168.5139160156,4687.96875)},
	{Vector(763.43914794922,-2551.4812011719,4192.03125),Vector(7378.4106445313,13830.067382813,-1471.96875),Vector(6463.0830078125,14275.720703125,-960.03125)},
	{Vector(6894.1411132813,13930.827148438,-1471.96875),Vector(12353.321289063,13457.071289063,-8575.96875),Vector(13827.944335938,13945.350585938,-8096.03125)},
	{Vector(13128.842773438,13881.217773438,-8575.96875),Vector(13919.12890625,-7027.0874023438,-10239.96875),Vector(12321.904296875,-8046.2407226563,-9120.03125)},		
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}

local function NewSpawn()

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-9223.9892578125, 15095.647460938, 12384.03125))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")


end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


SURF.splitInfo = {
	{Vector(-8928.693359375,10974.684570313,9312.03125), Vector(-9437.5087890625,10464.020507813,9535.2529296875), target = 1, type = 'end'},
	{Vector( -5095.682129, 8752.118164, 7576.031250), Vector(-4215.154297, 9124.723633, 8011.934570), target = 1, type = 'end'},
	{Vector(-3950.1538085938,8672.3720703125,6910.03125), Vector(-5663.96875,8277.7041015625,7911.41015625), target = 2, type = 'start'},
	{Vector(-3739.2253417969,13024.03125,5407.9946289063), Vector(-5663.96875,12544.219726563,5631.2939453125), target = 2, type = 'end'},
	{Vector(1540.03125,-2639.9848632813,4191.8974609375), Vector(-767.96875,-3119.1821289063,4687.6337890625), target = 3, type = 'start'},
	{Vector(-767.75262451172,14207.96875,1808.0285644531), Vector(2303.96875,14624.04296875,2031.8459472656), target = 3, type = 'end'},
	{Vector(7684.03125,13823.99609375,-1472.0408935547), Vector(5888.03125,13459.973632813,-961.34741210938), target = 4, type = 'start'},
	{Vector(6440.1411132813,14335.997070313,-5088.96875), Vector(7384.1318359375,14847.96875,-5312.0517578125), target = 4, type = 'end'},
	{Vector(12352.03125,13968.090820313,-8576.029296875), Vector(13887.442382813,14479.96875,-8963.0830078125), target = 5, type = 'start'},
}


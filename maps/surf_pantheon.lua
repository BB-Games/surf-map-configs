
CubeLines = {
	{Vector(10338.986328125,1175.4907226563,14721.03125),
		{
			Vector(-11901.798828125, 199.39126586914, -14784.237304688),
			Vector(-11902.154296875, 2173.1362304688, -14784.411132813),
			Vector(-13631.208984375, 3159.8901367188, -14784.544921875),
			Vector(-15358.169921875, 2172.5061035156, -14784.194335938),
			Vector(-15356.670898438, 198.88961791992, -14783.96875),
			Vector(-13629.17578125, -788.04943847656, -14784.018554688),
			Vector(-11901.418945313, 198.75152587891, -14784.796875)
		},
		useMesh = true,
		position = Vector(-13045.173828125, 1217.671875, -14783.96875),
		targetZHeight = -12481.968750
	},
}

SURF.Payout = 2500
SURF.TrialVectors = {Vector(10274.98046875, 800.15985107422, 14721.03125), Vector(10272.1640625, 1567.5623779297, 15521.03125)}
SURF.adjustSpawnNoStart = 120

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
}

local function NewSpawn()
	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(10541.853515625, 1186.912109375, 14721.03125))
	playerSpawn:SetAngles(Angle(1.451853, 179.45, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(7775.314453125, -11291.431640625, 15208.03125),
	Vector(5363.3081054688, 13439.129882813, 15136.03125),
	Vector(14329.426757813, -11850.368164063, 15712.03125)
}

SURF.splitInfo = {
	{Vector(1093,-1243.5028076172,7392.03125), Vector(4818.259765625,3584.2983398438,10623.96875), target = 1, type = 'both'},
	{Vector(-3066.248046875,3794.2412109375,-5375.96875), Vector(-12097.96875,-1504.9674072266,-3304.9516601563), target = 2, type = 'both'},
}


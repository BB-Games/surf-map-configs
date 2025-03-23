SURF.Payout = 14000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(-12004.923828, -3976.547607, 15040.031250),
	{
		Vector(-14848.264648438, 128.45722961426, 64.03125),
		Vector(-14847.935546875, 755.81756591797, 64.03125),
		Vector(-15247.689453125, 755.14874267578, 64.03125),
		Vector(-15247.862304688, 128.32246398926, 64.03125)
	},

	useMesh = true,
	targetZHeight = 176.34852600098
}

EntCleanup = {
	"credsroom",
	"naoreturn",
	"sidreturn",
	"prop_physics_multiplayer"
}

CubeLines = {
	{Vector(-15015.813476563,419.03897094727,64.03125),Vector(4607.96875,-1602.1958007813,-7647.1196289063),Vector(1222.2169189453,-1733.5329589844,-6240.03125)},
}

SURF.splitInfo = {
	{Vector(-6206.9873046875, -2976.03125, -2879.5852050781), Vector(-5025.21875, -2272.9521484375, -1856.5645751953), target = 1, type = 'both'},
	{Vector(-4319.96875,-677.76574707031,-4038.66015625), Vector(-5200.03125, 633.07189941406, -2854.9194335938), target = 2, type = 'both'},
	{Vector(-8062.853515625,1536.03125,-4582.8129882813), Vector(-9051.5087890625,3060.4465332031,-6042.5546875), target = 3, type = 'both'},
	{Vector(5343.96875,6129.7377929688,-5171.3198242188), Vector(2841.8676757813,8456.7314453125,-6559.96875), target = 4, type = 'both'},
}

local function DisableSpawnguardAnnounce()
	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(-13915.186523438, 728.37683105469, 64.03125), Vector(-13818.484375, 372.03125, 223.755859375))
	blockZone:Spawn()

	local stopTimerZone = ents.Create("surf_stoptimer_invis")
	stopTimerZone:SetTriggerPosition(Vector(-15247.59375, 764.47052001953, 64.03125), Vector(-13920.841796875, 940.8173828125, 193.61450195313))
	stopTimerZone:Spawn()
end
hook.Add("InitPostEntity", "DisableAnnounce", DisableSpawnguardAnnounce)

SURF.bonusZones = {
	Vector(-5068.8002929688, 7182.4702148438, -1343.96875),
	Vector(-9086.705078125, 7166.40625, -6719.96875)
}

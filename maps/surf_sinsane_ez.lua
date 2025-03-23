SURF.disableNoRunZones = true
SURF.Payout = 14000

SURF.TrialVectors = {
	Vector(12037.337890625, 8415.4716796875, 13776.03125),
	{
		Vector(12197.854492188, 8762.318359375, 13776.03125),
		Vector(12175.977539063, 8762.2109375, 13776.03125),
		Vector(11718.83203125, 8396.3544921875, 13776.03125),
		Vector(12197.96875, 8011.5078125, 13686.26171875),
		Vector(12197.96875, 8029.685546875, 13776.5859375)

	},

	useMesh = true,
	targetZHeight = 13948.200195313
}

CubeLines = {
    {Vector(11854.25390625,8394.5439453125,13776.03125),Vector(5770.0209960938,9296.541015625, -830.96875),Vector(6280.6044921875,7538.5151367188,396.96875)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"bonus"
}


SURF.splitInfo = {
	{Vector(5488.6157226563,8874.96875,11010.564453125), Vector(6260.9780273438,7916.40234375,12383.96875), target = 1, type = 'both'},
	{Vector(4013.7255859375,7403.03125,7590.5932617188), Vector(3099.3757324219,9386.96875,8927.0322265625), target = 2, type = 'both'},
	{Vector(-3897.7727050781,7564.3198242188,4008.03125), Vector(-5203.97265625,9256.5810546875,7159.96875), target = 3, type = 'both'},
	{Vector(-9761.703125,7683.275390625,5478.96875), Vector(-10986.1953125,9154.96875,4877.8950195313), target = 4, type = 'both'},
	{Vector(-1005.0814208984,7772.2265625,2967.03125), Vector(1071.1524658203,9034.6982421875,3662.96875), target = 5, type = 'both'},
}

SURF.bonusZones = {
	Vector(12845.916992188, 8410.6533203125, 975.03125)
}

local stepAutohopZones = {
	{Vector(5482.3427734375, 8874.96875, 11207.938476563), Vector(6251.951171875, 7915.03125, 10036.903320313), maxHops = 1, enabled = true},
	{Vector(5177.146484375, 7403.03125, 10024.766601563), Vector(3526.3286132813, 9386.96875, 11038.387695313)},

	-- Flat stretch
	{Vector(1437.4248046875, 7424.837890625, 5481.9267578125), Vector(180.33270263672, 9386.96875, 7519.7216796875), maxHops = 3, enabled = true},
	{Vector(-839.33483886719, 7992.03125, 7276.95703125), Vector(-3873.96875, 8805.4482421875, 5003.97265625)},

	-- setpos -785.604187 8497.912109 3031.031250;setang 15.179804 6.948616 0.000000
	{Vector(-1727.515625, 8922.7177734375, 2712.03125), Vector(-1121.4326171875, 7899.03125, 3239.1293945313), maxHops = 6, enabled = true},
	{Vector(202.58929443359, 7540.958984375, 556.96875), Vector(1685.1948242188, 9297.96875, -2182.6062011719)}
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(11854.25390625,8394.5439453125,13776.03125))
	playerSpawn:SetAngles(Angle(0, 180, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(12197.774414063, 8458.83984375, 13776.03125), Vector(12230.03125, 8327.2265625, 13990.99609375))
	blockZone:Spawn()

	SURF.CreateAutohopStepZones(stepAutohopZones)

	-- Hack to deal with bonus area
	local ent = ents.FindByName("mapstart")[1]
	ent:SetPos(Vector(11854.25390625,8394.5439453125,13776.03125))
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


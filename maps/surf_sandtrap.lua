SURF.Payout = 4500
SURF.adjustSpawnNoStart = 120
SURF.TrialVectors = {Vector(48.03125, -16.585092544556, 14264.08203125),Vector(2092.125, 32.460189819336, 15167.96875)}

CubeLines = {
	{Vector(1070.2652587891,-224.54388427734,14264.03125),Vector(3111.4860839844,-12008.315429688,-5839.96875),Vector(-988.50067138672,-12030.770507813,-3345.2170410156)},
}

SURF.bonusZones = {
	Vector(1295.4912109375, -69.723373413086, -8255.96875),
	Vector(-8575.9189453125, -2140.6999511719, 14272.03125),
	Vector(9810.927734375, 10217.89453125, 14432.03125)
}

SURF.splitInfo = {
	{Vector(-526.69964599609,7840.03125,11408.16796875), Vector(2919.5634765625,12229.251953125,9592.03125), target = 1, type = 'both'},
	{Vector(-557.8525390625,-9103.96875,5785.525390625), Vector(2701.83984375,-5721.7314453125,4552.03125), target = 2, type = 'both'},
}

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"info_player_start"
}


hook.Add("InitPostEntity", "CreateZones", function()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(1018.9340820313, -276.64349365234, 14264.03125))
	playerSpawn:SetAngles(Angle(0, 90,0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")	

	RunConsoleCommand("surf_report_bad_area", "0")
end)

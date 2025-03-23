SURF.TrialVectors = {Vector(735.61071777344, 2560.4201660156, 20.03125), Vector(-658.26791381836, 2560.6516113281, 256.03125)}
SURF.Payout = 12000

CubeLines = {
	{Vector(279.611450, 2713.930420, 128.031250),Vector(9697.029296875, 6768.3979492188, -11135.96875),Vector(10847.96875, 7341.384765625, -10689.150390625)},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(296.530548, 2840.754639, 128.031250))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}

SURF.splitInfo = {
	{Vector(-1151.96875, -8118.7729492188,-6271.96875),Vector(1431.0533447266, -7594.7485351563, -4288.03125), target = 1, type = 'both'},
	{Vector(12613.78125,13997.130859375,-9663.96875), Vector(8224.623046875,14742.981445313,-7032.03125), target = 2, type = 'both'},
	{Vector(9432.46484375, -5338.7202148438, -10247.126953125), Vector(11175.6796875, -9528.6171875, -11565.922851563), target = 3, type = 'both'},
}

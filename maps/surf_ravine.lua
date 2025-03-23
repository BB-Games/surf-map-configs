SURF.TrialVectors = {Vector(14703.96875, 5487.6918945313, 6647.6206054688), Vector(13673.96875, 3568.3110351563, 6643.599609375)}
SURF.Payout = 3500

CubeLines = {
	{Vector(14857.944335938, 4515.7412109375, 6656.03125),Vector(13764.893554688,-11446.064453125,-1703.96875),Vector(14985.557617188, -10548.064453125, -1000.96875)},
}

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"info_player_start"
}

SURF.splitInfo = {
	{Vector(2177.4106445313,6387.244140625,3321.8515625), Vector(1313.4328613281,243.36645507813,7754.3598632813), target = 1, type = 'both'},
	{Vector(-10077.630859375, -13811.240234375, -1531.5853271484), Vector(-7956.01953125, -4986.7861328125, 4598.6921386719), target = 2, type = 'both'},
	{Vector(-8202.9150390625, -6669.1440429688, -1531.5853271484),Vector(-5212.8701171875, -4836.27734375, 4598.2163085938), target = 2, type = 'both'},
}


local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(14857.944335938, 4515.7412109375, 6656.03125))
	playerSpawn:SetAngles(Angle(0, -180, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("surf_report_bad_area", "0")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


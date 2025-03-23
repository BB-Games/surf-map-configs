SURF.Payout = 14000
SURF.disablePreSpeed = true
SURF.TrialVectors = {Vector(447.36856079102, -447.96875, 14450.127929688) ,Vector(-447.96875, 446.73495483398, 13748.573242188)}

CubeLines={
	{Vector(3.2392196655273,534.30639648438,14522.456054688),Vector(8029.6616210938,8256.4384765625,-10707.87109375),Vector(10077.568359375,8383.65625,-9088.1162109375)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"spawn"
}


SURF.splitInfo = {
	{Vector(1600.03125,13047.190429688,5164.646484375), Vector(4087.0297851563,12405.291015625,7167.96875), target = 1, type = 'both'},
	{Vector(5634.0649414063,-7936.03125,-1627.7747802734), Vector(6858.31640625,-9855.96875,-370.00354003906), target = 2, type = 'both'},
	{Vector(11456.03125,14367.370117188,-5344.6333007813), Vector(10781.90234375,15359.96875,-4359.2807617188), target = 3, type = 'both'},
	{Vector(-7176.6318359375,4736.03125,-7366.6669921875), Vector(-5123.439453125,4065.94140625,-5641.0502929688), target = 4, type = 'both'},

}

local function NewSpawn()
	RunConsoleCommand("sv_maxvelocity","10000")

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector( -4.307983, 721.723877, 14543.589844))
	playerSpawn:SetAngles(Angle(20.723946, -88.152435, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local disableGravModifier = ents.Create("surf_disablegravmodifier")
	disableGravModifier:SetTriggerPosition(Vector(-2069.2932128906, 13440.03125, -6616.65234375),Vector(-4861.7607421875, 16254.228515625, 3071.96875))
	disableGravModifier:Spawn()
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

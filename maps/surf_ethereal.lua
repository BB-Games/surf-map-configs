SURF.Payout = 4500
SURF.adjustSpawnNoStart = 80
SURF.TrialVectors = {Vector(-13262.791015625, 15236.135742188, 14368.03125),Vector(-14109.231445313, 15194.112304688, 16287.96875)}

CubeLines={
	{Vector(-13787.290039063,15505.543945313,15520.03125),Vector(12029.392578125,14945.116210938,-383.96875),Vector(11530.745117188,15238.658203125,-128.03125)},
	{Vector(11788.3828125,15111.227539063,-383.96875),Vector(15081.634765625,769.49389648438,9056.03125),Vector(15441.623046875,1238.3911132813,9343.96875)},
	{Vector(15259.377929688,1013.7531738281,9056.03125),Vector(-6772.6264648438,10146.706054688,7519.96875),Vector(-7408.224609375,11260.55078125,6016.8388671875)},
}


EntCleanup={
	"global_message",
	"g_trigmultiple",
	"whathappened",
	"welldone",
	"yeababy",
	"yes",
	"fadefilter",
	"racechamber",
	"chamberbutton",
	"info_player_terrorist",
	"info_player_counterterrorist",
}


SURF.bonusZones = {
	Vector(-7109.6411132813, -14354.416015625, 15576.03125)
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-13790.94921875,15453.916992188,15520.03125))
	playerSpawn:SetAngles(Angle( 1.483900, -90.528091, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.splitInfo = {
	{Vector(12030.27734375,15028.709960938,-383.96875), Vector(11520.11328125, 15261.298828125,0.96875), target = 1, type = 'end'},
	{Vector(12408.668945313,14947.072265625,-500.96875), Vector(11155.785156, 14922.840820313,0.96875), target = 2, type = 'start'},
	{Vector(15247.234375,770.23486328125,9056.03125), Vector(15480.419921875,1285.9068603516,9457.130859375), target = 2, type = 'end'},
	{Vector(15083.107421875,272.99987792969,8556.03125), Vector(15080.348632813,1772.054199,9456.03125), target = 3, type = 'start'},
}
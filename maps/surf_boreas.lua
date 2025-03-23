SURF.TrialVectors = {Vector(12600.03125, -11778.575195313, 14753.119140625), Vector(12967.967773438, -11768.375, 16781.275390625)}
SURF.Payout = 2500

CubeLines = {
	{Vector(12792.231445313, -11891.739257813, 14800.03125),Vector(6998.169921875, 8095.0556640625, 203.98815917969),Vector(12566.923828125, 13875.314453125, 5177.4716796875)},
}

EntCleanup = {
	"momentary_rot_button",
	"fade_out",
	"fadefilter",
	"info_player_terrorist",
	"info_player_counterterrorist"
}

SURF.splitInfo = {
	{Vector(8431.455078125,12877.71875,8600.3515625), Vector(4687.8447265625,8200.91796875,10311.482421875), target = 1, type = 'both'},
	{Vector(-11737.901367188,11288.523438,6994.4360351563), Vector(-16223.366210938,7250.109375,9281.603515625), target = 2, type = 'both'},
	{Vector(-1639.6350097656, -13520.80078125, 2721.2810058594), Vector(789.22412109375,-9767.7158203125,4328.2006835938), target = 3, type = 'both'},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(12775.732421875, -11943.126953125, 14800.03125))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


SURF.Payout = 8000
SURF.adjustSpawnNoStart = 90
SURF.TrialVectors = {Vector(-13611.095703125, -14943.651367188, 15793.524414063),Vector(-13508.405273438, -14836.323242188, 15832.03125)}

CubeLines={
	{Vector(-13561.02734375, -15147.043945313, 15775.984375),Vector(5394.939453125, 14241.499023438, -7981.8110351563),Vector(5939.08203125, 14778.7421875, -7528.9633789063)},

}

EntCleanup={
	"seekrit",
	"Goulding",
	"gorillaz",
	"info_player_start",
	"info_player_terrorist",
	"info_player_counterterrorist"
}

SURF.splitInfo = {
	{Vector(-11167.96875, -9984.03125, 6189.401367), Vector(3231.9697265625, -16127.96875, 4851.120605), target = 1, type = 'both'},
	{Vector(-6214.2548828125,-7658.4409179688,-13632.143554688), Vector(-7699.48046875,-6749.3623046875,-12674.325195313), target = 2, type = 'both'},
	{Vector(12661.774414063,9200.7802734375,-8138.4296875), Vector(14353.559570313,8260.625,-7258.0004882813), target = 3, type = 'both'},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-13566.989257813, -15054.295898438, 15775.573242188))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)



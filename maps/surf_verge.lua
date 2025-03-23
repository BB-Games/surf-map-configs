SURF.Payout = 6000
SURF.adjustSpawnNoStart = 40

SURF.TrialVectors = {Vector(-14425, -5056.0083007813, 14816.009765625),Vector(-14431.96875, -5888.3149414063, 14904.317382813)}

CubeLines={
	{Vector(-14555.314453125,-5475.6865234375,14816.03125),Vector(1439.9685058594, -10456.043945313, 1917.8603515625),Vector(-3136.5283203125, -12455.96875, 1295.9552001953)},
}

Vector(1439.9685058594, -11263.7734375, 1917.8603515625)

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"point_servercommand",
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-14609.791992188, -5466.1259765625, 14816.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)



SURF.bonusZones = {

}

SURF.splitInfo = {
	{Vector(-5247.947265625,-9600.03125,10879.83203125), Vector(-4164.03125,-10605.997070313,10020.541015625), target = 1, type = 'both'},
	{Vector(778.46826171875,-6271.96875,8804.3115234375), Vector(-861.35083007813,-3328.03125,10373.862304688), target = 2, type = 'both'},
	{Vector(727.35974121094,1055.7932128906,4136.03125), Vector(2200.6564941406,4868.1943359375,6143.96875), target = 3, type = 'both'},
	{Vector(4555.6015625,5189.4770507813,2176.03125), Vector(1792,3215.0874023438,4063.8239746094), target = 4, type = 'both'},
	{Vector(512.03125, 3215.1674804688, 2491.01953125), Vector(1790.8830566406, 5189.3432617188, 3583.96875), target = 4, type = 'both'},
}




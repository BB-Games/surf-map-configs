
SURF.disableNoRunZones = true
SURF.Payout = 10000

SURF.TrialVectors = {
	Vector(4227.9287109375, -6533.40234375, 4224.03125),
	{
		Vector(3920.03125, -7039.6962890625, 4224.7163085938),
		Vector(4943.8022460938, -7039.96875, 4225.4243164063),
		Vector(4943.96875, -5760.3305664063, 4225.2290039063),
		Vector(3900.9611816406, -5792.4404296875, 4224.03125)

	},

	useMesh = true,
	targetZHeight = 4352.9052734375
}

CubeLines = {
    {Vector(4184.119140625,-6505.9033203125,4224.03125),Vector(5394.0908203125,7679.36328125,1408.03125),Vector(6415.96875,5121.69140625,2301.7551269531)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"bonus_xtra",
	"bonus_pretzl2",
	"bonus_pretzl",
	"bonus_r",
	"bonus_roz"
}


SURF.splitInfo = {
	{Vector(684.52154541016,-1168.5480957031,3711.96875), Vector(-559.96875,2470.6684570313,3008.03125), target = 1, type = 'both'},
	{Vector(-5023.232421875,447.26544189453,2048.03125), Vector(-6415.96875,-1501.27734375,2879.4892578125), target = 2, type = 'both'},
	{Vector(-1114.6331787109, 3619.0766601563, 1664.03125), Vector(-2380.1840820313, 5532.8291015625, 2431.96875), target = 3, type = 'both'},
	
}

SURF.bonusZones = {
	Vector(2299.9643554688, -5358.9311523438, -2623.96875),
    Vector(-9083.9951171875, -6778.9145507813, -63.96875),
    Vector(-13050.9140625, -1532.0440673828, 4544.03125),
    Vector(-3964.0620117188, -1085.1479492188, -1599.96875),
    Vector(-6282.9130859375, -4604.0776367188, 128.03125)
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(4433.906250, -6780.985352, 4288.031250))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


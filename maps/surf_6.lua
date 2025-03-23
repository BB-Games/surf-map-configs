SURF.TrialVectors = {Vector(3458.8649902344, 447.96875, 6368.0766601563), Vector(3465.2458496094, -447.96875, 6868.1000976563)}
SURF.Payout = 12000
SURF.disableNoRunZones = true

CubeLines = {
	{Vector(3370.1130371094,13.184680938721,6368.03125),Vector(-10887.022460938,-504.36099243164,-6335.96875),Vector(-11310.922851563,552.12921142578,-4763.900390625)},
}


SURF.autohopZones = {
	 {Vector(8447.4794921875,-320.40548706055,5152.03125),Vector(7810.2397460938,316.68701171875,5366.03125),Vector(8166.2431640625,13.714641571045,5208.3837890625)},

}

local blockPositions = {
	{Vector(-1152.03125,161.54260253906,-156.90953063965), Vector(-1271.0965576172,-141.84628295898,671.96875)}
}

hook.Add("InitPostEntity", "CreateZones", function()
	SURF.CreateAutoHopZones()

	for k, v in pairs(blockPositions) do
		local blockZone = ents.Create("surf_blockzone")
		blockZone:SetTriggerPosition(v[1], v[2])
		blockZone:SetPos(v[1])
		blockZone:Spawn()
	end

end)
	

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
}

//Technically abusing gmod here. Lets hope this doesn't get fixed properly :V
local playerSpawn = ents.Create("info_player_start")
playerSpawn:SetPos(Vector(3226.9738769531, -8.6065826416016, 6368.03125))
playerSpawn:SetAngles(Angle(0,0,0))
playerSpawn:Spawn()


SURF.splitInfo = {
	{Vector(10111.96875,-447.64556884766,2783.9970703125), Vector(9148.7724609375,414.96618652344,1136.1870117188), target = 1, type = 'both'},
	{Vector(-9280.181640625,-1471.96875,799.79461669922), Vector(-11263.678710938,1463.0795898438,-1247.96875), target = 2, type = 'both'},
	{Vector(9152.09375,-1471.96875,-1248.9815673828), Vector(11081.911132813,1419.4481201172,-3295.96875), target = 3, type = 'both'},
}



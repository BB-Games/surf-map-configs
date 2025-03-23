SURF.Payout = 3500
SURF.disableNoRunZones = true
SURF.TrialVectors={Vector(-12010.58203125, 14335.96875, 12604.239257813), Vector(-11915.790039063, 11264.03125, 13434.033203125)}

CubeLines={
	{Vector(-12111.696289063,12791.543945313,13088.03125),Vector(-2015.96875, -479.09844970703, -4415.240234375),Vector(2015.9055175781, 479.96875, -4020.4760742188)},
}


EntCleanup={
	"island",
	"islandtele",
	"islandtele2",
	"timesong",
	"triagesong",
	"futrap",
	"quack",
	"info_player_terrorist",
	"info_player_counterterrorist",
	"point_servercommand",
	"Credits",
	"button_1",
	"button_2",
	"button_3",
	"button_6",
	"button_5",
	"button_4",
	"button_9",
	"button_8",
	"button_7",
	"secret_button",
	"Secret_Door",
	"Credits_after",
	"Art_Room"

}


SURF.splitInfo = {
	{Vector(1029.5642089844,-2559.96875,6139.919921875), Vector(-1023.96875,-2684.2553710938,7906.7934570313), target = 1, type = 'both'},
	{Vector(2112.8940429688,1021.1558227539,1252.3405761719), Vector(2035.3525390625,-959.96875,3066.2380371094), target = 2, type = 'both'},
	{Vector(6151.2749023438,-2560.03125,-4269.3012695313), Vector(5840.9858398438,-4607.96875,-3205.2358398438), target = 3, type = 'both'},
}

hook.Add("InitPostEntity", "HandleSpawn", function()
	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(-12161.236328125, 12828.301757813, 13088.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end)


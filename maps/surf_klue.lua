SURF.Payout = 14500

SURF.TrialVectors = {Vector(1023.5473022461, 15232.109375, 14896.06640625),Vector(0.61086559295654, 15232.90234375, 15000)}

CubeLines={
	{Vector(521.51422119141,15351.063476563,14896.03125),Vector(1088.1655273438,-4224.2529296875,-1919.96875),Vector(-90.82292175293,-4641.7182617188,127.96887207031)},
}

local function AddSpawnAreas()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(506.58923339844, 15460.401367188, 14896.03125))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

end
hook.Add("InitPostEntity", "Spawnmeup", AddSpawnAreas)


SURF.bonusZones = {
	Vector(-10701.176757813, -5364.2626953125, 2932.03125)
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"map_startzone",
	"klue",
}

SURF.splitInfo = {
	{Vector(2583.4956054688,13531.080078125,5408.03125), Vector(-1951.9688720703,12050.9609375,7195.8911132813), target = 1, type = 'both'},
	{Vector(-824.70483398438,-2152.96875,849.80682373047), Vector(1979.2275390625,553.38049316406,2495.96875), target = 2, type = 'both'},
}

local function ResetPlayerMapPos(objPlayer)
	objPlayer:Input( "AddOutput", objPlayer, game.GetWorld(), "targetname ")
end
hook.Add("SURF_StartingLineStartTouch", "FixMapStuff", ResetPlayerMapPos)

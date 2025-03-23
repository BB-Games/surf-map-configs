SURF.Payout = 10000


SURF.TrialVectors = {Vector(5760.03125, 15657.002929688, 15967.575195313),Vector(7295.96875, 15563.66015625, 15777.030273438)}

CubeLines = {
	{Vector(6522.6728515625,15688.969726563,15808.03125),Vector(-386.30322265625,1662.9835205078,13600.03125),Vector(-859.57702636719,1157.1599121094,15359.96875)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"point_servercommand",
	"2filter"
}

SURF.bonusZones = {
	Vector(-4894.4096679688, -13393.274414063, 1920.03125),
	Vector(-7948.7333984375, -427.75146484375, -7135.96875),
	Vector(-13835.657226563, -15836.891601563, 8159.03125),
	Vector(-12193.495117188, -10608.083984375, 14816.03125),
	Vector(13323.985351563, -4681.9350585938, 11072.03125)
}

SURF.splitInfo = {
	{Vector(5281.0078125,-2720.6279296875,9760.03125), Vector(7766.0493164063,-1233.8200683594,11007.96875), target = 1, type = 'both'},
	{Vector(5504.9057617188,-3104.03125,6850.6000976563), Vector(7551.96875,-5526.4897460938,9433.5078125), target = 2, type = 'both'},
	{Vector(5728.03125,-3220.2712402344,842.03820800781), Vector(7316.904296875,-1803.7062988281,2847.96875), target = 3, type = 'both'},
	{Vector(899.89562988281,2271.96875,-3648.2255859375), Vector(12132.463867188,1056.03125,-5307.8193359375), target = 4, type = 'both'},
	{Vector(11359.905273438,-9631.96875,-4512.1762695313), Vector(1701.9243164063,-7072.267578125,-7295.96875), target = 5, type = 'both'},
	{Vector(4992.03125,3809.5932617188,-9950.23828125), Vector(8059.7465820313,4831.96875,-8641.6044921875), target = 6, type = 'both'},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(6548.5825195313, 15918.221679688, 15808.03125))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in pairs(ents.FindByClass("trigger_teleport")) do -- Removes a bullshit teleporter the mapper added for no good reason
		if v:GetPos() == Vector(6528.000000, 4192.000000, -9440.000000) then
			v:Remove()
			break
		end
	end

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)
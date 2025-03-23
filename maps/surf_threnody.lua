SURF.Payout = 11000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(-9757.833984375, -478.78540039063, 1088.03125),
	{
		Vector(-10239.852539063, -1087.4519042969, 1088.03125),
		Vector(-9472.3251953125, -1087.73046875, 1088.03125),
		Vector(-9472.16015625, 191.59532165527, 1088.03125),
		Vector(-10239.48046875, 191.96875, 1088.2103271484)
	},

	useMesh = true,
	targetZHeight = 1231
}

CubeLines={
	{Vector(-9587.09375,-547.43402099609,1088.03125),Vector(-8319.96875,8316.0751953125,14400.543945313),Vector(-7314.3125,7773.328125,14783.96875)},
	{Vector(-7622.986328125,8225.666015625,14400.03125),Vector(-6657.3154296875,-11296.03125,15424.704101563),Vector(-7423.7763671875,-12317.4296875,15648.178710938)},
	{Vector(-6789.2744140625,-11897.38671875,15424.03125),Vector(-14849.713867188,-9992.1572265625,9854.7236328125),Vector(-14783.516601563,-12735.96875,8191.8427734375)},
}


EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist"
}

SURF.splitInfo = {
	{Vector(8064.8657226563,-5057.7875976563,-3615.96875), Vector(8690.994140625,-6335.96875,-2876.7795410156), target = 1, type = 'end'},
	{Vector(-8320.37890625,8320.423828125,14400.12890625), Vector(-6975.8505859375,8534.98828125,14847.96875), target = 2, type = 'start'},
	{Vector(11199.96875,7098.6474609375,7871.46875), Vector(11824.020507813,5824.03125,8616.6298828125), target = 2, type = 'end'},
	{Vector(-6657.2353515625,-11296.03125,15424.828125), Vector(-6320.2485351563,-13014.350585938,15807.96875), target = 3, type = 'start'},
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-9727.0927734375, -454.32778930664, 1088.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("sv_maxvelocity", "5000")

	for k, v in ipairs(ents.FindByName("hub_dest_end")) do
		v:SetPos(Vector(-9690.1103515625, -542.45587158203, 1088.03125))
		v:SetAngles(Angle(0, 0, 0))
	end

	for k, v in ipairs(ents.FindByName("bonus_hub_dest")) do
		v:SetPos(Vector(-9690.1103515625, -542.45587158203, 1088.03125))
		v:SetAngles(Angle(0, 0, 0))
	end
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(-6142.1059570313, 6176.8540039063, 15424.03125),
	Vector(-15807.142578125, 1988.9521484375, -2591.96875)
}
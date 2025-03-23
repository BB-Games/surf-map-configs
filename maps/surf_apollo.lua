SURF.Payout = 5500
SURF.adjustSpawnNoStart = 70

SURF.TrialVectors = {
	Vector(-795.7666015625, -0.076982021331787, 352.03125),
	{
		Vector(-991.61877441406, -511.82510375977, 352.03125),
		Vector(-735.78039550781, -511.80212402344, 352.03125),
		Vector(-479.96875, -255.79135131836, 351.32348632813),
		Vector(-480.16479492188, 255.83918762207, 352.03125),
		Vector(-736.05792236328, 512.03125, 351.52670288086),
		Vector(-991.96875, 512.087890625, 350.94555664063)
	},

	useMesh = true,
	targetZHeight = 446
}

CubeLines={
	{Vector(-643.83416748047,4.2740526199341,352.03125),
		{
			Vector(13375.173828125, 1022.9538574219, -14431.96875),
			Vector(12671.94921875, 1023.3786621094, -14431.96875),
			Vector(12095.96875, 446.00610351563, -14438.697265625),
			Vector(12096.876953125, -447.82107543945, -14431.96875),
			Vector(12671.733398438, -1023.7764892578, -14433.154296875),
			Vector(13375.96875, -1019.3150024414, -14430.942382813)
		},
		useMesh = true,
		targetZHeight = -12832.03125,
		position = Vector(12530.676757813, 15.00269317627, -14431.96875)
	}
}


EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"spawn"
}

hook.Add("InitPostEntity", "CreateZones", function()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-716.60638427734, 13.638993263245, 352.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in ipairs(ents.FindByClass("func_button")) do v:Fire("lock") end

	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(350)
	clampZone:SetTriggerPosition(Vector(-135.78887939453, 779.00646972656, 352.03125),Vector(-480.55603027344, -792.80676269531, 799.03125))
	clampZone:Spawn()
end)

SURF.bonusZones = { 
	Vector(-3234.1184082031, -7796.310546875, 15840.03125),
	Vector(-15776.631835938, 13503.6640625, 5230.7412109375),
	Vector(11792.16796875, 13247.9140625, -6257.2592773438),
	Vector(5377.75390625, 6779.4155273438, 14576.03125),
	Vector(-13648.15625, -9504.3037109375, -7599.96875),
	Vector(-14687.065429688, 6769.6284179688, -10447.96875)

}
	
SURF.splitInfo = {
	{Vector(12615.213867188,-1535.96875,-1121.4351806641), Vector(12172.861328125,1529.8126220703,-3007.96875), target = 1, type = 'both'},
	{Vector(-3074.2644042969,-1021.1063842773,-4319.96875), Vector(-4311.0615234375,1367.0172119141,-3427.9409179688), target = 2, type = 'both'},
	{Vector(-10271.530273438,1535.3863525391,-5376.03125), Vector(-9223.3642578125,-1521.3631591797,-6879.96875), target = 3, type = 'both'},
	{Vector(-3918.6638183594,1023.6022338867,-7392.03125), Vector(-1474.1199951172,-1011.0043945313,-8291.740234375), target = 4, type = 'both'},
}

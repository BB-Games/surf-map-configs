SURF.Payout = 3000
SURF.maxPrespeed = 1750
SURF.DisableMeshAhopCheck = true

SURF.TrialVectors = {
	Vector(4092.5676269531, -8263.134765625, 13344.03125),
	{
		Vector(-959.66821289063, 11519.435546875, 13216.03125),
		Vector(-959.59735107422, 11008.403320313, 13216.03125),
		Vector(-704.12713623047, 11008.1875, 13216.03125),
		Vector(-704.13861083984, 11520.03125, 13215.939453125)
	},

	useMesh = true,
	targetZHeight = 13222.66015625
}

CubeLines={
	{Vector(-1173.0396728516, 11258.473632813, 13312.03125),Vector(-12672.170898438, 10753.693359375, -5631.96875),Vector(-15359.96875, 14347.755859375, -4562.9951171875)},
}

SURF.bonusZones = {
	Vector(12881.263671875, -3744.0646972656, 6080.03125),
	Vector(-119.4955291748, -5782.8159179688, 3904.03125),
	Vector(11391.946289063, 6644.4384765625, -1599.96875)
}

SURF.splitInfo = {
	{Vector(11903.01953125,-503.14990234375,9024.03125), Vector(10702.424804688,-1540.03125,11479.482421875), target = 1, type = 'both'},
	{Vector(-11327.96875,3328.4750976563,7425.6958007813), Vector(-6144.03125,6428.4228515625,11246.029296875), target = 2, type = 'both'},
	{Vector(-10798.369140625,-9218.8212890625,-2646.7622070313), Vector(-5592.7939453125,-6144.03125,556.22760009766), target = 3, type = 'both'},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
}

local entsToCreate = {
	"surf_completeonlyarea",
	"surf_stoptimer"
}

local stepAhopZones = {
	{Vector(-1024.2208251953, 11514.787109375, 13312.03125), Vector(-1024.2852783203, 11006.25, 13612.03125),  enabled = true, maxHops = 1 },
}

local function ResetSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-1340.552490, 11282.057617, 13548.232422))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in pairs(entsToCreate) do
		local e = ents.Create(v)
		e:SetTriggerPosition(Vector(-2148.8447265625, 9987.399414063, 13625.031250), Vector(-2559.96875, 7682.30078125, 13911.099609375))
		if e.SetCustomData then
			e:SetCustomData({1})
		end
		e:Spawn()
	end

	RunConsoleCommand("sv_maxvelocity", "5000")
	RunConsoleCommand("surf_report_bad_area", "0")

	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(450)
	clampZone:SetTriggerPosition(Vector(-1024.2799072266, 9728.0322265625, 13312.03125), Vector(-2558.0053710938, 13311.96875, 15871.478515625))
	clampZone:Spawn()

	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(450)
	clampZone:SetTriggerPosition(Vector(-1023.96875, 9728.349609375, 13615.539062), Vector(2978.3015136719, 13311.96875, 14732.069335938))
	clampZone:Spawn()

	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(450)
	clampZone:SetTriggerPosition(Vector(-674.91278076172, 11774.108398438, 11776.03125), Vector(353.25225830078, 13311.96875, 15527.828125))
	clampZone:Spawn()

	-- Spawn clamp
	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(340)
	clampZone:SetTriggerPosition(Vector(-1024.3735351563, 11737.998046875, 13312.03125),Vector(-1646.4595947266, 10516.967773438, 14000.03125))
	clampZone:Spawn()

	-- post launcher clamp
	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetMaxSpeed(1800)
	clampZone:SetTriggerPosition(Vector(-658.39318847656, 10536.557617188, 11776.03125),Vector(169.25155639648, 13311.96875, 15262.685546875))
	clampZone:Spawn()


	local e = ents.Create("surf_stoptimer")
	e:SetTriggerPosition(Vector(10240.701171875, 7167.96875, -1597.6755371094), Vector(12543.96875, 6144.1196289063, -768.41387939453))
	e:Spawn()

	local b3ahop = ents.Create("surf_globalahop")
	b3ahop:SetTriggerPosition(Vector(-496.564453125, -5881.7436523438, 3904.03125), Vector(255.96875, -5540.4252929688, 4290.8696289063))
	b3ahop:Spawn()

	local noSpawnAhop = ents.Create("surf_disableahop")
	noSpawnAhop:SetTriggerPosition(Vector(-1025.2971191406, 9729.974609375, 13312.03125), Vector(-2496.771484375, 13311.96875, 14988.370117188))
	noSpawnAhop:Spawn()

	local triggerEnt = ents.Create("surf_generictrigger")
	triggerEnt:SetTriggerPosition(Vector(1469.6342773438, 13307.938476563, 11776.03125), Vector(2757.3972167969, 9763.18359375, 15281.147460938))
	triggerEnt:Spawn()

	local conditionalEnt = ents.Create("surf_disablenewrun_conditional")
	conditionalEnt:SetTriggerPosition(Vector(-958.61206054688, 9746.68359375, 11776.03125), Vector(-41.442966461182, 13311.96875, 15582.302734375))
	conditionalEnt:Spawn()

	triggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then

			conditionalEnt.activePlayers[objPlayer] = CurTime() + 6
		end
	end)

	local disableTriggerEnt = ents.Create("surf_generictrigger")
	disableTriggerEnt:SetTriggerPosition(Vector(3968.8447265625, 13307.827148438, 11776.03125), Vector(6655.96875, 9239.515625, 14824.450195313))
	disableTriggerEnt:Spawn()

	disableTriggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then
			conditionalEnt:DeactivateForPlayer(objPlayer)
		end
	end)

	local disableTriggerEnt = ents.Create("surf_generictrigger")
	disableTriggerEnt:SetTriggerPosition(Vector(-1023.96875, 9815.111328125, 12430.772460938), Vector(2304.1494140625, 13289.51953125, 11776.03125))
	disableTriggerEnt:Spawn()

	disableTriggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then
			conditionalEnt:DeactivateForPlayer(objPlayer)
		end
	end)

	SURF.CreateAutohopStepZones(stepAhopZones)
end
hook.Add("InitPostEntity", "ResetSpawn", ResetSpawn)

SURF.Payout = 3500
SURF.TrialVectors = {Vector(-2274.892578125, -5055.96875, 8139.34765625),Vector(-2302.35546875, -2944.03125, 8677.365234375)}
SURF.adjustSpawnNoStart = 100
CubeLines = {
	{Vector(-2048.0825195313,-4175.919921875,8141.03125),
		{
			Vector(-1166.5354003906, -2229.8811035156, -8370.96875),
			Vector(-2475.4047851563, -4096.4370117188, -8370.96875),
			Vector(-1180.8670654297, -5945.51171875, -8368.28125)
		},
		useMesh = true,
		targetZHeight = -7264.03125,
		position = Vector(-1674.2033691406, -4105.21875, -8370.96875)	
	}
}

SURF.bonusZones = {
	Vector(-7468.9047851563, -3872.3237304688, 7565.03125),
	Vector(2028.1274414063, 12971.249023438, 3648.03125)
}

SURF.splitInfo = {
	{Vector(-6944.1879882813,-5183.693359375,6143.6850585938), Vector(-6689.21875,-2822.5278320313,3072.03125), target = 1, type = 'both'},
	{Vector(1504.0887451172,-5392.392578125,-4658.5341796875), Vector(2048.03125,-2565.236328125,-3742.1943359375), target = 2, type = 'both'},
}

local badAhopZones = {
	{Vector(2510.8037109375, 12786.120117188, 3648.03125), Vector(1584.03125, 13375.581054688, 3865.5512695313)},
	{Vector(-2260.1013183594, -5183.96875, 8701.6318359375), Vector(-1151.9630126953, -3136.4775390625, 8141.1123046875)}
}

local function NewSpawn()
	local bonus = ents.Create("surf_globalahop")
	bonus:SetTriggerPosition(Vector(-6993.5620117188, -4416.982421875, 7565.03125), Vector(-7615.1884765625, -3713.6376953125, 7865.03125))
	bonus:Spawn()

	for k, v in ipairs(badAhopZones) do
		local e = ents.Create("surf_disableahop")
		e:SetTriggerPosition(v[1], v[2])
		e:Spawn()	
	end

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)
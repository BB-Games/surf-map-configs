SURF.Payout = 2500

SURF.TrialVectors = {
	Vector(1593.6232910156, 4.4928359985352, 11424.03125),
	{
		Vector(1888.03125, -401.78366088867, 11419.965820313),
		Vector(1888.03125, 401.03622436523, 11419.380859375),
		Vector(1577.7468261719, 364.13891601563, 11424.03125),
		Vector(1578.3872070313, -372.71701049805, 11424.03125)
	},

	useMesh = true,
	targetZHeight = 11600
}


CubeLines={
	{Vector(1519.2098388672,0.71931713819504,11424.03125),Vector(-13298.301757813, -352.12945556641, -6143.96875),Vector(-14934.770507813,405.43292236328,-4583.0346679688)},
}

local badAreas = {
	{Vector(-2461.6655273438, 3086.5361328125, 11402.99609375), Vector(-762.54168701172, 4282.6962890625, 13887.96875)},
	{Vector(-7998.4311523438, 916.37689208984, 11136.03125),Vector(-9277.912109375, -968.71691894531, 12370.515625)}
}

local noAhopAreas = {
	{Vector(-8914.389648, -540.128784, 10938.404297), Vector(-6245.688965, 790.501770, 12555.063477)},
	{Vector(2023.3010253906, 1492.7329101563, 10599.981445313), Vector(1107.3212890625, -1320.7230224609, 11552.103515625)} 
}

local b3AhopAreas = {
	{Vector(-10049.686523438, -1598.5831298828, 11452.743164063), Vector(-10814.709960938, -1216.5130615234, 11752.291015625)},
	{Vector(-11393.190429688, 5027.1103515625, 11584.03125), Vector(-11579.154296875, 5212.224609375, 11884.03125)},
	{Vector(-12714.954101563, 2776.8422851563, 11792.03125), Vector(-12893.057617188, 2596.2856445313, 11992.03125)},
	{Vector(-13139.588867188, -2291.8581542969, 11792.03125), Vector(-13323.690429688, -2476.7907714844, 12028.03125)},
	{Vector(-13159.889648438, -4010.5390625, 11792.03125), Vector(-13320.26171875, -4183.0810546875, 11992.03125)},
	{Vector(-12670.984375, -7607.142578125, 12576.03125), Vector(-11879.577148438, -5962.138671875, 13141.943359375)},
	{Vector(-15385.442382813, -3033.115234375, 12641.290039063), Vector(-11778.236328125, -5610.4555664063, 13088.327148438)}
}

local function AddNoCompleteAreas()
	for k, v in pairs(badAreas) do
		local e = ents.Create("surf_completeonlyarea")
		e:SetTriggerPosition(v[1], v[2])
		e:SetCustomData({1})
		e:Spawn()
	end

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(1566.2351074219, 3.5676469802856, 11424.03125))
	playerSpawn:SetAngles(Angle(2.112004, -0.851832, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in ipairs(b3AhopAreas) do
		local b3ahop = ents.Create("surf_globalahop")
		b3ahop:SetTriggerPosition(v[1], v[2])
		b3ahop:Spawn()
	end

	for k, v in ipairs(noAhopAreas) do
		local e = ents.Create("surf_disableahop")
		e:SetTriggerPosition(v[1], v[2])
		e:Spawn()
	end

	RunConsoleCommand("surf_report_bad_area", "0")

	local triggerEnt = ents.Create("surf_generictrigger")
	triggerEnt:SetTriggerPosition(Vector(3538.4624023438, 1603.8494873047, 10276.873046875), Vector(4179.0600585938, -1511.4482421875, 13887.96875))
	triggerEnt:Spawn()

	local conditionalEnt = ents.Create("surf_disablenewrun_conditional")
	conditionalEnt:SetTriggerPosition(Vector(1966.0649414063, -668.27734375, 10771.90625), Vector(2548.4230957031, 1119.5562744141, 13887.96875))
	conditionalEnt:Spawn()

	triggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then

			conditionalEnt.activePlayers[objPlayer] = CurTime() + 5
		end
	end)

	local disableTriggerEnt = ents.Create("surf_generictrigger")
	disableTriggerEnt:SetTriggerPosition(Vector(5056.4145507813, 679.17572021484, 10361.109375), Vector(7228.1572265625, -709.32318115234, 10498.216796875))
	disableTriggerEnt:Spawn()

	disableTriggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then
			conditionalEnt:DeactivateForPlayer(objPlayer)
		end
	end)

	local e = ents.Create("surf_stoptimer_invis")
	e:SetTriggerPosition(Vector(1851.3389892578, 639.13232421875, 11424.03125), Vector(1015.7824707031, 732.34295654297, 13887.96875))
	e:Spawn()

	local e = ents.Create("surf_stoptimer_invis")
	e:SetTriggerPosition(Vector(1367.0480957031, 726.35137939453, 11424.03125), Vector(1090.8210449219, -750.90106201172, 13887.96875))
	e:Spawn()

	local e = ents.Create("surf_stoptimer_invis")
	e:SetTriggerPosition(Vector(1851.96875, -500.81335449219, 11424.294921875), Vector(1011.6969604492, -991.56286621094, 13887.96875))
	e:Spawn()
end
hook.Add("InitPostEntity", "NOTOUCHY!", AddNoCompleteAreas)


SURF.bonusZones = {
	Vector(12797.59765625, -11411.1484375, -10943.96875),
	Vector(7167.48046875, -12697.024414063, -10431.96875),
	Vector(-10431.041992188, -1402.2191162109, 11456.03125)
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start"
}

SURF.splitInfo = {
	{Vector(-7486.4326171875, 3985.7495117188, 4474.2470703125), Vector(-5091.8842773438, -3848.5654296875, 5319.9916992188), target = 1, type = 'both'},
	{Vector(-8199.059570, -3850.027344, 4548.283203), Vector(-6685.585449, -5588.796875, 5487.901367), target = 1, type = 'both'},
	{Vector(-6456.133789, 3931.367676, 4548.283203), Vector( -8260.576172, 5216.412598, 5487.901367), target = 1, type = 'both'},
	{Vector(2778.3571777344,-3000.0993652344,-912.427734375), Vector(-1536.03125,3000.0869140625,2238.6608886719), target = 2, type = 'both'},
}

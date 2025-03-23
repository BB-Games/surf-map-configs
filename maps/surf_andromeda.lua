SURF.TrialVectors = {Vector(-7755.5610351563, -446.5075378418, 7392.03125), Vector(-7744.3310546875, 447.60800170898, 9247.96875)}
SURF.Payout = 2500
SURF.adjustSpawnNoStart = 120



SURF.TrialVectors = {
	Vector(-8067.215332, -1.353656, 7456.031250),
	{
		Vector(-8383.3134765625, 447.52661132813, 7392.03125),
		Vector(-8383.6826171875, -447.62390136719, 7392.03125),
		Vector(-7744.3349609375, -447.72940063477, 7392.03125),
		Vector(-7744.0478515625, 447.82391357422, 7392.03125)
	},

	useMesh = true,
	targetZHeight = 7516.031250
}

CubeLines = {
	{Vector(-7874.224609375,1.900888800621,7392.03125),Vector(-12325.422851563,830.94757080078,-2079.96875),Vector(-13229.739257813,-826.44445800781,-207.84973144531)},
}


SURF.bonusZones = {
	Vector(405.92340087891, -6864.0478515625, -5567.96875)
}


EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"spawn"
}

local function NewSpawn()
	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(-8027.322265625, 10.240194320679, 7392.03125))
	playerSpawn:SetAngles(Angle(0.858078, -0.527621, 0.000000))
	playerSpawn:Spawn()


	local triggerEnt = ents.Create("surf_generictrigger")
	triggerEnt:SetTriggerPosition(Vector(-6343.0170898438, 865.3173828125, 6940.8813476563), Vector(-5767.0366210938, -810.95495605469, 7986.53125))
	triggerEnt:Spawn()

	local conditionalEnt = ents.Create("surf_disablenewrun_conditional")
	conditionalEnt:SetTriggerPosition(Vector(-7500.6762695313, 700.57537841797, 6928), Vector(-6732.6494140625, -817.55029296875, 7928.5483398438))
	conditionalEnt:Spawn()

	triggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then

			conditionalEnt.activePlayers[objPlayer] = CurTime() + 8
		end
	end)

	local disableTriggerEnt = ents.Create("surf_generictrigger")
	disableTriggerEnt:SetTriggerPosition(Vector(-5656.5063476563, 506.83261108398, 6827.8881835938), Vector(-3873.0158691406, -713.51159667969, 5815.3530273438))
	disableTriggerEnt:Spawn()

	disableTriggerEnt:AddOutput(function(objPlayer)
		if IsValid(conditionalEnt) then
			conditionalEnt:DeactivateForPlayer(objPlayer)
		end
	end)
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.splitInfo = {
	{Vector(-5002.17578125,1557.712890625,3757.0498046875), Vector(3300, -1584.02905273438,-300.39025878906), target = 1, type = 'both'},
}

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local lastAnim = nil
local lastDict = nil

RegisterKeyMapping(Config.CommandName, Config.keymap_name, "keyboard", Config.key);
RegisterCommand(Config.CommandName, function()
	MenuAnimGeneral()
end)

MenuAnimGeneral = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_general", {
		title = Config.title,
		align = Config.align,
		elements = {
			{
				label = Config.CoupleAnims,
				value = "couples"
			},
			{
				label = Config.DrillAnims,
				value = "drill"
			},
			{
				label = Config.GangAnims,
				value = "gangs"
			},
			{
				label = Config.MurosAnims,
				value = "muros"
			},
			{
				label = Config.SelfiesAnims,
				value = "selfies"
			},
			{
				label = Config.TacticsAnims,
				value = "tatics"
			},
			{
				label = Config.DogAnims,
				value = "dog"
			},
			{
				label = Config.CancelAnim,
				value = "cancel"
			}
		}
	}, function(data, menu)
		if data.current.value == "couples" then
			MenuAnimsCouples()
		elseif data.current.value == "drill" then
			MenuAnimsDrill()
		elseif data.current.value == "muros" then
			MenuAnimMuro()
		elseif data.current.value == "selfies" then
			MenuAnimSelfies()
		elseif data.current.value == "tatics" then
			MenuAnimTac()
		elseif data.current.value == "dog" then
			MenuAnimsDog()
		elseif data.current.value == "cancel" then
			ClearPedTasksImmediately(PlayerPedId())
		elseif data.current.value == "gangs" then
			MenuAnimsGangs()
		end
	end, function(data, menu)
		menu.close();
	end)
end


-- Gangs
MenuAnimsGangs = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_gangs", {
		title = Config.GangTitle,
		align = Config.GangAlign,
		elements = {
			{
				label = Config.gangsign1,
				value = "gangsign1"
			},
			{
				label = Config.gangsign2,
				value = "gangsign2"
			},
			{
				label = Config.gangsign3,
				value = "gangsign3"
			},
			{
				label = Config.gangsign4,
				value = "gangsign4"
			},
			{
				label = Config.gangsign5,
				value = "gangsign5"
			},
			{
				label = Config.gangsign6,
				value = "gangsign6"
			},
			{
				label = Config.gangsign7,
				value = "gangsign7"
			},
			{
				label = Config.gangsign8,
				value = "gangsign8"
			},
			{
				label = Config.gangsign9,
				value = "gangsign9"
			},	
			{
				label = Config.gangsign10,
				value = "gangsign10"
			}
		}
	}, function(data, menu)
		if data.current.value == "gangsign1" then
			hacerAnim(id, "pepitosign4@animation", "pepitosign4_clip")
		elseif data.current.value == "gangsign2" then
			hacerAnim(id, "qpacc@gangsign1", "gangsign1_clip")
		elseif data.current.value == "gangsign3" then
			hacerAnim(id, "qpacc@gangsign2", "gangsign2_clip")
		elseif data.current.value == "gangsign4" then
			hacerAnim(id, "qpacc@gangsign3", "gangsign3_clip")
		elseif data.current.value == "gangsign5" then
			hacerAnim(id, "qpacc@gangsign4", "gangsign4_clip")
		elseif data.current.value == "gangsign6" then
			hacerAnim(id, "qpacc@gangsign5", "gangsign5_clip")
		elseif data.current.value == "gangsign7" then
			hacerAnim(id, "qpacc@gangsign6", "gangsign6_clip")
		elseif data.current.value == "gangsign8" then
			hacerAnim(id, "qpacc@gangsign7", "gangsign7_clip")
		elseif data.current.value == "gangsign9" then
			hacerAnim(id, "qpacc@gangsign8", "gangsign8_clip")
		elseif data.current.value == "gangsign10" then
			hacerAnim(id, "glock@animation", "dk_clip")
		end
	end, function(data, menu)
		menu.close();
	end)

end

-- Tatics
MenuAnimTac = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_tactica", {
		title = Config.TacTitle,
		align = Config.TacAlign,
		elements = {
			{
				label = Config.tatics1,
				value = "tatics1"
			},
			{
				label = Config.tatics2,
				value = "tatics2"
			},
			{
				label = Config.tatics3,
				value = "tatics3"
			},
			{
				label = Config.tatics4,
				value = "tatics4"
			},
			{
				label = Config.tatics5,
				value = "tatics5"
			},
			{
				label = Config.tatics6,
				value = "tatics6"
			},
			{
				label = Config.tatics7,
				value = "tatics7"
			}
		}
	}, function(data, menu)
		if data.current.value == "tatics1" then
			hacerAnim(id, "anim@fog_rifle_relaxed", "rifle_relaxed_clip")
		elseif data.current.value == "tatics2" then
			hacerAnim(id, "anim@male@holding_weapon_2", "holding_weapon_2_clip")
		elseif data.current.value == "tatics3" then
			hacerAnim(id, "anim@male@pose_weapon", "pose_weapon_clip") 
		elseif data.current.value == "tatics4" then
			hacerAnim(id, "anim@male@pose_weapon_3", "pose_weapon_3_clip")
		elseif data.current.value == "tatics5" then
			hacerAnim(id, "anim@male@holding_vest", "holding_vest_clip")
		elseif data.current.value == "tatics6" then
			hacerAnim(id, "anim@holding_side_vest", "holding_side_vest_clip")
		elseif data.current.value == "tatics7" then
			hacerAnim(id, "anim@holding_siege_vest_side", "holding_siege_vest_side_clip")
		end
	end, function(data, menu)
		menu.close();
	end)
end


-- Selfies
MenuAnimSelfies = function()
	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_selfies", {

		title = Config.SelfiesTitle,
		align = Config.SelfiesAlign,

		elements = {
			{
				label = Config.other1,
				value = "other1"
			},
			{
				label = Config.other2,
				value = "other2"
			},
			{
				label = Config.other3,
				value = "other3"
			},
			{
				label = Config.other4,
				value = "other4"
			},
			{
				label = Config.other5,
				value = "other5"
			},
			{
				label = Config.other6,
				value = "other6"
			},
			{
				label = Config.other7,
				value = "other7"
			},
			{
				label = Config.other8,
				value = "other8"
			},
			{
				label = Config.other9,
				value = "other9"
			},
			{
				label = Config.other10,
				value = "other10"
			},
			{
				label = Config.other11,
				value = "other11"
			},
			{
				label = Config.other12,
				value = "other12"
			},
			{
				label = Config.other13,
				value = "other13"
			},
			{
				label = Config.other14,
				value = "other14"
			},
			{
				label = Config.other15,
				value = "other15"
			},
			{
				label = Config.other16,
				value = "other16"
			},
			{
				label = Config.other17,
				value = "other17"
			},
			{
				label = Config.other18,
				value = "other18"
			},
			{
				label = Config.other19,
				value = "other19"
			},
			{
				label = Config.other20,
				value = "other20"
			},
			{
				label = Config.other21,
				value = "other21"
			},
			{
				label = Config.other22,
				value = "other22"
			},
			{
				label = Config.other23,
				value = "other23"
			},
			{
				label = Config.other24,
				value = "other24"
			},
			{
				label = Config.other25,
				value = "other25"
			},
			{
				label = Config.other26,
				value = "other26"
			},
			{
				label = Config.other27,
				value = "other27"
			},
			{
				label = Config.other28,
				value = "other28"
			},
			{
				label = Config.other29,
				value = "other29"
			},
			{
				label = Config.other30,
				value = "other30"
			},
			{
				label = Config.other31,
				value = "other31"
			},
			{
				label = Config.other32,
				value = "other32"
			},
			{
				label = Config.other33,
				value = "other33"
			},
			{
				label = Config.other34,
				value = "other34"
			},
			{
				label = Config.other35,
				value = "other35"
			},
			{
				label = Config.other36,
				value = "other36"
			},
			{
				label = Config.other37,
				value = "other37"
			},
			{
				label = Config.other38,
				value = "other38"
			},
			{
				label = Config.other39,
				value = "other39"
			},
			{
				label = Config.other40,
				value = "other40"
			},
			{
				label = Config.other41,
				value = "other41"
			},
			{
				label = Config.other42,
				value = "other42"
			},
			{
				label = Config.other43,
				value = "other43"
			},
			{
				label = Config.other44,
				value = "other44"
			},
			{
				label = Config.other45,
				value = "other45"
			},
			{
				label = Config.other46,
				value = "other46"
			},
			{
				label = Config.other47,
				value = "other47"
			},
			{
				label = Config.other48,
				value = "other48"
			},
			{
				label = Config.other49,
				value = "other49"
			},
			{
				label = Config.other50,
				value = "other50"
			},
			{
				label = Config.other51,
				value = "other51"
			},
			{
				label = Config.other52,
				value = "other52"
			},
			{
				label = Config.other53,
				value = "other53"
			},
			{
				label = Config.other54,
				value = "other54"
			},
		}

	}, function(data, menu)

	 	--ESX.Streaming.RequestAnimDict('cardo@drilla', function()
			--TaskPlayAnim(PlayerPedId(), "cardo@drilla", "drilla", 8.0, 1.0, -1, 2, 0)
		--end) 

		if data.current.value == "other1" then
			hacerAnim(id, "anim@sw_sit_chill", "sit_chill_clip")
		elseif data.current.value == "other2" then
			hacerAnim(id, "anim@sw_chill_pose", "chill_pose_clip")
		elseif data.current.value == "other3" then
			hacerAnim(id, "posephone@blackqueen", "posephone_clip")
		elseif data.current.value == "other4" then
			hacerAnim(id, "anim@peace_selfie", "peace_clip")
		elseif data.current.value == "other5" then
			hacerAnim(id, "anim@stance_folded_arms", "folded_arms_clip")
		elseif data.current.value == "other6" then
			hacerAnim(id, "anim@stance_kneeling_cute", "kneeling_cute_clip")
		elseif data.current.value == "other7" then
			hacerAnim(id, "anim@sit_cute_window", "cute_window_clip")
		elseif data.current.value == "other8" then
			hacerAnim(id, "anim@car_cute_sit", "cute_sit_clip")
		elseif data.current.value == "other9" then
			hacerAnim(id, "anim@selfie_peacesign_cute", "peacesign_cute_clip")	
		elseif data.current.value == "other10" then
			hacerAnim(id, "anim@selfie_knees_cute", "knees_cute_clip")	
		elseif data.current.value == "other11" then
			hacerAnim(id, "mx@pose1", "mx_animclip1")	
		elseif data.current.value == "other12" then
			hacerAnim(id, "mx@pose2", "mx_clippose2")	
		elseif data.current.value == "other13" then
			hacerAnim(id, "mx@pose3", "mx_clippose3")	
		elseif data.current.value == "other14" then
			hacerAnim(id, "mx@pose4", "mx_clippose4")	
		elseif data.current.value == "other15" then
			hacerAnim(id, "mggyselfie1@animation", "mggyselfie1_clip")	
		elseif data.current.value == "other16" then
			hacerAnim(id, "mggyselfie2@animation", "mggyselfie2_clip")	
		elseif data.current.value == "other17" then
			hacerAnim(id, "mggyselfie4@animation", "mggyselfie4_clip")	
		elseif data.current.value == "other18" then
			hacerAnim(id, "lunyx@random@v3@pose001", "random@v3@pose001")	
		elseif data.current.value == "other19" then
			hacerAnim(id, "lunyx@random@v3@pose002", "random@v3@pose002")	
		elseif data.current.value == "other20" then
			hacerAnim(id, "lunyx@random@v3@pose003", "random@v3@pose003")	
		elseif data.current.value == "other21" then
			hacerAnim(id, "lunyx@random@v3@pose004", "random@v3@pose004")	
		elseif data.current.value == "other22" then
			hacerAnim(id, "lunyx@random@v3@pose005", "random@v3@pose005")	
		elseif data.current.value == "other23" then
			hacerAnim(id, "lunyx@random@v3@pose006", "random@v3@pose006")	
		elseif data.current.value == "other23" then
			hacerAnim(id, "lunyx@random@v3@pose006", "random@v3@pose006")	
		elseif data.current.value == "other24" then
			hacerAnim(id, "lunyx@random@v3@pose007", "random@v3@pose007")	
		elseif data.current.value == "other25" then
			hacerAnim(id, "lunyx@random@v3@pose008", "random@v3@pose008")	
		elseif data.current.value == "other26" then
			hacerAnim(id, "lunyx@random@v3@pose009", "random@v3@pose009")	
		elseif data.current.value == "other27" then
			hacerAnim(id, "lunyx@random@v3@pose010", "random@v3@pose010")	
		elseif data.current.value == "other28" then
			hacerAnim(id, "lunyx@random@v3@pose011", "random@v3@pose011")	
		elseif data.current.value == "other29" then
			hacerAnim(id, "lunyx@random@v3@pose012", "random@v3@pose012")	
		elseif data.current.value == "other30" then
			hacerAnim(id, "lunyx@random@v3@pose013", "random@v3@pose013")	
		elseif data.current.value == "other31" then
			hacerAnim(id, "lunyx@random@v3@pose014", "random@v3@pose014")	
		elseif data.current.value == "other32" then
			hacerAnim(id, "lunyx@random@v3@pose015", "random@v3@pose015")	
		elseif data.current.value == "other33" then
			hacerAnim(id, "lunyx@random@v3@pose016", "random@v3@pose016")	
		elseif data.current.value == "other34" then
			hacerAnim(id, "lunyx@random@v3@pose016", "random@v3@pose016")	
		elseif data.current.value == "other35" then
			hacerAnim(id, "lunyx@random@v3@pose017", "random@v3@pose017")	
		elseif data.current.value == "other35" then
			hacerAnim(id, "lunyx@random@v3@pose018", "random@v3@pose018")	
		elseif data.current.value == "other36" then
			hacerAnim(id, "lunyx@random@v3@pose019", "random@v3@pose019")	
		elseif data.current.value == "other37" then
			hacerAnim(id, "lunyx@random@v3@pose020", "random@v3@pose020")	
		elseif data.current.value == "other38" then
			hacerAnim(id, "lunyx@rgmp01", "rgmp01")	
		elseif data.current.value == "other39" then
			hacerAnim(id, "lunyx@rgmp02", "rgmp02")	
		elseif data.current.value == "other40" then
			hacerAnim(id, "lunyx@rgmp03", "rgmp03")	
		elseif data.current.value == "other41" then
			hacerAnim(id, "lunyx@rgmp04", "rgmp04")	
		elseif data.current.value == "other42" then
			hacerAnim(id, "lunyx@rgmp05", "rgmp05")	
		elseif data.current.value == "other43" then
			hacerAnim(id, "lunyx@rgmp06", "rgmp06")	
		elseif data.current.value == "other44" then
			hacerAnim(id, "lunyx@rgmp07", "rgmp07")	
		elseif data.current.value == "other45" then
			hacerAnim(id, "arron@simspose1", "simspose1")	
		elseif data.current.value == "other46" then
			hacerAnim(id, "arron@simspose2", "simspose2")	
		elseif data.current.value == "other47" then
			hacerAnim(id, "arron@simspose3", "simspose3")	
		elseif data.current.value == "other48" then
			hacerAnim(id, "arron@simspose4", "simspose4")	
		elseif data.current.value == "other49" then
			hacerAnim(id, "arron@simspose5", "simspose5")	
		elseif data.current.value == "other50" then
			hacerAnim(id, "heart@hands", "base")	
		elseif data.current.value == "other51" then
			hacerAnim(id, "heart@handsMP1", "base")	
		elseif data.current.value == "other52" then
			hacerAnim(id, "heart@handsMP2", "base")	
		elseif data.current.value == "other53" then
			hacerAnim(id, "leaning_wall@touching_hair", "base")	
		elseif data.current.value == "other54" then
			hacerAnim(id, "magic@dark_spell", "base")	
		end
	end, function(data, menu)
		menu.close();
	end)
end


-- Sentarse en muros
MenuAnimMuro = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_muros", {
		title = Config.WallTitle,
		align = Config.WallAlign,
		elements = {
			{
				label = Config.wall1,
				value = "wall1"
			},
			{
				label = Config.wall2,
				value = "wall2"
			},
			{
				label = Config.wall3,
				value = "wall3"
			},
			{
				label = Config.wall4,
				value = "wall4"
			},
			{
				label = Config.wall5,
				value = "wall5"
			},
			{
				label = Config.wall6,
				value = "wall6"
			},
			{
				label = Config.wall7,
				value = "wall7"
			},
			{
				label = Config.laddar1,
				value = "laddar1"
			},
		}
	}, function(data, menu)
		if data.current.value == "wall1" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords,'WORLD_HUMAN_SEAT_LEDGE')
		elseif data.current.value == "wall2" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords,'WORLD_HUMAN_SEAT_LEDGE_EATING')
		elseif data.current.value == "wall3" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords,'WORLD_HUMAN_SEAT_WALL')
		elseif data.current.value == "wall4" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords, 'WORLD_HUMAN_SEAT_WALL_EATING')
		elseif data.current.value == "wall5" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords, 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER')
		elseif data.current.value == "wall6" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords, 'PROP_HUMAN_SEAT_BENCH_FOOD')
		elseif data.current.value == "wall7" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords, 'PROP_HUMAN_SEAT_CHAIR_DRINK')
		elseif data.current.value == "laddar1" then
			local pPed = PlayerPedId()
			local coords = GetEntityCoords(pPed)
			hacerAnimSit(pPed, coords, 'WORLD_HUMAN_SEAT_STEPS')
		end
	end, function(data, menu)
		menu.close();
	end)
end

--- Couples

MenuAnimsCouples = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_couples", {
		title = Config.CouplesTitle,
		align = Config.CouplesAlign,
		elements = {
			{
				label = Config.couple1,
				value = "couple1"
			},
			{
				label = Config.couple2,
				value = "couple2"
			},
			{
				label = Config.couple3,
				value = "couple3"
			},
			{
				label = Config.couple4,
				value = "couple4"
			},
			{
				label = Config.couple5,
				value = "couple5"
			},
			{
				label = Config.couple6,
				value = "couple6"
			},
			{
				label = Config.couple7,
				value = "couple7"
			},
			{
				label = Config.couple8,
				value = "couple8"
			},
			{
				label = Config.couple9,
				value = "couple9"
			},
			{
				label = Config.couple10,
				value = "couple10"
			},
			{
				label = Config.couple11,
				value = "couple11"
			},
			{
				label = Config.couple12,
				value = "couple12"
			},
			{
				label = Config.couple13,
				value = "couple13"
			},
			{
				label = Config.couple14,
				value = "couple14"
			},
			{
				label = Config.couple15,
				value = "couple15"
			},
			{
				label = Config.couple16,
				value = "couple16"
			},
		}
	}, function(data, menu)
		if data.current.value == "couple1" then
			local x = -0.37
			local y = 0.0
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@buddies01a", "buddies01a", x, y, z, "lunyx@buddies01b", "buddies01b")
		elseif data.current.value == "couple2" then
			local x = 0.40
			local y = -0.23
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@buddies02b", "buddies02b", x, y, z, "llunyx@buddies02a", "buddies02a")
		elseif data.current.value == "couple3" then
			local x = 0.22
			local y = 0.20
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@buddies03b", "buddies03b", x, y, z, "lunyx@buddies03a", "buddies03a")
		elseif data.current.value == "couple4" then
			local x = 0.33
			local y = -0.03
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@buddies04b", "buddies04b",x, y, z, "lunyx@buddies04a", "buddies04a")
		elseif data.current.value == "couple5" then
			local x = -0.03
			local y = 0.27
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@buddies05b", "buddies05b", x, y, z, "lunyx@buddies05a", "buddies05a")
		elseif data.current.value == "couple6" then
			local x = 0.07
			local y = 0.31
			local z = 0.00
			local pPed = PlayerPedId()
			hacerCouples(pPed, "syx@lmky02a", "lmky02a",x, y, z, "syx@lmky02b", "lmky02b")
		elseif data.current.value == "couple7" then
			local x = 0.05
			local y = 0.37
			local z = 0.00 
			local pPed = PlayerPedId()
			hacerCouples(pPed, "syx@lmky03a", "lmky03a",x, y, z, "syx@lmky03b", "lmky03b")
		elseif data.current.value == "couple8" then
			local x = 0.00
			local y = 0.39
			local z = -0.05
			local pPed = PlayerPedId()
			hacerCouples(pPed, "syx@lmky04a", "lmky04a", x, y, z, "syx@lmky04b", "lmky04b")
		elseif data.current.value == "couple9" then
			local x = 0.00
			local y = 0.32
			local z = -0.1
			local pPed = PlayerPedId()
			hacerCouples(pPed, "syx@lmky05a", "lmky05a", x, y, z, "syx@lmky05b", "lmky05b")
		elseif data.current.value == "couple10" then
			local x = -0.16
			local y = 0.29
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple01a", "casualcouple01a", x, y, z, "lunyx@casualcouple01b", "casualcouple01b")
		elseif data.current.value == "couple11" then
			local x = 0.23
			local y = 0.20
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple02a", "casualcouple02a",x, y, z, "lunyx@casualcouple02b", "casualcouple02b")
		elseif data.current.value == "couple12" then
			local x = -0.25
			local y = 0.23
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple03a", "casualcouple03a", x, y, z, "lunyx@casualcouple03b", "casualcouple03b")
		elseif data.current.value == "couple13" then
			local x = -0.29
			local y = 0.17
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple04a", "casualcouple04a", x, y, z, "lunyx@casualcouple04b", "casualcouple04b")
		elseif data.current.value == "couple14" then
			local x = -0.33
			local y = 0.03
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple05a", "casualcouple05a", x, y, z, "lunyx@casualcouple05b", "casualcouple05b")
		elseif data.current.value == "couple15" then
			local x = -0.15
			local y = 0.30
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple06a", "casualcouple06a", x, y, z, "lunyx@casualcouple06b", "casualcouple06b")
		elseif data.current.value == "couple16" then
			local x = -0.11
			local y = -0.19
			local z = 0.0
			local pPed = PlayerPedId()
			hacerCouples(pPed, "lunyx@casualcouple07a", "casualcouple07a", x, y, z, "lunyx@casualcouple07b", "casualcouple07b")
		end
	end, function(data, menu)
		menu.close();
	end)
end

-- Menú Drill
MenuAnimsDrill = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_drill", {
		title = Config.DrillTitle,
		align = Config.DrillAlign,
		elements = {
			{
				label = Config.dancesdrill,
				value = "menuBailes"
			},
			{
				label = Config.drill1,
				value = "drill1"
			},
			{
				label = Config.drill2,
				value = "drill2"
			},
			{
				label = Config.drill3,
				value = "drill3"
			},
			{
				label = Config.drill4,
				value = "drill4"
			},
			{
				label = Config.drill5,
				value = "drill5"
			},
		}
	}, function(data, menu)
		if data.current.value == "drill1" then
			esxHacerAnim("cardo@drilla", "drilla")
		elseif data.current.value == "drill2" then
			esxHacerAnim("cardo@centralcee", "centralcee")
		elseif data.current.value == "drill3" then
			esxHacerAnim("cardo@lean", "lean")
		elseif data.current.value == "drill4" then
			esxHacerAnim("cardo@sitface", "sitface")
		elseif data.current.value == "drill5" then
			esxHacerAnim("cardo@step", "step")
		elseif data.current.value == "menuBailes" then
			MenuBailesDrill()
		end
	end, function(data, menu)
		menu.close();
	end)
end

-- menu Bailes Drill

MenuBailesDrill = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_bailes_drill", {
		title = Config.DanceDrillTitle,
		align = Config.DanceDrillAlign,
		elements = {
			{
				label = Config.dancesdril1,
				value = "drill1"
			},
			{
				label = Config.dancesdril2,
				value = "drill2"
			},
			{
				label = Config.dancesdril3,
				value = "drill3"
			},
			{
				label = Config.dancesdril4,
				value = "drill4"
			},
			{
				label = Config.dancesdril5,
				value = "drill5"
			},
			{
				label = Config.dancesdril6,
				value = "drill6"
			},
			{
				label = Config.dancesdril7,
				value = "drill7"
			},
			{
				label = Config.dancesdril8,
				value = "drill8"
			},
			{
				label = Config.dancesdril9,
				value = "drill9"
			},
			{
				label = Config.dancesdril10,
				value = "drill10"
			}
		}
	}, function(data, menu)
		if data.current.value == "drill1" then
			hacerAnim(id, "anim@amb@nightclub_island@dancers@crowddance_single_props@", "mi_dance_prop_13_v1_male^3")
		elseif data.current.value == "drill2" then
			hacerAnim(id, "anim@amb@nightclub_island@dancers@crowddance_groups@groupd@", "mi_dance_crowd_13_v2_male^1")
		elseif data.current.value == "drill3" then
			hacerAnim(id, "anim@amb@nightclub_island@dancers@crowddance_facedj@", "mi_dance_facedj_17_v2_male^4")
		elseif data.current.value == "drill4" then
			hacerAnim(id, "anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_15_v2_male^5")
		elseif data.current.value == "drill5" then
			hacerAnim(id, "anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_17_male^5")
		elseif data.current.value == "drill6" then
			hacerAnim(id, "anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_up")
		elseif data.current.value == "drill7" then
			hacerAnim(id, "anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "med_center")
		elseif data.current.value == "drill8" then
			hacerAnim(id, "anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_down")
		elseif data.current.value == "drill9" then
			hacerAnim(id, "anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_center")
		elseif data.current.value == "drill10" then
			hacerAnim(id, "anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_left_down")
		end
	end, function(data, menu)
		menu.close();
	end)
end
-- Menú Perro

MenuAnimsDog = function()

	local id = PlayerPedId()
	local name = GetPlayerName(PlayerId())

	ESX.UI.Menu.CloseAll();

	ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_perros", {
		title = Config.DogTitle,
		align = Config.DogAlign,
		elements = {
			{
				label = Config.sit_one,
				value = "sentarse"
			},
			{
				label = Config.sit_two,
				value = "sentarsedos"
			},
			{
				label = Config.sit_on_car,
				value = "sentarsecoche"
			},
			{
				label = Config.bark_one,
				value = "ladrar"
			},
			{
				label = Config.bark_two,
				value = "ladrardos"
			},
			{
				label = Config.sleep_one,
				value = "tumbarse"
			},
			{
				label = Config.sleep_two,
				value = "tumbarsedos"
			},
			{
				label = Config.piss_right,
				value = "mear"
			},
			{
				label = Config.piss_left,
				value = "meardos"
			},
			{
				label = Config.give_the_paw,
				value = "agpata"
			},
			{
				label = Config.receiving_caresses,
				value = "revcar"
			},
			{
				label = Config.draw_attention,
				value = "laten"
			},
			{
				label = Config.scratch,
				value = "ith"
			},
			{
				label = Config.scratch_the_door,
				value = "beg"
			},
			{
				label = Config.poop,
				value = "cagar"
			}
		}
	}, function(data, menu)
		if data.current.value == "sentarse" then
			hacerAnim(id, "creatures@rottweiler@amb@world_dog_sitting@base", "base")
		elseif data.current.value == "sentarsedos" then
			hacerAnim(id, "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_b")
		elseif data.current.value == "sentarsecoche" then
			hacerAnim(id, "creatures@rottweiler@incar@", "sit")
		elseif data.current.value == "ladrar" then
			hacerAnim(id, "creatures@retriever@amb@world_dog_barking@idle_a", "idle_a")
		elseif data.current.value == "ladrardos" then
			hacerAnim(id, "creatures@rottweiler@amb@world_dog_barking@idle_a", "idle_a")
		elseif data.current.value == "tumbarse" then
			hacerAnim(id, "creatures@rottweiler@amb@sleep_in_kennel@", "sleep_in_kennel")
		elseif data.current.value == "tumbarsedos" then
			hacerAnim(id, "creatures@rottweiler@move", "dead_right")
		elseif data.current.value == "mear" then
			hacerAnim(id, "creatures@rottweiler@move", "pee_left_idle")
		elseif data.current.value == "meardos" then
			hacerAnim(id, "creatures@rottweiler@move", "pee_right_idle")
		elseif data.current.value == "agpata" then
			hacerAnim(id, "creatures@rottweiler@tricks@", "paw_right_loop")
		elseif data.current.value == "revcar" then
			hacerAnim(id, "creatures@rottweiler@tricks@", "petting_chop")
		elseif data.current.value == "laten" then
			hacerAnim(id, "creatures@rottweiler@indication@", "indicate_high")
		elseif data.current.value == "ith" then
			hacerAnim(id, "creatures@rottweiler@amb@world_dog_sitting@idle_a", "idle_a")
		elseif data.current.value == "beg" then
			hacerAnim(id, "creatures@rottweiler@tricks@", "beg_loop")
		elseif data.current.value == "cagar" then
			hacerAnim(id, "creatures@rottweiler@move", "dump_loop")
		end
	end, function(data, menu)
		menu.close();
	end)
end

-- Funciones
function esxHacerAnim(dic, name)
	ESX.Streaming.RequestAnimDict(dic, function()
        TaskPlayAnim(PlayerPedId(), dic, name, 8.0, 1.0, -1, 2, 0)
    end) 
end

function hacerAnimSit(pPed, coords, task)
	TaskStartScenarioAtPosition(pPed, task, coords.x, coords.y, coords.z- 1.0, GetEntityHeading(pPed), 0, false, true)
end

function hacerAnim(source, dic, anima)
	local ad = dic
	local anim = anima
	local player = source
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
	  loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end
end

local function GetClosestPlayer(radius)
    local players = GetActivePlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    for _,playerId in ipairs(players) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed ~= playerPed then
            local targetCoords = GetEntityCoords(targetPed)
            local distance = #(targetCoords-playerCoords)
            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = playerId
                closestDistance = distance
            end
        end
    end
	if closestDistance ~= -1 and closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

local function Animate(dict, anim)
    ESX.Streaming.RequestAnimDict(dict, function()
        TaskPlayAnim(PlayerPedId(), dict, anim, 15.0, 0.0, -1, 2, 0, false, false, false)
        lastAnim = anim
        lastDict = dict
        RemoveAnimDict(dict)
    end)
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

function hacerCouples(pPed, firstanimDict, firstanim, attachX, attachY, attachZ, secondanimDict, secondanim)
	if IsPedInAnyVehicle(pPed) then return end
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, firstanimDict, firstanim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, attachX, attachY, attachZ, 0.5, 0.5, 0.5, false, false, true, true, 2, true)
			Animate(secondanimDict, secondanim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, firstanimDict, firstanim, 3) or not IsEntityPlayingAnim(pPed, secondanimDict, secondanim, 3) then
						ClearPedTasksImmediately(pPed)
						Wait(250)
                        DetachEntity(pPed)	
						break
					end	
				end	
			end)
		else
			Animate(firstanimDict, firstanim)
		end
	else
		Animate(firstanimDict, firstanim)
	end
end
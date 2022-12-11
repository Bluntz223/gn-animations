ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterKeyMapping("MenuAnims", Config.keymap_name, "keyboard", Config.key);
RegisterCommand("MenuAnims", function()
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
			},
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
			ExecuteCommand("sitmuro1")
		elseif data.current.value == "wall2" then
			ExecuteCommand("sitmuro2")
		elseif data.current.value == "wall3" then
			ExecuteCommand("sitmuro3")
		elseif data.current.value == "wall4" then
			ExecuteCommand("sitmuro4")
		elseif data.current.value == "wall5" then
			ExecuteCommand("sitmuro5")
		elseif data.current.value == "wall6" then
			ExecuteCommand("sitmuro6")
		elseif data.current.value == "wall7" then
			ExecuteCommand("sitmuro7")
		elseif data.current.value == "laddar1" then
			ExecuteCommand("sitescalones")
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
			ExecuteCommand("posar1")
		elseif data.current.value == "couple2" then
			ExecuteCommand("posar2")
		elseif data.current.value == "couple3" then
			ExecuteCommand("posar3")
		elseif data.current.value == "couple4" then
			ExecuteCommand("posar4")
		elseif data.current.value == "couple5" then
			ExecuteCommand("posar5")
		elseif data.current.value == "couple6" then
			ExecuteCommand("posar6")
		elseif data.current.value == "couple7" then
			ExecuteCommand("posar7")
		elseif data.current.value == "couple8" then
			ExecuteCommand("posar8")
		elseif data.current.value == "couple9" then
			ExecuteCommand("posar9")
		elseif data.current.value == "couple10" then
			ExecuteCommand("posar10")
		elseif data.current.value == "couple11" then
			ExecuteCommand("posar11")
		elseif data.current.value == "couple12" then
			ExecuteCommand("posar12")
		elseif data.current.value == "couple13" then
			ExecuteCommand("posar13")
		elseif data.current.value == "couple14" then
			ExecuteCommand("posar14")
		elseif data.current.value == "couple15" then
			ExecuteCommand("posar15")
		elseif data.current.value == "couple16" then
			ExecuteCommand("posar16")
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
			ExecuteCommand("posardrill1")
		elseif data.current.value == "drill2" then
			ExecuteCommand("posardrill2")
		elseif data.current.value == "drill3" then
			ExecuteCommand("posardrill3")
		elseif data.current.value == "drill4" then
			ExecuteCommand("posardrill4")
		elseif data.current.value == "drill5" then
			ExecuteCommand("posardrill5")
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
		align = Config.DanceDrillTitle,
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

-- Comandos animaciones
  
RegisterCommand('sitmuro1', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'WORLD_HUMAN_SEAT_LEDGE', coords.x, coords.y, coords.z- 1.0, GetEntityHeading(pPed), 0, false, true)
end)
  
RegisterCommand('sitmuro2', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'WORLD_HUMAN_SEAT_LEDGE_EATING', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
  
end)
  
RegisterCommand('sitmuro3', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'WORLD_HUMAN_SEAT_WALL', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
end)
  
RegisterCommand('sitmuro4', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'WORLD_HUMAN_SEAT_WALL_EATING', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
end)
  
RegisterCommand('sitmuro5', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
end)
  
RegisterCommand('sitmuro6', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'PROP_HUMAN_SEAT_BENCH_FOOD', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
end)

RegisterCommand('sitmuro7', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'PROP_HUMAN_SEAT_CHAIR_DRINK', coords.x, coords.y, coords.z-1.0 , GetEntityHeading(pPed), 0, false, true)
end)
  
RegisterCommand('sitescalones', function()
    local pPed = PlayerPedId()
    local coords = GetEntityCoords(pPed)
    TaskStartScenarioAtPosition(pPed, 'WORLD_HUMAN_SEAT_STEPS', coords.x, coords.y, coords.z-1.1 , GetEntityHeading(pPed), 0, false, true)
end)


local posarList = {
	['posar1'] = {
		first = {
			animDict = "lunyx@buddies01a",
			anim = "buddies01a",
		},
		second = {
			animDict = "lunyx@buddies01b",
			anim = "buddies01b",

			attachX = -0.37,
			attachY = 0.0,
			attachZ = 0.00,
		}
	},
	['posar2'] = {
		first = {
			animDict = "lunyx@buddies02b",
			anim = "buddies02b",
		},
		second = {
			animDict = "lunyx@buddies02a",
			anim = "buddies02a",
			attachX = 0.40,
			attachY = -0.23,
			attachZ = 0.00,
		}
	},
	['posar3'] = {
		first = {
			animDict = "lunyx@buddies03b",
			anim = "buddies03b",
			
		},
		second = {
			animDict = "lunyx@buddies03a",
			anim = "buddies03a",
			attachX = 0.22,
			attachY = 0.20,
			attachZ = 0.00,
		}
	},
	['posar4'] = {
		first = {
			animDict = "lunyx@buddies04b",
			anim = "buddies04b",
		},
		second = {
			animDict = "lunyx@buddies04a",
			anim = "buddies04a",
			attachX = 0.33,
			attachY = -0.03,
			attachZ = 0.00,
		}
	},
	['posar5'] = {
		first = {
			animDict = "lunyx@buddies05b",
			anim = "buddies05b",
		},
		second = {
			animDict = "lunyx@buddies05a",
			anim = "buddies05a",
			attachX = -0.03,
			attachY = -0.27,
			attachZ = 0.00,
		}
	},
	['posar6'] = {
		first = {
			animDict = "syx@lmky02a",
			anim = "lmky02a",
		},
		second = {
			animDict = "syx@lmky02b",
			anim = "lmky02b",
			attachX = 0.07,
			attachY = 0.31,
			attachZ = 0.00,
		}
	},
	['posar7'] = {
		first = {
			animDict = "syx@lmky03a",
			anim = "lmky03a",
		},
		second = {
			animDict = "syx@lmky03b",
			anim = "lmky03b",
			attachX = 0.05,
			attachY = 0.37,
			attachZ = 0.00,
		}
	},
	['posar8'] = {
		first = {
			animDict = "syx@lmky04a",
			anim = "lmky04a",
		},
		second = {
			animDict = "syx@lmky04b",
			anim = "lmky04b",
			attachX = 0.00,
			attachY = 0.39,
			attachZ = -0.05,
		}
	},
	['posar9'] = {
		first = {
			animDict = "syx@lmky05a",
			anim = "lmky05a",
		},
		second = {
			animDict = "syx@lmky05b",
			anim = "lmky05b",
			attachX = 0.00,
			attachY = 0.32,
			attachZ = -0.1,
		}
	},
	['posar10'] = {
		first = {
			animDict = "lunyx@casualcouple01a",
			anim = "casualcouple01a",
		},
		second = {
			animDict = "lunyx@casualcouple01b",
			anim = "casualcouple01b",
			attachX = -0.16,
			attachY = 0.29,
			attachZ = 0.0,
		}
	},
	['posar11'] = {
		first = {
			animDict = "lunyx@casualcouple02a",
			anim = "casualcouple02a",
		},
		second = {
			animDict = "lunyx@casualcouple02b",
			anim = "casualcouple02b",
			attachX = -0.23,
			attachY = 0.20,
			attachZ = 0.0,
		}
	},
	['posar12'] = {
		first = {
			animDict = "lunyx@casualcouple03a",
			anim = "casualcouple03a",
		},
		second = {
			animDict = "lunyx@casualcouple03b",
			anim = "casualcouple03b",
			attachX = -0.25,
			attachY = 0.23,
			attachZ = 0.0,
		}
	},
	['posar13'] = {
		first = {
			animDict = "lunyx@casualcouple04a",
			anim = "casualcouple04a",
		},
		second = {
			animDict = "lunyx@casualcouple04b",
			anim = "casualcouple04b",
			attachX = -0.29,
			attachY = 0.17,
			attachZ = 0.0,
		}
	},
	['posar14'] = {
		first = {
			animDict = "lunyx@casualcouple05a",
			anim = "casualcouple05a",
		},
		second = {
			animDict = "lunyx@casualcouple05b",
			anim = "casualcouple05b",
			attachX = -0.33,
			attachY = 0.03,
			attachZ = 0.0,
		}
	},
	['posar15'] = {
		first = {
			animDict = "lunyx@casualcouple06a",
			anim = "casualcouple06a",
		},
		second = {
			animDict = "lunyx@casualcouple06b",
			anim = "casualcouple06b",
			attachX = -0.15,
			attachY = 0.30,
			attachZ = 0.0,
		}
	},
	['posar16'] = {
		first = {
			animDict = "lunyx@casualcouple07a",
			anim = "casualcouple07a",
		},
		second = {
			animDict = "lunyx@casualcouple07b",
			anim = "casualcouple07b",
			attachX = -0.11,
			attachY = -0.19,
			attachZ = 0.0,
		}
	},
}

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

local lastAnim = nil
local lastDict = nil
local function Animate(dict, anim)
    ESX.Streaming.RequestAnimDict(dict, function()
        TaskPlayAnim(PlayerPedId(), dict, anim, 15.0, 0.0, -1, 2, 0, false, false, false)
        lastAnim = anim
        lastDict = dict
        RemoveAnimDict(dict)
    end)
end


RegisterCommand("posar1", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar1'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.5, 0.5, 0.5, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar2", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar2'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 5.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar3", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar3'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 125.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar4", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar4'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -10.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar5", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar5'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 175.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar6", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar6'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 135.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar7", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar7'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -70.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar8", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar8'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -90.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar9", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar9'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 0.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar10", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar10'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 0.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar11", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar11'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 240.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar12", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar12'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -50.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar13", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar13'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -85.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar14", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar14'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -23.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar15", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar15'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, -150.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand("posar16", function(source, args)
	local pPed = PlayerPedId()
	if IsPedInAnyVehicle(pPed) then return end
	local type = 'posar16'
	if GetClosestPlayer(3) then
		local closestPed = ESX.Game.GetClosestPed()
		if IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) then 
			AttachEntityToEntity(pPed, closestPed, 0, posarList[type].second.attachX, posarList[type].second.attachY, posarList[type].second.attachZ, 0.0, 0.0, 0.0, false, false, true, true, 2, true)
			Animate(posarList[type].second.animDict, posarList[type].second.anim)
			CreateThread(function()
				while true do
					Wait(250)
					if not IsEntityPlayingAnim(closestPed, posarList[type].first.animDict, posarList[type].first.anim, 3) or
					not IsEntityPlayingAnim(pPed, posarList[type].second.animDict, posarList[type].second.anim, 3) then
						ClearPedTasksImmediately(pPed)
                        Wait(250)
                        DetachEntity(pPed)
						break
					end
				end
			end)
		else
			Animate(posarList[type].first.animDict, posarList[type].first.anim)
		end
	else
		Animate(posarList[type].first.animDict, posarList[type].first.anim)
	end
end, false)

RegisterCommand('posardrill1', function()
    ESX.Streaming.RequestAnimDict('cardo@drilla', function()
        TaskPlayAnim(PlayerPedId(), "cardo@drilla", "drilla", 8.0, 1.0, -1, 2, 0)
    end) 
end)

RegisterCommand('posardrill2', function()
    ESX.Streaming.RequestAnimDict('cardo@centralcee', function()
        TaskPlayAnim(PlayerPedId(), "cardo@centralcee", "centralcee", 8.0, 1.0, -1, 2, 0)
    end) 
end)

RegisterCommand('posardrill3', function()
    ESX.Streaming.RequestAnimDict('cardo@lean', function()
        TaskPlayAnim(PlayerPedId(), "cardo@lean", "lean", 8.0, 1.0, -1, 2, 0)
    end) 
end)

RegisterCommand('posardrill4', function()
    ESX.Streaming.RequestAnimDict('cardo@sitface', function()
        TaskPlayAnim(PlayerPedId(), "cardo@sitface", "sitface", 8.0, 1.0, -1, 2, 0)
    end) 
end)

RegisterCommand('posardrill5', function()
    ESX.Streaming.RequestAnimDict('cardo@step', function()
        TaskPlayAnim(PlayerPedId(), "cardo@step", "step", 8.0, 1.0, -1, 2, 0)
    end) 
end)

-- Funciones

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
  
function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end
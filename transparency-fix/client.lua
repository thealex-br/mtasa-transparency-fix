local theShader = [[
	technique alphafix {
		pass P0 {AlphaRef = 148; CullMode = None;}
		pass P1 {AlphaRef = 0; zWriteEnable = false;}
	}
]]

local function onStart()
	local textures = {
		"newtree*",
		"*brnch*",
		"dead_agave",
		"deadpalm01",
		"des_rails1",
		"ws_railing1",
		"des_radiomast",
		"des_woodrails",
		"desbarlas",
		"*plants*",
		"foliage256",
		"bevflower*",
		"ws_woodyhedge",
		"yuka256",
		"oak2b",
		"sm_josh_leaf",
		"kb_balcony_ferns",

		"*fence*",
		"*fencing*",
		"*graf*",
		"ws_railing1",
		"CJ_PLANT",
		"wattsstax4_lae",
		"wattsstax1_lae",
		"*telewires*",
		"des_powerlines",
		"scaff2flas",
		"ws_goldengate2",
		"ws_goldengate5",

		"sw_flag*",
		"sw_lattice",

		"des_pylon*",
		"des_elepylon",
		"des_pylon2",
		"lasjmpow8",
		"ws_crossbeam1",
		"des_byframe1",
		"sw_olddrum1",
		"bonyrd_frame1",
		"crackedgroundb",
		"ruffroadlas",
		"clothline*",

		"frame_la",
		"billdetaily",
		"aroofbit91",
		"antenna1",
		"sjmbarblas",

		"plant*256",
		"veg_largefurs*",
		"lod_largefurs*",
		"lod_redwoodgrp",
		"cypress*",
		"sm_pinetreebit",
		"sm_redwood_branch",
		"ws_castironwalk",
		"ws_greymetal",
		"tree19mi",
		"trunk3",
		"sl_rustyrailing",
		"elmtreered",
		"elm_treegrn*",
		"*wire*",
		"kb_ivy*_256",
		"kbtree4_test",
		"cedar*",
		"cedarbare",
		"locustbra",
		"starflower*",
		"starhedge*",
		"hazelbranch",
		"elmdead",
		"weeelm",
		"dead_fuzzy",
		"fuzzyplant256",
		"sm_agave_*",
		"sm_des_bush*",
		"sm_minipalm*",
		"oakleaf*",
		"pinebranch*",
		"pinelo128",
		"spruce*",
		"veg_bush*",
		"veg_leaf*",
	}

	local fixShader = dxCreateShader(theShader, -1, 0, false, "world,object")
	for i, texture in ipairs(textures) do
		engineApplyShaderToWorldTexture(fixShader, texture)
	end

	local fixShaderVehicle = dxCreateShader(theShader, -1, 0, false, "vehicle")
	engineApplyShaderToWorldTexture(fixShaderVehicle, "vehiclesteering128")
	engineApplyShaderToWorldTexture(fixShaderVehicle, "vehicledash32")
end
addEventHandler("onClientResourceStart", resourceRoot, onStart)

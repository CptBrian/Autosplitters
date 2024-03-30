//	Hell Pie https://s.team/a/889910 Released July 21 2022 https://www.speedrun.com/hell_pie
//	ASL originally by ShadowThePast and revived by CptBrian

state("HellPie-Win64-Shipping", "v1.1.4.202207012023"){
//Patch 7, 1/10/2024, Turkish language, other language bug fixes https://store.steampowered.com/news/app/889910/view/3870345512646737653
	bool loadScreen: 0x50B5818, 0xA8;
	int isPaused: 0x4F9CBA8, 0x3C0, 0x8;
}

state("HellPie-Win64-Shipping", "v1.1.4.unknown"){
//Patch 6, 12/21/2022, Christmas outfits https://store.steampowered.com/news/app/889910/view/3639502419957041794
}

state("HellPie-Win64-Shipping", "v1.1.4.unknown"){
//Patch 5, 9/16/2022, Oktoberfest, various minor fixes https://store.steampowered.com/news/app/889910/view/5129059852696370287
}

state("HellPie-Win64-Shipping", "v1.1.3.202209011619"){
//Patch 4, 9/2/2022, cutscene skips, various minor level design fixes (Pointers unchanged) https://store.steampowered.com/news/app/889910/view/3338877706770029149
	bool loadScreen: 0x4FDFC28, 0xA8;
	int isPaused: 0x4EC7E88, 0x3C0, 0x8; //4EC7E88
}

state("HellPie-Win64-Shipping", "v1.1.3.202208041009"){
//Patch 3, 8/4/2022, another unlisted patch
	bool loadScreen: 0x4FDFC28, 0xA8;
	int isPaused: 0x4EC7E88, 0x3C0, 0x8;
}

state("HellPie-Win64-Shipping", "v1.1.2.202208011127-2"){
//Patch 2, 8/3/2022, mini unlisted patch
	bool loadScreen: 0x4FDDAE8, 0xA8;
}

state("HellPie-Win64-Shipping", "v1.1.2.202208011127-1"){
//Patch 1, 8/2/2022, many changes https://store.steampowered.com/news/app/889910/view/3386162256094840645
	bool loadScreen: 0x4FEBBE8, 0xA8;
}

state("HellPie-Win64-Shipping", "v1.1.2.202207181555"){
//Release, 7/21/2022, unpatched
	bool loadScreen: 0x5096078, 0xA8;
}

startup{
	//Settings menu
	settings.Add("settings", true, "Settings");
	settings.CurrentDefaultParent = "settings";
	settings.Add("settings_newFileStart", true, "Auto-start timer upon starting a save file");
}

start{
	//if was on main menu, then starts timer. (Probably starts timer even when loading save
	return (settings["settings_newFileStart"] && old.isPaused == 429 && (current.isPaused == 157 || current.isPaused == 16));
}

init{
	//Hash of the game's exe to determine which version it matches with
	string MD5Hash;
	using (var md5 = System.Security.Cryptography.MD5.Create())
	using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
	MD5Hash = md5.ComputeHash(s).Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + MD5Hash.ToString()); // Prints generated MD5 to see within DebugView
	switch(MD5Hash){
		case "1B57762AAFE50B614F011357F019A0B3": version = "v1.1.4.202207012023"; break; //1/10/2024 Turkish
		case "BC5E8A60D5F0369D76848A98F0D9E1E2": version = "v1.1.3.202209011619"; break; //9/2/2022 Cutscene skips
		case "3F487A324406A8D8EA01C2794B9D1E4C": version = "v1.1.3.202208041009"; break; //8/4/2022 Unlisted mini 2
		case "36241BB60C1FD03414A4861C01D66B61": version = "v1.1.2.202208011127-2"; break; //8/3/2022 Unlisted mini 1
		case "BB43ADD505C76D9B0B56307A9CA529C7": version = "v1.1.2.202208011127-1"; break; //8/2/2022 Big 1st Patch
		case "3516D20141D68EEC29F7E6D64F97618F": version = "v1.1.2.202207181555"; break; //7/21/2022 Release Day
		default: version = "Unknown (new patch?)"; break;
	}
}

isLoading{
	//Pausing the timer on the following menus isn't set up for the following old versions:
	if (version != "v1.1.3.202208011127" && version != "v1.1.2.202208011127-2" && version != "v1.1.2.202208011127-1" && version != "v1.1.2.202207181555"){
	//16=not paused, 17 = collecting ing, 20 = tutorial menu, 21 = crossing off ing, 445-447=esc, 128=map/skill menu, 18=return to chef, any choice dialogue, 429=main menu
	//if you use the default horns ability (tl;dr add 11): 27=not paused, 28=ing collected, 32 = crossing off ing, 456-458=esc, 139=(probably)skill menu
		if (current.isPaused == 429){
			return true;
		}
	}
	return current.loadScreen;
	//original address as an int has a value of 1 during the load logo (not at very end), else 0, and CE access debugger says +98 (aside 99 & 9A)
}

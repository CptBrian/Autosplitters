/*
	Yooka-Replaylee (Released October 9, 2025) https://s.team/a/2448020
	ASL originally by Ansiando & tipdaddy78
*/

state("ReplayleeWin64", "Unknown - Using Latest"){
	byte Loading     : "UnityPlayer.dll", 0x1F1FA38, 0xB4;
	int CollPtrChk   : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x18;
	int Pagies       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x5C;
	int PagiesHT     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x13C;
	int PagiesTT     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x14C;
	int PagiesGGG    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x15C;
	int PagiesMMM    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x16C;
	int PagiesCC     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x17C;
	int PagiesGal    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x18C;
	int CashinoChips : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0xB3C;
	int RexCoins     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x46C;
	int Mollycools   : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x4EC;
	int Skulls       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x10BC;
	int Quills       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x6C;
}
state("ReplayleeWin64", "PC 1.00 Launch"){
	byte Loading     : "UnityPlayer.dll", 0x1F10318, 0xB4;
	int CollPtrChk   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18;
	int Pagies       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x5C;
	int PagiesHT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x13C;
	int PagiesTT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x14C;
	int PagiesGGG    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x15C;
	int PagiesMMM    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x16C;
	int PagiesCC     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x17C;
	int PagiesGal    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18C;
	int CashinoChips : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0xB3C;
	int RexCoins     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x46C;
	int Mollycools   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x4EC;
	int Skulls       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x10BC;
	int Quills       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x6C;
}
state("ReplayleeWin64", "PC 1.00 Day2"){
	byte Loading     : "UnityPlayer.dll", 0x1F10318, 0xB4;
	int CollPtrChk   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18;
	int Pagies       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x5C;
	int PagiesHT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x13C;
	int PagiesTT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x14C;
	int PagiesGGG    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x15C;
	int PagiesMMM    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x16C;
	int PagiesCC     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x17C;
	int PagiesGal    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18C;
	int CashinoChips : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0xB3C;
	int RexCoins     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x46C;
	int Mollycools   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x4EC;
	int Skulls       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x10BC;
	int Quills       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x6C;
}
state("ReplayleeWin64", "PC 1.01 Oct.24 '25"){
	byte Loading     : "UnityPlayer.dll", 0x1F10318, 0xB4;
	int CollPtrChk   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18;
	int Pagies       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x5C;
	int PagiesHT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x13C;
	int PagiesTT     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x14C;
	int PagiesGGG    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x15C;
	int PagiesMMM    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x16C;
	int PagiesCC     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x17C;
	int PagiesGal    : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x18C;
	int CashinoChips : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0xB3C;
	int RexCoins     : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x46C;
	int Mollycools   : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x4EC;
	int Skulls       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x10BC;
	int Quills       : "UnityPlayer.dll", 0x1F1D458, 0xB8, 0x0, 0x78, 0x30, 0x1E0, 0x3D8, 0xA8, 0x78, 0x6C;
}
state("ReplayleeWin64", "PC 1.02 Nov.13 '25"){
	byte Loading     : "UnityPlayer.dll", 0x1F1FA38, 0xB4;
	int CollPtrChk   : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x18;
	int Pagies       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x5C;
	int PagiesHT     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x13C;
	int PagiesTT     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x14C;
	int PagiesGGG    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x15C;
	int PagiesMMM    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x16C;
	int PagiesCC     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x17C;
	int PagiesGal    : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x18C;
	int CashinoChips : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0xB3C;
	int RexCoins     : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x46C;
	int Mollycools   : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x4EC;
	int Skulls       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x10BC;
	int Quills       : "GameAssembly.dll", 0x5B502A8, 0xB8, 0x0, 0x20, 0x18, 0x6C;
}

startup{	//When the script first loads, before game process attaches
	vars.ASLVersion = "info only → Script v1.4 — Nov.13 2025";
	settings.Add(vars.ASLVersion, false);

	vars.FullGameStart = "Auto-Start after load into new run (WIP fixing title screen starts)";
	settings.Add(vars.FullGameStart, true);

	vars.PagieSplits = "Split on # of Total Pagies (Full Game)";
	settings.Add(vars.PagieSplits, false);
	for(int i=1; i<301; i++){	//Creates nested numbered settings for splitting on Pagies
		settings.Add(i.ToString() + " pagies", false, i.ToString() + " pagies", vars.PagieSplits);
	}

	vars.LoadSplits = "Split on # of Total Loads";
	settings.Add(vars.LoadSplits, false);
	for(int i=1; i<51; i++){	//Creates nested numbered settings for splitting on Loads
		settings.Add(i.ToString() + " loads", false, i.ToString() + " loads", vars.LoadSplits);
	}

	vars.ILMode = "IL Mode (Individual Worlds)";
	settings.Add(vars.ILMode, false, vars.ILMode);
		settings.Add("ILModeStart", true, "Auto-Start for ILs", vars.ILMode);
		for(int i=1; i<51; i++){	//Creates nested numbered settings for splitting on Individual World Pagies
			settings.Add(i.ToString() + " IL pagies", false, i.ToString() + " IL pagies", vars.ILMode);
		}
}

init{		//When the game process attaches
	//Identifying different game versions with MD5 checksums on GameAssembly.dll.
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create()){
		using (var s = File.Open(modules.First().FileName.Substring(0, modules.First().FileName.Length-18) //Length=ReplayleeWin64.exe
		+ "GameAssembly.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite)){
			exeMD5HashBytes = md5.ComputeHash(s);
		} 
	}
	vars.MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + vars.MD5Hash.ToString()); //Prints detected MD5 once, seen via DebugView
	
	if(vars.MD5Hash == "86439CB7F8851AE8D077F5F7CC520EAD") version = "PC 1.00 Launch";
	else if(vars.MD5Hash == "B2A8352260D80FD19138502D8F025882") version = "PC 1.00 Day2";
	else if(vars.MD5Hash == "0E4D506901277DB4286C35E9E196CEC6") version = "PC 1.01 Oct.24 '25";
	else if(vars.MD5Hash == "1D5045AA0F7DE43A9E0DF108674B434B") version = "PC 1.02 Nov.13 '25";
	else version = "Unknown - Using Latest";
	/* Command lines to download each game version through the Steam console -- steam://open/console
	1.00 (Oct.9 2025)  == download_depot 2448020 2448021 8203004014523827167
	1.00 (Oct.10 2025) == download_depot 2448020 2448021 8506482617212419140
	1.01 (Oct.24 2025) == download_depot 2448020 2448021 6804137408735764711
	1.02 (Nov.13 2025) == download_depot 2448020 2448021 3728265710394064583
	*/
	vars.accumulativeLoads = 0;
}

onStart{	//When the timer starts
	vars.accumulativeLoads = 0;
}

start{		//Auto-Start conditions
	if(!settings[vars.ILMode] && settings[vars.FullGameStart] && current.Loading == 0 && old.Loading == 2 && current.Pagies == 0 && current.CollPtrChk == 431){
		return true;	//Starts timer after loading (or creating new) into a file with zero pagies. Needs SceneID check to fix title screen starts.
	}
	else if(settings[vars.ILMode] && settings["ILModeStart"] && current.Loading == 0 && old.Loading == 2){
		return true;	//Starts timer when loading finishes (entering world) and IL Mode is enabled
	}
}

exit{		//When the attached game process ends

}

isLoading{	//Timer Pause conditions AKA Load Removal - Must compare against GAME time in LiveSplit
	return current.Loading == 2;
}

split{		//Auto-Split conditions
	if(current.Loading == 2 && old.Loading == 0){       					//If loading starts
		vars.accumulativeLoads++;											//total number of loads increases
		if(settings[vars.accumulativeLoads.ToString() + " loads"]){ 		//if total loads is a selected number
			return true;													//split on load
		}
	}
	else if(!settings[vars.ILMode] && current.Pagies > old.Pagies && settings[current.Pagies.ToString() + " pagies"]){
			return true;	//Split when pagies increase to chosen settings in full game runs
	}
	else if(settings[vars.ILMode]){
		if(current.PagiesTT > old.PagiesTT && settings[current.PagiesTT.ToString() + " IL pagies"]
		|| current.PagiesGGG > old.PagiesGGG && settings[current.PagiesGGG.ToString() + " IL pagies"]
		|| current.PagiesMMM > old.PagiesMMM && settings[current.PagiesMMM.ToString() + " IL pagies"]
		|| current.PagiesCC > old.PagiesCC && settings[current.PagiesCC.ToString() + " IL pagies"]
		|| current.PagiesGal > old.PagiesGal && settings[current.PagiesGal.ToString() + " IL pagies"]){
			return true;	//Split when pagies increase to chosen settings in Individual World IL runs
		}
	}
}

update{
	
}

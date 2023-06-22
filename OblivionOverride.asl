/*
	Oblivion Override (Released in Early Access on June 13, 2023) https://store.steampowered.com/app/1952370
	ASL originally by CptBrian with help from Ero; made primarily for the $10K competition.
	Might update later, but it's a ton of work, and I'm very busy, also Unity pointers are literally Satan, so please help with them if you're capable.
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("Oblivion Override", "Unknown→Default"){ // Fail-safe copy of whichever version is most popular
	int Chapter          : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xAC;
	int Level            : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xB0;
	byte isBuildingScene : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xD3;
	byte isLoadingDone   : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xD4;
	int PlayerHP         : "UnityPlayer.dll", 0x1548DF0, 0x0, 0x10, 0x28, 0x70, 0xF8, 0x20;
	int NephHP           : "UnityPlayer.dll", 0x1548DF0, 0x0, 0x10, 0x28, 0xD8, 0x10, 0x20, 0x60, 0x228, 0xF8, 0xF8, 0x20;
}
state("Oblivion Override", "EA 0.6.2.1242+"){
	int Chapter          : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xAC; // Found within hex.SceneManager
	int Level            : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xB0;
	byte isBuildingScene : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xD3;
	byte isLoadingDone   : "UnityPlayer.dll", 0x15B2D28, 0x128, 0x80, 0x18, 0xD4;
	int PlayerHP         : "UnityPlayer.dll", 0x1548DF0, 0x0, 0x10, 0x28, 0x70, 0xF8, 0x20; // Notice similarities to NephHP
	int NephHP           : "UnityPlayer.dll", 0x1548DF0, 0x0, 0x10, 0x28, 0xD8, 0x10, 0x20, 0x60, 0x228, 0xF8, 0xF8, 0x20; // May always end in 20,F8,F8
}

startup{ // When the script first loads, before process connection
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
	vars.Helper.GameName = "Oblivion Override";

	vars.ASLVersion = "ASL Version 1.1 – June 21, 2023 (purely informational)";
	vars.HubPortalExit = "Start upon exiting Hub portal";
	vars.PortalSplit = "Split upon entering portals to new maps (Bosses & Stages)";
	vars.EndBossSplit = "Split when final boss reaches zero HP";

	settings.Add(vars.ASLVersion, true);
	settings.Add(vars.HubPortalExit, true);
	settings.Add(vars.PortalSplit, true);
	settings.Add(vars.EndBossSplit, true);

	if(timer.CurrentTimingMethod == TimingMethod.RealTime){
		var timingMessage = MessageBox.Show(
			"This game is primarily timed without Loads (LRT),\n"+
			"but you have LiveSplit set to Real Time (RTA).\n"+
			"A Load Remover is available if you use Game Time.\n"+
			"Would you like to switch to Game Time for LRT?",
			"LiveSplit | Oblivion Override",
			MessageBoxButtons.YesNo,MessageBoxIcon.Question
		);
		if(timingMessage == DialogResult.Yes){
			timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}
}

init{ // When the process connects
	// Identifies different game versions using MD5 checksums of the game's Assembly-CSharp.dll (instead of the game executable, for more reliability)
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create()){
		using (var s = File.Open(modules.First().FileName.Substring(0, modules.First().FileName.Length-21) // Removes 21 characters of "Oblivion Override.exe" from the game's file path ending to change which file is checked, entered next:
		+ "Oblivion Override_Data\\Managed\\Assembly-CSharp.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite)){
			exeMD5HashBytes = md5.ComputeHash(s);
		}
	}
	vars.MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + vars.MD5Hash.ToString()); // Prints generated MD5 once to see within DebugView

	if(vars.MD5Hash == "B5B541A1A08DF5FBEA56AF612362A153") version = "EA 0.6.2.1242+"; // v1260
	else if(vars.MD5Hash == "30231F5FBB6F28EE644692FA75CD8645") version = "EA 0.6.2.1242+"; // v1267
	else if(vars.MD5Hash == "Ligma") version = "Steam 1.0";
	else version = "Unknown→Default";

	vars.Helper.TryLoad = (Func<dynamic, bool>)(mono =>{
		var sm = mono["SceneManager", 1];
		var go = mono["GameObj"];
		var ca = mono["CharacterAttr"];

		// vars.Helper["Chapter"] = mono.Make<int>(sm, "ms_instance", "chapterId");
		// vars.Helper["Level"] = mono.Make<int>(sm, "ms_instance", "levelId");
		// vars.Helper["IsLoadingDone"] = mono.Make<bool>(sm, "ms_instance", "_isLoadingDone");

		// vars.Helper["PlayerHP"] = mono.Make<int>(sm, "ms_instance", "gameScene", "player", "_m_attr", "nowHp");
		vars.Helper["FirstMobHP"] = mono.Make<int>(sm, "ms_instance", "gameScene", "mobs", 0x10, 0x20, go["_m_attr"], ca["nowHp"]);

		vars.Helper["Room"] = mono.Make<int>(sm, "ms_instance", "gameScene", "player", "_physics", "_curRoom", "uuid");

		return true;
	});
}

isLoading{
    return current.isLoadingDone == 0;
}

start{
    if(settings[vars.HubPortalExit]){
		return current.Chapter == 1 && current.Level == 1001 && current.isLoadingDone == 1 && old.isLoadingDone == 0;
	}

	return false;
}

split{
	if (settings[vars.PortalSplit] && current.Level > 0 && old.Level > 0 && current.Level < 9999 && current.Level > old.Level){
		return true;
	}
	if (settings[vars.EndBossSplit] && current.Chapter == 3 && current.Level > 3001 && current.NephHP == 0 && old.NephHP > 0 && current.PlayerHP > 0){
		return false; // Disabled until a stable NephHP pointer exists
	}
	if (settings[vars.EndBossSplit] && current.Chapter == 3 && current.Level > 3001 && old.FirstMobHP > 0 && current.FirstMobHP == 0 && current.PlayerHP > 0){
		return true; // Implementation utilizing the ASL Helper
	}

	return false;
}

reset{
	if(settings[vars.HubPortalExit]){ // For when other categories count hub time
		return current.Chapter == 10 && current.Level == 1; // In the Hub
	}

	return false;
}

update{
	// Not yet necessary
}

/*
	Destroy All Humans! 2 - Reprobed (Released Aug.30 2022) https://store.steampowered.com/app/1266700
	ASL originally by Ansiando (AKA CptBrian) - https://www.speedrun.com/dah2r
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("DH2-Win64-Shipping", "6.9 — Sep.15 2026"){ // The executable file was renamed in this update
	bool Loading  : 0xA515388, 0xB0;
	byte BLoading : 0xA13B960, 0x18, 0x2E0;
	// Backup: byte BLoading : 0xA5B8048, 0x20, 0x3B0, 0xA0;
}
state("DH-Win64-Shipping", "1.0.713 — Jun.21 2023"){
	bool Loading  : 0x7112918, 0xA8;
	byte BLoading : 0x7137A28, 0xDA0, 0x390, 0xA0;
}
state("DH-Win64-Shipping", "1.0.386 — Sep.20 2022"){
	bool Loading  : 0x71427A8, 0xA8;
	byte BLoading : 0x7167888, 0xDA0, 0x388, 0xA0;
}

startup{ // When the script first loads, before process connection
	settings.Add("ASLVersion", true, "ASL Version 1.3 — Sep.16 2026");
		settings.SetToolTip("ASLVersion", "This setting is purely informational with no functionality either way");
	settings.Add("ResetGameClose", false, "RESET timer upon game process closing");
	settings.Add("PauseGameClose", false, "PAUSE timer upon game process closing");
	settings.Add("LoadTest", false, "TEST TIMES→ Start upon True Load, Pause outside loads");
	settings.Add("BLoadTest", false, "TEST TIMES→ Start upon Bonus Load, Pause outside loads");

	if(timer.CurrentTimingMethod == TimingMethod.RealTime){
		var timingMessage = MessageBox.Show(
			"This game is primarily timed without Loads (LRT),\n"+
			"but you have LiveSplit set to Real Time (RTA).\n"+
			"A Load Remover is available if you use Game Time.\n"+
			"Would you like to switch to Game Time for LRT?",
			"LiveSplit | Destroy All Humans! 2 - Reprobed",
			MessageBoxButtons.YesNo,MessageBoxIcon.Question
		);
		if(timingMessage == DialogResult.Yes){
			timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}

	vars.timerModel = new TimerModel { CurrentState = timer }; // Required for resetting in the exit{} block
}

init{ // When the process connects
	string MD5Hash;
	using (var md5 = System.Security.Cryptography.MD5.Create())
	using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
	MD5Hash = md5.ComputeHash(s).Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + MD5Hash.ToString()); // Prints generated MD5 to see within DebugView
	switch(MD5Hash){
		case "97365555066C27FEE861003869F3D1CB": version = "6.9 — Sep.15 2026"; break; // https://store.steampowered.com/news/app/1266700/view/713412222387225923 (now running on UE5 instead of UE4)
		case "F6AC64F5CA3CC4B3BA35369226A4BDF5": version = "1.0.713 — Jun.21 2023"; break; // https://store.steampowered.com/news/app/1266700/view/3648526737371224832
		case "F0D87A678439BAE75BEB82AC56B1CF8F": version = "1.0.386 — Sep.20 2022"; break; // https://store.steampowered.com/news/app/1266700/view/5009714462588775984
		default: version = "Unknown"; break; // Uses whichever state block comes first
	}
}

isLoading{
	return (current.Loading || current.BLoading == 1) && !settings["LoadTest"] && !settings["BLoadTest"]
		|| settings["LoadTest"] && !current.Loading
		|| settings["BLoadTest"] && current.BLoading != 1;
}

start{
	return settings["LoadTest"] && current.Loading && !old.Loading
		|| settings["BLoadTest"] && current.BLoading == 1 && old.BLoading != 1;
}

split{
	// Not yet
}

reset{
	// Not yet
}

exit{ // When the game process dies
	if(settings["ResetGameClose"]){
		vars.timerModel.Reset();
	}
	if(settings["PauseGameClose"]){
		timer.IsGameTimePaused = true;
	}
}

update{
	// Not yet necessary
}

/* Finding these Addresses:
	Use 1-Byte scan for Loading, and 4-Byte for BLoading (fewer results). Both addresses never move.
	Loading: Only "1" when the *smaller* loading icon is visible during true definitive loading scenarios.
		CE info for "what accesses this address" = 3 list entries all with offset +98 (A0 on v6.9 which is +8 hex). 1st counts up constantly, 2nd is 1 count at load start, 3rd is 2 count at load end. Can filter down to 15-20 results, then check accesses.
		Pointer result ended up being +10 (hex offset) higher than the access info, which is normal, still a close guess by CE.
		Pointer will find this address immediately while launching the game during the splash screen.
	BLoading: Found at beginning of new save file by reloading 1st checkpoint repeatedly. Reload checkpoint, freeze process when you see loading icon and search for 1 (it remains 1 through full fade-in where you gain control), then scan 0 when you have character control. This can filter down to 1 result.
	0=Playable+Death/MissionFailed, 1=BigLoadIconShown(usually)+(briefly)DismissMissionFailedScreen+More, 2=(sometimes)Cutscene+NEWDialog+DeathRespawnPoster
		CE info for "what access this address" = 1 list entry always counting with offset +A0.
		This pointer may take a lot of filtering. Address is found during 1st load screen on game launch (before epilepsy warning, use freezes).
		The 2-offset ptrs find the address a frame before the 3-offset ptrs, but have a much different final offset (2E0). May still be more valid.
	Set up a hotkey in CE/Cheat Engine for "Pause the selected process" so you have time to scan at the correct times. Spamming this may crash the game.

	Downpatching to older versions (like 1.0.386 here) involves downloading 2 separate manifests/depots:
	-app 1266700 -depot 1266701 -manifest 2948332448179647033 (Put in a new empty folder)
	-app 1266700 -depot 1266702 -manifest 4680887896957793053 (*Properly* place these files within the above folder)
	Launch with DH.exe
*/

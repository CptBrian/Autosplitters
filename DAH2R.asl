/*
	Destroy All Humans! 2 - Reprobed (Released August 30th, 2022) https://store.steampowered.com/app/1266700
	ASL originally by CptBrian - https://www.speedrun.com/dah2r
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("DH-Win64-Shipping", "1.0.713 6-21-2023"){
	bool Loading  : 0x7112918, 0xA8;
	byte BLoading : 0x7137A28, 0xDA0, 0x390, 0xA0;
}
state("DH-Win64-Shipping", "1.0.386 9-20-2022"){
	bool Loading  : 0x71427A8, 0xA8;
	byte BLoading : 0x7167888, 0xDA0, 0x388, 0xA0;
}

startup{ // When the script first loads, before process connection
	settings.Add("ASLVersion", true, "ASL Version 1.2 — March 29, 2024");
		settings.SetToolTip("ASLVersion", "This is a purely informational setting with no function regardless of its state");
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
		case "F6AC64F5CA3CC4B3BA35369226A4BDF5": version = "1.0.713 6-21-2023"; break; // https://store.steampowered.com/news/app/1266700/view/3648526737371224832
		case "F0D87A678439BAE75BEB82AC56B1CF8F": version = "1.0.386 9-20-2022"; break; // https://store.steampowered.com/news/app/1266700/view/5009714462588775984
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
	Loading: Only "1" when the *smaller* loading icon is visible during true definitive loading scenarios. CE Access info = offset +98, 1count per load
		Seems like this pointer ends up actually being +A8 rather than +98, which happens sometimes, still a very close guess by CE.
	BLoading: 0=Playable, 1=BigLoadIconShown(usually)+More, 2=(sometimes)Cutscene+NewDialog+RespawnPosterBlkScreen. CE Access info =  offset +A0, always counting
	Easier to find BLoading through 4-Byte scans instead of 1-Byte as there are much fewer results, but Loading requires 1-Byte.
	Set up a hotkey in CE/Cheat Engine for "Pause the selected process" so you have time to scan at the correct times. Spamming this may crash the game.

	Downpatching to older versions like 1.0.386 involves downloading 2 separate manifests/depots:
	-app 1266700 -depot 1266701 -manifest 2948332448179647033 (Put in a new empty folder)
	-app 1266700 -depot 1266702 -manifest 4680887896957793053 (*Properly* place these files within the above folder)
	Launch with DH.exe
*/

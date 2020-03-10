/*
	Yooka-Laylee and the Impossible Lair (Released October 8, 2019)
	ASL originally by DerKO with many revamps by CptBrian ♥
*/
state("YLILWin64", "Unknown Version"){     //Defaults to Steam 1.03 values
	float XPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte Restart : "UnityPlayer.dll", 0x0146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte playerControl : "mono.dll", 0x002675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
	int Level : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	int Health : "mono.dll", 0x002675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
}
state("YLILWin64", "Steam 1.01"){
	float XPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte Restart : "UnityPlayer.dll", 0x0146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte playerControl : "mono.dll", 0x002675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
	int Level : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	int Health : "mono.dll", 0x002675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
}
state("YLILWin64", "EGS 1.02"){
	float XPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte isRunningTasks : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x20;
	byte isLoading : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x21;
	byte isInteractable : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x23;
	byte Restart : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x258, 0x80, 0x60;
	byte beeBreak : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x2D8, 0x80, 0x0, 0x278, 0x68, 0x30;
	byte playerControl : "mono-2.0-bdwgc.dll", 0x0043ECC0, 0xA8, 0xC78, 0x8, 0x18, 0x58, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x68, 0x28, 0x28, 0x18, 0x28;
	int beeTotal : "mono-2.0-bdwgc.dll", 0x0043ECC0, 0x98, 0x10, 0x728, 0x10, 0x30, 0x0, 0x18, 0x8, 0x70, 0x0, 0x2C;
	int Level : "mono-2.0-bdwgc.dll", 0x0043ECC0, 0xA8, 0x348, 0x10, 0xC8;
	byte LevelLoad : "mono-2.0-bdwgc.dll", 0x0043ECC0, 0xA8, 0x348, 0x10, 0xD0;
	int Health : "mono-2.0-bdwgc.dll", 0x0043ECC0, 0xA8, 0xC78, 0x8, 0x18, 0x58, 0x20, 0x18, 0x158, 0x38;
}
state("YLILWin64", "Steam 1.03"){
	float XPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14; //Coordinates not perfect, but decent. Needs replacement.
	float ZPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte Restart : "UnityPlayer.dll", 0x0146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte playerControl : "mono.dll", 0x002675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
	int Level : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	int Health : "mono.dll", 0x002675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
}
state("YLILWin64", "Demo 1.03"){
	float XPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos : "UnityPlayer.dll", 0x0147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte Restart : "UnityPlayer.dll", 0x0146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte playerControl : "mono.dll", 0x002675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
	int Level : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad : "mono.dll", 0x002675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	int Health : "mono.dll", 0x002675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
}

startup{
	vars.ILRunsMode = "IL Mode: Start on control, Auto-Reset, Split on hive break";
	vars.TutStart = "TUTORIAL Entry Start";
	vars.LairSplits = "LAIR Splits on Entry, Sections, Fights & Ending";
	vars.EntrySplits = "CHAPTER Entry splits (use BEES for exit)";
	vars.BeeSplits = "BEES: Split on all bees (not for IL Mode)";
	vars.TonicSplits = "TONICS: Split on all grabbed OW Tonics (not Catchee)";
	vars.PagieSplits = "PAGIE Entry & Exit splits";
	vars.OWCat = "OVERWORLD Entry Start & adjusted load removal while in control";
	
	settings.Add(vars.ILRunsMode, false);
	settings.Add(vars.TutStart, false);
	settings.Add(vars.LairSplits, false);
	settings.Add("LairSplitFromTut", false, "Split when entering from Tutorial", vars.LairSplits);
	settings.Add("LairDeathSplit", true, "Section 1 Death split", vars.LairSplits);
	settings.Add(vars.EntrySplits, false);
	settings.Add(vars.BeeSplits, false);
	settings.Add(vars.TonicSplits, false);
	settings.Add(vars.PagieSplits, false);
	settings.Add(vars.OWCat, false);
	settings.Add("Technical", true, "Technical");
	settings.Add("Logging", false, "Debug Logging (Log files help solve auto-splitting issues)", "Technical");
	settings.Add("TestDelaysRestart", false, "Test delays: Transitions to Player Control. (Restarts & OW warps)", "Technical");
	settings.Add("TestDelaysBeeBreakToLoad", false, "Test delays: IL Bee Break to Loading", "Technical");
}

init{
	//This code identifies different YookaLayleeIL versions with MD5 checksum on the Assembly-CSharp.dll.
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create())
	{
		using (var s = File.Open(modules.First().FileName.Substring(0, modules.First().FileName.Length-13)
		+ "YLILWin64_Data\\Managed\\Assembly-CSharp.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exeMD5HashBytes = md5.ComputeHash(s);
		} 
	}
	vars.MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + vars.MD5Hash.ToString()); //Prints detected MD5 once to see from DebugView, so I don't need to enable logging to get the MD5.
	
	if(vars.MD5Hash == "E53699BBB90A71D45D9531209B900AAC"){
		version = "Steam 1.01";
	}
	else if(vars.MD5Hash == "D87ABA30D79B660B27A6AAB3994ACCCB"){
		version = "Steam 1.03";
	}
	else if(vars.MD5Hash == "2C94F6C5E858B5D33141EF3715294B39"){
		version = "EGS 1.02"; //EGS Version number 1.0.27910
	}
	else if(vars.MD5Hash == "AA8CB9D44275AF063A760480B08773AB"){
		version = "Demo 1.03";
	}
	else{
		version = "Unknown Version";
	}
	
	//Logging variables
	vars.logFileName = "YLIL.log";
	vars.maxFileSize = 4000000;
	vars.timerSecondOLD = -1;
	vars.timerSecond = 0;
	vars.timerMinuteOLD = -1;
	vars.timerMinute = 0;
	
	// If the logging setting is checked, this function logs game info to a log file.
	// If the file reaches maz size, it will delete the oldest entries.
	vars.Log = (Action<string>)( myString => {
		
		if(settings["Logging"]){
			
			vars.logwriter = File.AppendText(vars.logFileName);
			
			print(myString);
			vars.logwriter.WriteLine(myString);
			
			vars.logwriter.Close();
			
			if((new FileInfo(vars.logFileName)).Length > vars.maxFileSize){
				string[] lines = File.ReadAllLines(vars.logFileName);
				File.WriteAllLines(vars.logFileName, lines.Skip(lines.Length/8).ToArray());
			}
		}
		else{
			if(File.Exists(vars.logFileName)){
				File.Delete(vars.logFileName);
			}
		}
	});
	
	// If a second/minute has passed, log important values
	// Keep in mind, if a pointer returns an invalid address, LiveSplit reads the value as 0
	vars.PeriodicLogging = (Action)( () => {
		vars.timerMinute = timer.CurrentTime.RealTime.Value.Minutes;
	
		if(vars.timerMinute != vars.timerMinuteOLD){
			vars.timerMinuteOLD = vars.timerMinute;
			
			vars.Log("\n" + "TimeOfDay: " + DateTime.Now.ToString() + "\n" +
			"Version: " + version.ToString() + "\n" +
			"MD5Hash: " + vars.MD5Hash.ToString() + "\n" +
			"ILRunsMode:" + settings[vars.ILRunsMode].ToString() + "\n" +
			"TutStart:" + settings[vars.TutStart].ToString() + "\n" +
			"LairSplits:" + settings[vars.LairSplits].ToString() + "\n" +
			"LairSplitFromTut:" + settings["LairSplitFromTut"].ToString() + "\n" +
			"LairDeathSplit:" + settings["LairDeathSplit"].ToString() + "\n" +
			"EntrySplits:" + settings[vars.EntrySplits].ToString() + "\n" +
			"BeeSplits:" + settings[vars.BeeSplits].ToString() + "\n" +
			"TonicSplits:" + settings[vars.TonicSplits].ToString() + "\n" +
			"PagieSplits:" + settings[vars.PagieSplits].ToString() + "\n" +
			"OWCat:" + settings[vars.OWCat].ToString() + "\n" +
			"TestDelaysRestart:" + settings["TestDelaysRestart"].ToString() + "\n" +
			"TestDelaysBeeBreakToLoad:" + settings["TestDelaysBeeBreakToLoad"].ToString() + "\n");
		}
	
		vars.timerSecond = timer.CurrentTime.RealTime.Value.Seconds;
	
		if(vars.timerSecond != vars.timerSecondOLD){
			vars.timerSecondOLD = vars.timerSecond;
			
			vars.Log("RealTime: " + timer.CurrentTime.RealTime.Value.ToString(@"hh\:mm\:ss") + "\n" +
			"GameTime: " + timer.CurrentTime.GameTime.Value.ToString(@"hh\:mm\:ss") + "\n" +
			"XPos: " + current.XPos + "\n" +
			"YPos: " + current.YPos + "\n" +
			"ZPos: " + current.ZPos + "\n" +
			"isRunningTasks: " + current.isRunningTasks + "\n" +
			"isLoading: " + current.isLoading + "\n" +
			"isInteractable: " + current.isInteractable + "\n" +
			"Restart: " + current.Restart + "\n" +
			"beeBreak: " + current.beeBreak + "\n" +
			"playerControl: " + current.playerControl + "\n" +
			"owTonics: " + current.owTonics + "\n" +
			"beeTotal: " + current.beeTotal + "\n" +
			"Level: " + current.Level + "\n" +
			"LevelLoad: " + current.LevelLoad + "\n" +
			"Health: " + current.Health + "\n");
		}
	});
}

start{
	if(settings[vars.ILRunsMode] && current.Restart == 1 && current.playerControl == 1 && old.playerControl == 0 && current.Level != 10 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("-Starting-\n");
		return true;						        //Start timer for normal ILs
	}
	else if(settings["TestDelaysRestart"] && current.Restart == 0 && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer with old IL timing to test transition delay times
	}
	else if(settings["TestDelaysBeeBreakToLoad"] && current.beeBreak == 1 && old.beeBreak == 2 && !settings["TestDelaysRestart"]){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer on bee break to test how long it takes to hit the load
	}
	else if(settings[vars.OWCat] && current.Level == 10 && current.LevelLoad == 0 && old.LevelLoad == 1){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer upon loading into the the Overworld
	}
	else if(settings[vars.TutStart] && current.Level == 4 && current.LevelLoad == 0 && old.LevelLoad == 1){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer upon loading into the Tutorial
	}
}

reset{
	if(current.Restart == 0 && old.Restart == 1 && (settings[vars.ILRunsMode] || settings["TestDelaysRestart"])){
		vars.Log("-Resetting-\n");
		return true;						        //Resets the timer on level restart when using IL Mode setting or testing restart delays
	}
	else if(current.isLoading == 1 && current.Level > 10 && settings[vars.ILRunsMode] && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("-Resetting-\n");
		return true;						        //Resets the timer when loading into chapters or pagies from overworld
	}
	else if(current.beeBreak == 2 && settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("-Resetting-\n");
		return true;						        //Resets the timer when hive isn't broken when using the delay test setting
	}
}

isLoading{
	if(current.isLoading == 1 && current.isInteractable == 0 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && !settings[vars.TutStart]){
		return true;						        //Standard timer pause when loading
	}
	else if(current.isLoading == 1 && current.isInteractable == 0 && current.Level != 4 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && settings[vars.TutStart]){
		return true;						        //Standard load removal used with Tutorial auto-start
	}
	else if(current.isRunningTasks == 1 && version == "EGS 1.02" && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && !settings[vars.TutStart]){
		return true;						        //Loading fix to bring EGS load removal in line with Steam1.03, excluded in OWT, but addressed below
	}
	else if(current.isRunningTasks == 1 && version == "EGS 1.02" && current.Level != 4 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && settings[vars.TutStart]){
		return true;						        //Tut Start Loading fix to bring EGS load removal in line with Steam1.03, excluded in OWT, but addressed below
	}
	//May need these EGS fixes for Steam 1.01 as well.
	else if(settings[vars.OWCat] && current.isLoading == 1 && current.isInteractable == 0 && current.playerControl == 0 && current.Level != 4){
		return true;						        //OW Categories adjusted load removal
	}
	else if(settings[vars.OWCat] && current.isRunningTasks == 1 && current.isInteractable == 0 && current.playerControl == 0 && current.Level != 4 && version == "EGS 1.02"){
		return true;						        //Fix for the start of EGS OWT pausing a few seconds, which will still happen if Control pointer fails
	}
	else if(settings["TestDelaysRestart"] && current.Restart == 1 && current.playerControl == 1){
		return true;						        //Pauses timer when you gain control with the restart delay test setting
	}
	else if(settings["TestDelaysBeeBreakToLoad"] && current.beeBreak == 1 && current.isLoading == 1){ //Pauses timer when you hit a load after the 2D beeBreak sequence with the delay test setting
		return true;						        //Pauses the timer
	}
	else{
		return false; //Required addition or the timer never un-pauses after meeting a condition above one time
	}
	/* alternative to stop OW Category start load removal while in control
				if (timer.CurrentTime.RealTime < TimeSpan.FromSeconds(7) && settings[vars.OWCat])
				{
					return;
				}
	*/
}

split{
	vars.PeriodicLogging();
	
	if(current.beeBreak == 1 && old.beeBreak == 2 && settings[vars.ILRunsMode]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on beeBreak for IL Mode (setting)
	}
	else if(current.Level > 4 && current.Level < 31 && old.Level == 10 && current.Level != 10 && settings[vars.EntrySplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Chapter entry
	}
	else if(current.Level > 30 && current.Level < 47 && old.Level == 10 && settings[vars.PagieSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Pagie entry
	}
	else if(old.Level > 30 && old.Level < 47 && current.Level == 10 && settings[vars.PagieSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Pagie exit
	}
	else if(current.Level > 5 && current.Level < 9 && current.isLoading == 1 && old.isLoading == 0 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split between Lair sections and from Tutorial, no endgame
	}
	else if(current.Level == 5 && old.Level == 10 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Lair entry from Overworld
	}
	else if(current.Level == 5 && old.Level == 4 && settings["LairSplitFromTut"]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Lair entry from Tutorial
	}
	else if(current.Level == 10 && old.Level == 5 && current.Restart == 1 && settings[vars.LairSplits] && settings["LairDeathSplit"]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on Lair section 1 death
	}
	else if(current.Level == 5 && current.XPos == -133 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split after Lair fight 1
	}
	else if(current.Level == 6 && current.XPos == -96 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split after Lair fight 2
	}
	else if(current.Level == 7 && current.XPos == -144 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split after Lair fight 3
	}
	else if(current.Level == 8 && current.XPos < -3 && current.XPos > -7 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split after Lair fight 4
	}
	else if(current.Level == 10 && old.Level == 8 && current.Restart == 1 && current.Health > 0 && settings[vars.LairSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Final endgame split, prevents splitting from manually exiting and dying
	}
	else if((current.beeTotal - old.beeTotal) == 1 && settings[vars.BeeSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split when in-game beeTotal value increases by 1 (setting)
	}
	else if((current.owTonics - old.owTonics) == 1 && settings[vars.TonicSplits]){
		vars.Log("-Splitting-\n");
		return true;						        //Split on all grabbed Overworld Tonics (setting)
	}
}

update{
	
}


// Performance Tool:

// var watch = System.Diagnostics.Stopwatch.StartNew();
// Code to measure
// watch.Stop();
// var elapsedMs = watch.ElapsedMilliseconds;
// print(elapsedMs.ToString());

/*
Level IDs:
Title Screen = 3
Tutorial = 4
Lair S1 = 5
Lair S2 = 6
Lair S3 = 7
Lair S4 = 8
Overworld = 10
Ch.1 = 27
Ch.2 = 20
Ch.3 = 14
Ch.4 = 25
Ch.5 = 17
Ch.6 = 28
Ch.7 = 19
Ch.8 = 30
Ch.9 = 29
Ch.10 = 18
Ch.11 = 22
Ch.12 = 15
Ch.13 = 16
Ch.14 = 24
Ch.15 = 23
Ch.16 = 26
Ch.17 = 12
Ch.18 = 21
Ch.19 = 13
Ch.20 = 11
~~~ Chapter ID range: 11-30
Pagie down-right of ch.20(4 Metal ropes, 1 green snail) = 33
Pagie up-right of that^^(Honey crab snowballs) = 45
Pagie flagpole logs(5 Toads) = 31
Pagie north of flagpoles(11 Spiders, 1 toad) = 35
Pagie in a cagie 14-2(Underwater saws) = 43
Pagie desert red pipe steps(3 Flying meanyions) = 41
Pagie behind Trowzer's house(3 Toads, 2 saws) = 44
Pagie near toxic cloud wind boxes(Helicopter rope missiles) = 46
Pagie on dock(Caged snail) = 37
Pagie on sandcastle(Bomberman) = 40
Pagie above Hivory Towers gate(Space invaders) = 32
Pagie at toxic waterfall near ch.6(Choggers) = 39
Pagie in middle of 4 fans(Meanyon control) = 38
Pagie below Doc ch.3(4 Meanyons) = 42
Pagie after ch.4(Meanyon boxes) = 34
~~~ Pagie ID range: 31-46 (36 missing)
Missing IDs(gaps): 0,1,2 (probably don't exist), 9 (between Lair and Overworld), 36 (middle of Pagie IDs)
*/

/*
	Yooka-Laylee and the Impossible Lair (Released October 8, 2019)
	ASL originally by DerKO with some revamps by CptBrian ♥
*/
state("YLILWin64", "Unknown Version"){     //Defaults to Steam V2 values
	float XPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA0;
	float YPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA4;
	float ZPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA8;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte restartTrigger : "UnityPlayer.dll", 0x014498E0, 0x2C8, 0x118, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte interactableBook : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA4;
	byte playerControl : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA6;
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int capBHP : "UnityPlayer.dll", 0x0144DD68, 0x170, 0x10, 0x30, 0x190, 0x1F0, 0x118, 0x78, 0x34;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xF50, 0x0, 0x0, 0x20, 0x38, 0xB0, 0x40, 0x28, 0xA8, 0x18, 0x2C;
}
state("YLILWin64", "Steam V1"){
	float XPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA0;
	float YPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA4;
	float ZPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA8;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte restartTrigger : "mono.dll", 0x00264A68, 0x50, 0xF40, 0xB0, 0x5C0;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte interactableBook : "UnityPlayer.dll", 0x014A4550, 0x3C0, 0x2B8, 0x10, 0x3A8, 0x2F0, 0x10, 0xC6; //Needs replacement from true player control
	byte playerControl : "UnityPlayer.dll", 0x014A4550, 0x3C0, 0x2B8, 0x10, 0x3A8, 0x2F0, 0x10, 0xC8; //Needs replacement for true player control
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28; //Unconfirmed if working
	int capBHP : "UnityPlayer.dll", 0x0144DD68, 0x170, 0x10, 0x30, 0x190, 0x1F0, 0x118, 0x78, 0x34; //Unconfirmed if working
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xF50, 0x0, 0x0, 0x20, 0x38, 0xB0, 0x40, 0x28, 0xA8, 0x18, 0x2C; //Unconfirmed if working
}
state("YLILWin64", "Steam V2"){
	float XPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA0;
	float YPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA4;
	float ZPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA8;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte restartTrigger : "UnityPlayer.dll", 0x014498E0, 0x2C8, 0x118, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte interactableBook : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA4; //Not perfect.
	byte playerControl : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA6; //Not perfect.
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	int capBHP : "UnityPlayer.dll", 0x0144DD68, 0x170, 0x10, 0x30, 0x190, 0x1F0, 0x118, 0x78, 0x34;
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xF50, 0x0, 0x0, 0x20, 0x38, 0xB0, 0x40, 0x28, 0xA8, 0x18, 0x2C;
}
state("YLILWin64", "EGS V1"){
	float XPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA0;
	float YPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA4;
	float ZPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA8;
	byte isRunningTasks : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x20;
	byte isLoading : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x21;
	byte isInteractable : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x23;
	byte restartTrigger : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x258, 0x80, 0x60;
	byte beeBreak : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x2D8, 0x80, 0x0, 0x278, 0x68, 0x30;
	byte interactableBook : "UnityPlayer.dll", 0x013B4AE0, 0x0, 0xC0, 0x28, 0x30, 0x30, 0x138, 0x28, 0x28, 0xA4; //Fails sometimes
	byte playerControl : "UnityPlayer.dll", 0x013B4AE0, 0x0, 0xC0, 0x28, 0x30, 0x30, 0x138, 0x28, 0x28, 0xA6; //Fails sometimes
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x68, 0x28, 0x28, 0x18, 0x28;
	int capBHP : "UnityPlayer.dll", 0x0144DD68, 0x170, 0x10, 0x30, 0x190, 0x1F0, 0x118, 0x78, 0x34; //Unconfirmed if working
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xF50, 0x0, 0x0, 0x20, 0x38, 0xB0, 0x40, 0x28, 0xA8, 0x18, 0x2C; //Unconfirmed if working
}
state("YLILWin64", "Demo V1"){
	float XPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA0;
	float YPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA4;
	float ZPos : "UnityPlayer.dll", 0x0144DD68, 0x128, 0x18, 0x10, 0xA8;
	byte isRunningTasks : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x9A;
	byte restartTrigger : "UnityPlayer.dll", 0x01449870, 0x5D8, 0x430, 0x11E8, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte interactableBook : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA4; //Needs replacement from true player control
	byte playerControl : "UnityPlayer.dll", 0x013B4AE0, 0x2A8, 0xD0, 0x70, 0x358, 0xB0, 0x188, 0xA6; //Needs replacement for true player control
	int owTonics : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28; //Unconfirmed if working
	int capBHP : "UnityPlayer.dll", 0x0144DD68, 0x170, 0x10, 0x30, 0x190, 0x1F0, 0x118, 0x78, 0x34; //Unconfirmed if working
	int beeTotal : "mono.dll", 0x00268180, 0x50, 0xF50, 0x0, 0x0, 0x20, 0x38, 0xB0, 0x40, 0x28, 0xA8, 0x18, 0x2C; //Unconfirmed if working
}

startup{
	vars.ILRunsMode = "IL Mode: Start on control, Auto-Reset, and Splitting on hive break";
	vars.beeSplits = "Split on all bees (not for IL Mode) - Only on Steam V2 for now!";
	vars.OWTonics = "Overworld Tonics: Start on OW Control, Split on OW Tonics (59 splits!)";
	vars.Logging = "Debug Logging (Log files help solve auto-splitting issues)";
	vars.TestDelaysRestart = "Test delay times: Transitions to Player Control. (Restarts & OW warps)";
	vars.TestDelaysBeeBreakToLoad = "Test delay times: IL Bee Break to Loading";
	
	settings.Add(vars.ILRunsMode, false);
	settings.Add(vars.beeSplits, false);
	settings.Add(vars.OWTonics, false);
	settings.Add(vars.Logging, false);
	settings.Add(vars.TestDelaysRestart, false);
	settings.Add(vars.TestDelaysBeeBreakToLoad, false);
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
		version = "Steam V1";
	}
	else if(vars.MD5Hash == "D87ABA30D79B660B27A6AAB3994ACCCB"){
		version = "Steam V2";
	}
	else if(vars.MD5Hash == "2C94F6C5E858B5D33141EF3715294B39"){
		version = "EGS V1";
	}
	else if(vars.MD5Hash == "AA8CB9D44275AF063A760480B08773AB"){
		version = "Demo V1";
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
		
		if(settings[vars.Logging]){
			
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
			"TestDelaysRestart:" + settings[vars.TestDelaysRestart].ToString() + "\n");
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
			"restartTrigger: " + current.restartTrigger + "\n" +
			"beeBreak: " + current.beeBreak + "\n" +
			"interactableBook: " + current.interactableBook + "\n" +
			"playerControl: " + current.playerControl + "\n" +
			"owTonics: " + current.owTonics + "\n" +
			"capBHP: " + current.capBHP + "\n");
		}
	});
}

start{
	if(current.restartTrigger == 1 && current.playerControl == 1 && old.playerControl == 0 && current.interactableBook != 1 && timer.CurrentPhase != TimerPhase.Running && settings[vars.ILRunsMode] && !settings[vars.TestDelaysRestart] && !settings[vars.TestDelaysBeeBreakToLoad]){
		vars.Log("-Starting-\n");
		return true;						        //Start timer for normal ILs
	}
	else if(current.restartTrigger == 0 && timer.CurrentPhase != TimerPhase.Running && settings[vars.TestDelaysRestart] && !settings[vars.TestDelaysBeeBreakToLoad]){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer with old timing to test transition delay times
	}
	else if(current.beeBreak == 1 && old.beeBreak == 2 && timer.CurrentPhase != TimerPhase.Running && settings[vars.TestDelaysBeeBreakToLoad] && !settings[vars.TestDelaysRestart]){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer on bee break to test how long it takes to hit the load
	}
	else if(current.owTonics == 0 && current.ZPos < -50 && old.ZPos == -10 && timer.CurrentPhase != TimerPhase.Running && settings[vars.OWTonics]){
		vars.Log("-Starting-\n");
		return true;						        //Start the timer upon gaining player control for OW Tonic runs
	}
}

reset{
	if(current.restartTrigger == 0 && old.restartTrigger == 1 && settings[vars.ILRunsMode]
	|| current.restartTrigger == 0 && old.restartTrigger == 1 && settings[vars.TestDelaysRestart]
	|| current.isLoading == 1 && timer.CurrentPhase == TimerPhase.Running && settings[vars.ILRunsMode] && !settings[vars.TestDelaysBeeBreakToLoad]
	|| current.beeBreak == 2 && timer.CurrentPhase == TimerPhase.Running && settings[vars.TestDelaysBeeBreakToLoad]){
		vars.Log("-Resetting-\n");
		return true;						        //Resets the timer
	}
}

isLoading{
	if(current.isLoading == 1 && current.isInteractable == 0 && !settings[vars.TestDelaysRestart] && !settings[vars.TestDelaysBeeBreakToLoad] && !settings[vars.OWTonics] //Standard timer pause when loading
	|| current.isRunningTasks == 1 && version == "EGS V1" && !settings[vars.TestDelaysRestart] && !settings[vars.TestDelaysBeeBreakToLoad] && !settings[vars.OWTonics] //Loading fix to bring EGS load removal in line with SteamV2, excluded in OWT, but addressed below
	//May need these EGS fixes for Steam V1 as well.
	|| settings[vars.OWTonics] && current.isLoading == 1 && current.isInteractable == 0 && current.playerControl == 0 //OWTonics standard load removal
	|| settings[vars.OWTonics] && current.isRunningTasks == 1 && current.isInteractable == 0 && current.playerControl == 0 && version == "EGS V1" //Fix for the start of EGS OWT pausing a few seconds, which will keep happening if Control pointer fails
	|| settings[vars.TestDelaysRestart] && current.restartTrigger == 1 && current.playerControl == 1 //Pauses timer when you gain control with the restart delay test setting
	|| settings[vars.TestDelaysBeeBreakToLoad] && current.beeBreak == 1 && current.isLoading == 1){ //Pauses timer when you hit a load after the 2D beeBreak sequence with the delay test setting
		return true;						        //Pauses the timer
	}
	else{
		return false;
	}
}

split{
	vars.PeriodicLogging();
	
	if(current.beeBreak == 1 && old.beeBreak == 2 && settings[vars.ILRunsMode]){
		vars.Log("-Splitting-\n");
		return true;
	}
	else if((current.beeTotal - old.beeTotal) == 1 && settings[vars.beeSplits]){
		vars.Log("-Splitting-\n");
		return true;
	}
	else if((current.owTonics - old.owTonics) == 1 && settings[vars.OWTonics]){
		vars.Log("-Splitting-\n");
		return true;
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

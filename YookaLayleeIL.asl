/*
	Yooka-Laylee and the Impossible Lair (Released October 8, 2019)
	ASL originally by DerKO with some revamps by CptBrian ♥
*/
state("YLILWin64", "Unknown Version"){     //Defaults to Steam V2 values
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte restartTrigger : "UnityPlayer.dll", 0x014498E0, 0x2C8, 0x118, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte altPlayerControl : "UnityPlayer.dll", 0x0147A240, 0x4E8, 0x378, 0x40, 0x220, 0x50, 0xC8;
}
state("YLILWin64", "Steam V1"){
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte restartTrigger : "mono.dll", 0x00264A68, 0x50, 0xF40, 0xB0, 0x5C0;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte altPlayerControl : "UnityPlayer.dll", 0x014A4550, 0x3C0, 0x2B8, 0x10, 0x3A8, 0x2F0, 0x10, 0xC8;
}
state("YLILWin64", "Steam V2"){
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte restartTrigger : "UnityPlayer.dll", 0x014498E0, 0x2C8, 0x118, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte altPlayerControl : "UnityPlayer.dll", 0x0147A240, 0x4E8, 0x378, 0x40, 0x220, 0x50, 0xC8;
}
state("YLILWin64", "EGS V1"){
	byte isLoading : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x330, 0x398, 0x21;
	byte restartTrigger : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x258, 0x80, 0x60;
	byte beeBreak : "UnityPlayer.dll", 0x0144DBD8, 0x8, 0x2D8, 0x80, 0x0, 0x278, 0x68, 0x30;
	byte altPlayerControl : "UnityPlayer.dll", 0x014A4550, 0x450, 0xB90, 0x3A8, 0xE8, 0x90, 0x330, 0xC8;
}
state("YLILWin64", "Demo V1"){
	byte isLoading : "mono.dll", 0x002675E0, 0x48, 0xE68, 0x98, 0x98;
	byte restartTrigger : "UnityPlayer.dll", 0x0146D540, 0x398, 0x78, 0x28, 0x60;
	byte beeBreak : "mono.dll", 0x002675E0, 0x40, 0xE30, 0x90;
	byte altPlayerControl : "UnityPlayer.dll", 0x013B4AE0, 0x0, 0xE0, 0xB28, 0x2D0, 0x98, 0x98, 0x5A8, 0xC8;
}

startup{
	vars.Logging = "Debug Logging (Log files help solve auto-splitting issues)";
	vars.SplitOnBeeBreak = "Split on freeing the bee at the end of a chapter (For IL runs only. Other actions in the game will also trigger this.)";
	vars.ILRunsMode = "Reset and start the timer upon restarting a level (For IL runs only. Other actions in the game will also trigger this.)";
	vars.ILRunsModeNewTiming = "Use new timing for IL runs. (Start on player control instead of restart)";
	vars.TestRestartTimeDif = "Test timing differences from restart level to player control. (Works for OW warps too, except IL)";
	
	settings.Add(vars.Logging, false);
	settings.Add(vars.SplitOnBeeBreak, false);
	settings.Add(vars.ILRunsMode, false);
	settings.Add(vars.ILRunsModeNewTiming, false);
	settings.Add(vars.TestRestartTimeDif, false);
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
	
    vars.loading = false;				//Current status of loading or not loading
	
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
			
			vars.Log("TimeOfDay: " + DateTime.Now.ToString() + "\n" +
			"Version: " + version.ToString() + "\n" +
			"MD5Hash: " + vars.MD5Hash.ToString() + "\n");
		}
		
		vars.timerSecond = timer.CurrentTime.RealTime.Value.Seconds;
	
		if(vars.timerSecond != vars.timerSecondOLD){
			vars.timerSecondOLD = vars.timerSecond;
			
			vars.Log("RealTime: "+timer.CurrentTime.RealTime.Value.ToString(@"hh\:mm\:ss") + "\n" +
			"GameTime: "+timer.CurrentTime.GameTime.Value.ToString(@"hh\:mm\:ss") + "\n" +
			"current.isLoading: " + current.isLoading.ToString() + "\n" +
			"loading: " + vars.loading + "\n");
		}
	});
}

start{
	// "loading" should have a value of ### as soon as you play file, then have a value of ### as it loads
	if(current.restartTrigger == 0 && settings[vars.ILRunsMode] && !settings[vars.ILRunsModeNewTiming]
		|| current.restartTrigger == 0 && settings[vars.ILRunsMode] && settings[vars.ILRunsModeNewTiming] && settings[vars.TestRestartTimeDif]){
		return true;						        //start the timer
	}
	else if(current.restartTrigger == 1 && current.altPlayerControl == 0 && old.altPlayerControl == 1 && timer.CurrentPhase != TimerPhase.Running && settings[vars.ILRunsMode] && settings[vars.ILRunsModeNewTiming] && !settings[vars.TestRestartTimeDif]){
		return true;						        //start the timer
	}
}

reset{
	if(current.restartTrigger == 0 && old.restartTrigger == 1 && settings[vars.ILRunsMode]){
		return true;						        //reset the timer
	}
	else if(current.isLoading == 1 && settings[vars.ILRunsModeNewTiming] && timer.CurrentPhase == TimerPhase.Running){
		return true;
	}
}

isLoading{
	if(settings[vars.TestRestartTimeDif] && current.restartTrigger == 1 && current.altPlayerControl == 0 && old.altPlayerControl == 0
		|| settings[vars.TestRestartTimeDif] && current.restartTrigger == 1 && current.altPlayerControl == 0 && old.altPlayerControl == 1){
		return true;
	}
	else{
		return current.isLoading == 1;                  //stops timer when loading is true
	}
}

split{
	vars.PeriodicLogging();
	
	if(current.beeBreak == 1 && old.beeBreak == 2 && settings[vars.SplitOnBeeBreak]){
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

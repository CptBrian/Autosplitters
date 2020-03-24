/*
	Yooka-Laylee (Released April 11, 2017)
	ASL originally by DerKO & 0Seren with some revamps by CptBrian ♥
*/

state("YookaLaylee64", "NEW"){
	byte Loading : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x66;
	byte LoadingFade : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x65; //Not sure what this byte really is, not consistent for fades.
	byte LoadingBase : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x64;
	float CameraX: "AkSoundEngine.dll", 0x198778; //X coord of the camera
	float CameraY: "AkSoundEngine.dll", 0x19877C; //Height of the camera - Note: AkSoundEngine.dll isn't very reliable and these can fail.
	float CameraZ: "AkSoundEngine.dll", 0x198780; //Z coord of the camera
	int spendablePagies: "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x20, 0x10, 0x2C; //Number of spendable pagies
	byte Lag : "mono.dll", 0x002645E0, 0x40, 0x1018, 0x0, 0x18, 0x40, 0x18, 0x78, 0x68, 0x70, 0x69;
}

state("YookaLaylee64", "OLD"){
	byte Loading : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x66;
	byte LoadingFade : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x65; //Not sure what this byte really is, not consistent for fades.
	byte LoadingBase : "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x64;
	float CameraX: "AkSoundEngine.dll", 0x1614D8; //X coord of the camera
	float CameraY: "AkSoundEngine.dll", 0x1614DC; //Height of the camera
	float CameraZ: "AkSoundEngine.dll", 0x1614E0; //Z coord of the camera
	int spendablePagies: "YookaLaylee64.exe", 0x012C5790, 0x8, 0x10, 0x28, 0x18, 0x20, 0x20, 0x10, 0x2C; //Number of spendable pagies
	byte Lag : "mono.dll", 0x002645E0, 0x40, 0x1018, 0x0, 0x18, 0x40, 0x18, 0x78, 0x68, 0x70, 0x69;
}

startup{
	vars.LoggingSettingName = "Debug Logging (Log files help solve auto-splitting issues)";
	vars.LagRemoval = "Remove Lag Times from switching Display Quality (in-game)";
	vars.LagTimer = "Test how long Lags take. Manual reset for now.";
	vars.SecondPhaseSplitSettingName = "Split at start of 2nd phase of CapB fight";
	vars.ThirdPhaseSplitSettingName = "Split at start of 3rd phase of CapB fight";
	vars.MissilesSplitSettingName = "Split at start of Missiles of CapB fight";
	vars.PagiesSplitSettingName = "Split on X amount of total Pagies (Possibly Broken)";
	vars.LoadsSplitSettingName = "Split on X amount of total Loads (Starting File Load excluded)";
	
	settings.Add(vars.LoggingSettingName, false);
	settings.Add(vars.LagRemoval, true);
	settings.Add(vars.LagTimer, false);
	settings.Add(vars.SecondPhaseSplitSettingName, false);
	settings.Add(vars.ThirdPhaseSplitSettingName, false);
	settings.Add(vars.MissilesSplitSettingName, false);
	
	//This code creates all the settings for splitting on collecting pagies
	settings.Add(vars.PagiesSplitSettingName, false);
	for(int i=1; i<146; i++){
		settings.Add(i.ToString() + " pagies", false, i.ToString() + " pagies", vars.PagiesSplitSettingName);
	}
	
	//This code creates all the settings for splitting on loads
	settings.Add(vars.LoadsSplitSettingName, false);
	for(int i=1; i<51; i++){
		settings.Add(i.ToString() + " loads", false, i.ToString() + " loads", vars.LoadsSplitSettingName);
	}

}

init{
	//This code identifies different YookaLaylee versions with MD5 checksum on the Assembly-CSharp.dll. Copied and pasted from Zment's Defy Gravity asl script. Theres probably a simpler way but its already made so meh.
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create())
	{
		using (var s = File.Open(modules.First().FileName.Substring(0, modules.First().FileName.Length-17) + "YookaLaylee64_Data\\Managed\\Assembly-CSharp.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exeMD5HashBytes = md5.ComputeHash(s); 
		} 
	}
	vars.MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	//print(MD5Hash.ToString()); //DEBUG
	
	if(vars.MD5Hash == "CB12AA291173D934E2462D6C4537DF6C"){
		version = "OLD";
	}
	else if(vars.MD5Hash == "DCAC57D031A6D5C98DD9CA1ECDF84B41"){
		version = "NEW";
	}
	else{
		version = "NEW";
	}
	
	vars.accumulativeLoads = 0;		//Total number of loads in the run so far
	
	vars.accumulativePagies = 0;		//Total number of pagies collected in the run so far
	vars.accumulativePagiesOLD = 0;		//
	
	vars.accumulativePhase3CapBDialogues = 0;
	vars.accumulativePhase3CapBDialoguesOLD = 0;
	
	vars.logFileName = "YL.log";
	
	vars.timerSecondOLD = -1;
	vars.timerSecond = 0;
	vars.timerMinuteOLD = -1;
	vars.timerMinute = 0;
	
	vars.Log = (Action<string>)( myString => {
		
		if(settings[vars.LoggingSettingName]){
			
			vars.logwriter = File.AppendText(vars.logFileName);
			
			print(myString);
			vars.logwriter.WriteLine(myString);
			
			vars.logwriter.Close();
			
			if((new FileInfo(vars.logFileName)).Length > 4000000){
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
			"current.Loading: " + current.Loading.ToString() + "\n" +
			"current.LoadingFade: " + current.LoadingFade.ToString() + "\n" +
			"current.LoadingBase: " + current.LoadingBase.ToString() + "\n" +
			"current.CameraX: " + current.CameraX.ToString() + "\n" +
			"current.CameraY: " + current.CameraY.ToString() + "\n" +
			"current.CameraZ: " + current.CameraZ.ToString() + "\n" +
			"accumulativePhase3CapBDialogues: " + vars.accumulativePhase3CapBDialogues + "\n" +
			"current.Lag: " + current.Lag.ToString() + "\n");
		}
	});
}

start{
	if(current.Loading == 1 && current.LoadingBase == 0){	//This happens when the file is selected
	
		vars.accumulativeLoads = 0; 		//resets total loads and pagies after starting new run
		vars.accumulativePagies = 0;		
		vars.accumulativePagiesOLD = 0;		
		vars.accumulativePhase3CapBDialogues = 0;
		vars.accumulativePhase3CapBDialoguesOLD = 0;
		
		return true;						//start the timer
	}
	else if(settings[vars.LagTimer] && current.Lag == 1){
		return true;
	}
}

shutdown{
	
}

isLoading{
	if(settings[vars.LagRemoval] && !settings[vars.LagTimer]){
		return current.Loading == 1 && current.LoadingBase == 1 || current.Lag == 1;		//stops timer when loading is true or when game is lagging
	}
	else if(settings[vars.LagTimer]){
		return current.Lag == 0;
	}
	else{
		return current.Loading == 1 && current.LoadingBase == 1;							//stops timer when loading is true
	}
}

split{
	
	vars.PeriodicLogging();
	
	//Splits on the start of phase 2
	if(!((old.CameraX >= 4.69 && old.CameraX <= 4.71) && (old.CameraY >= 9.79 && old.CameraY <= 9.81) && (old.CameraZ >= -2.31 && old.CameraZ <= -2.29))
		&& ((current.CameraX >= 4.69 && current.CameraX <= 4.71) && (current.CameraY >= 9.79 && current.CameraY <= 9.81) && (current.CameraZ >= -2.31 && current.CameraZ <= -2.29))){
		vars.accumulativePhase3CapBDialogues = 0;
		vars.accumulativePhase3CapBDialoguesOLD = 0;
		if(settings[vars.SecondPhaseSplitSettingName]){
			vars.Log("\n"+"Split on start the of Phase 2" + "\n" + 
				"current.CameraX: " + current.CameraX.ToString() + "\n" +
				"current.CameraY: " + current.CameraY.ToString() + "\n" +
				"current.CameraZ: " + current.CameraZ.ToString() + "\n" +
				"old.CameraX: " + old.CameraX.ToString() + "\n" +
				"old.CameraY: " + old.CameraY.ToString() + "\n" +
				"old.CameraZ: " + old.CameraZ.ToString()+ "\n");
			return true;
		}
	}
	
	//Splits on the start of phase 3
	if(!((old.CameraX >= 13.30 && old.CameraX <= 13.32) && (old.CameraY >= 12.68 && old.CameraY <= 12.70) && (old.CameraZ >= -3.47 && old.CameraZ <= -3.45))
		&& ((current.CameraX >= 13.30 && current.CameraX <= 13.32) && (current.CameraY >= 12.68 && current.CameraY <= 12.70) && (current.CameraZ >= -3.47 && current.CameraZ <= -3.45))){
		if(settings[vars.ThirdPhaseSplitSettingName]){
			vars.Log("\n"+"Split on start the of Phase 3" + "\n" + 
				"current.CameraX: " + current.CameraX.ToString() + "\n" +
				"current.CameraY: " + current.CameraY.ToString() + "\n" +
				"current.CameraZ: " + current.CameraZ.ToString() + "\n" +
				"old.CameraX: " + old.CameraX.ToString() + "\n" +
				"old.CameraY: " + old.CameraY.ToString() + "\n" +
				"old.CameraZ: " + old.CameraZ.ToString() + "\n");
			return true;
		}
	}
	
	
	//Splits on the start of Missiles
	if(!((old.CameraX >= 31.71 && old.CameraX <= 31.73) && (old.CameraY >= 20.30 && old.CameraY <= 21.20) && (old.CameraZ >= 48.32 && old.CameraZ <= 48.34))
		&& ((current.CameraX >= 31.71 && current.CameraX <= 31.73) && (current.CameraY >= 20.30 && current.CameraY <= 21.20) && (current.CameraZ >= 48.32 && current.CameraZ <= 48.34))){
			
		vars.accumulativePhase3CapBDialogues++;
			
		vars.Log("current.CameraX: " + current.CameraX.ToString() + "\n" +
			"current.CameraY: " + current.CameraY.ToString() + "\n" +
			"current.CameraZ: " + current.CameraZ.ToString() + "\n" +
			"old.CameraX: " + old.CameraX.ToString() + "\n" +
			"old.CameraY: " + old.CameraY.ToString() + "\n" +
			"old.CameraZ: " + old.CameraZ.ToString() + "\n" +
			"New accumulativePhase3CapBDialogues: " + vars.accumulativePhase3CapBDialogues.ToString()); //DEBUG
		
		if(settings[vars.MissilesSplitSettingName]){
			if((vars.accumulativePhase3CapBDialogues == 4) && (vars.accumulativePhase3CapBDialoguesOLD == 3)){
				vars.accumulativePhase3CapBDialoguesOLD = vars.accumulativePhase3CapBDialogues;
				vars.Log("\n"+"Split on start the of missiles");
				return true;
			}
		}
		vars.accumulativePhase3CapBDialoguesOLD = vars.accumulativePhase3CapBDialogues;
	}
	
	//Splits on last hit of Capital B. The Camera goes to this specific height and XZ "disk" on the last hit. It is hard to accidently trigger.
	float XZMagnitude = (float)Math.Sqrt(Math.Pow(current.CameraX, 2) + Math.Pow(current.CameraZ, 2));
	if((current.CameraY >= 17.09999 && current.CameraY <= 17.10001) && !(old.CameraY >= 17.09999 && old.CameraY <= 17.10001)){  //If the camera height is really close to 17.01 
		if(XZMagnitude >= 30 && XZMagnitude <= 42.95){																			//and the radius of the camera is close to 42.85
			vars.Log("\n"+"Split on final hit" + "\n" + 
				"current.CameraX: " + current.CameraX.ToString() + "\n" +
				"current.CameraY: " + current.CameraY.ToString() + "\n" +
				"current.CameraZ: " + current.CameraZ.ToString() + "\n" +
				"old.CameraX: " + old.CameraX.ToString() + "\n" +
				"old.CameraY: " + old.CameraY.ToString() + "\n" +
				"old.CameraZ: " + old.CameraZ.ToString() + "\n" +
				"XZMagnitude: " + XZMagnitude.ToString() + "\n");
			return true;																										//split 
		}
	}
	
	//Split on Pagie
	if(vars.accumulativePagies > vars.accumulativePagiesOLD){				//If pagie collected
		vars.accumulativePagiesOLD = vars.accumulativePagies;				
		if(settings[vars.accumulativePagies.ToString() + " pagies"]){		//If total pagies is a selected number
			return true;													//split
		}
	}
	
	//Split on Load
	if(current.Loading == 1 && old.Loading == 0){       					//If the start of load
		vars.accumulativeLoads++;											//total number of loads increases
		if(settings[vars.accumulativeLoads.ToString() + " loads"]){ 		//if total loads is a selected number
			return true;													//split
		}
	}
	
	//Split on start of Quiz Not really needed as most players split on load anyway which is already precise
	/*if(!((old.CameraX >= 0.30 && old.CameraX <= 0.34) && (old.CameraY >= 7.0 && old.CameraY <= 7.25) && (old.CameraZ >= -1.0 && old.CameraZ <= -0.83))
		 && ((current.CameraX >= 0.30 && current.CameraX <= 0.34) && (current.CameraY >= 7.0 && current.CameraY <= 7.25) && (current.CameraZ >= -1.0 && current.CameraZ <= -0.83))){
		 vars.Log("\n" + "Quiz Split" + "\n"+
				 "current.CameraX: " + current.CameraX.ToString() + "\n" +
				 "current.CameraY: " + current.CameraY.ToString() + "\n" +
				 "current.CameraZ: " + current.CameraZ.ToString() + "\n" +
				 "old.CameraX: " + old.CameraX.ToString() + "\n" +
				 "old.CameraY: " + old.CameraY.ToString() + "\n" +
				 "old.CameraZ: " + old.CameraZ.ToString() + "\n");
		 return true;
	 }*/
}

update{	
	if(current.spendablePagies == old.spendablePagies+1){	       //If pagie is collected, increment the number of pagies collected
		vars.accumulativePagies = vars.accumulativePagies + 1;
	}
}

// var watch = System.Diagnostics.Stopwatch.StartNew();
// Code to measure
// watch.Stop();
// var elapsedMs = watch.ElapsedMilliseconds;
// print(elapsedMs.ToString());

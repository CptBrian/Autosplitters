/*
Grapple Dog (Released February 10, 2022)
ASL originally by Slask with overhauals by CptBrian
*/

state("Grapple Dog", "Unknown Game Version"){ //Copy of addresses from whichever the most common or latest version is (Steam 1.0)
	int Play : 0x4CCD54, 0x2C, 0x50, 0x3C, 0x20, 0x64, 0x4;
	int Cont : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4;
}
state("Grapple Dog", "Steam 1.0"){ //Process Name
	int Play : 0x4CCD54, 0x2C, 0x50, 0x3C, 0x20, 0x64, 0x4; //Set upon entering stages 1-1, 1-2, 1-3, 1-5, that's weird
	int Cont : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4; //The continue button appearing
}

startup{
	vars.ASLVersion = "ASL Version 1.1 - Feb 16, 2022";
	vars.StartOptions = "Auto-Start Options";
	vars.SplitOptions = "Auto-Split Options";
	
	settings.Add(vars.ASLVersion, false);
	settings.Add(vars.StartOptions, true, vars.StartOptions);
		settings.Add("Stage1Start", true, "Start upon entering 1st stage (needs work)", vars.StartOptions);
		settings.Add("StartOption2", false, "Placeholder Auto-Start option #2", vars.StartOptions);
	settings.Add(vars.SplitOptions, true, vars.SplitOptions);
		settings.Add("ContinueSplit", true, "Split when Continue appears in results", vars.SplitOptions);
		settings.Add("SplitOption2", false, "Placeholder Auto-Split option #2", vars.SplitOptions);
}

init{
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString()); //Lets DebugView show me the ModuleMemorySize of the game executable (Backup to MD5)

	byte[] exeMD5HashBytes = new byte[0];
	using(var md5 = System.Security.Cryptography.MD5.Create()){
		using(var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite)){
			exeMD5HashBytes = md5.ComputeHash(s); 
		} 
	}
	var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("Game's MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable

	if(MD5Hash == "CB1A728B742A5433A630720FCC34A3E9") version = "Steam 1.0";
	else if(MD5Hash == "PatchPrep") version = "Steam 1.1";
	else version = "Unknown Game Version";
}

update{

}

isLoading{ //Make sure to compare against GAME time in LiveSplit, or this won't work!

}

start{
	if(settings["Stage1Start"] && old.Play != 0x3FF00000 && current.Play == 0x3FF00000){
		return true;
	}
	//else if(2nd auto-start condition here){
	//	return true;
	//}
	else{
		return false;
	}
}

split{
	if(settings["ContinueSplit"] && old.Cont != 0x3FF00000 && current.Cont == 0x3FF00000){
		return true; //Split every time Continue appears
	}
	//else if(2nd auto-split condition here){
	//	return true;
	//}
	else{
		return false;
	}
}

reset{

}
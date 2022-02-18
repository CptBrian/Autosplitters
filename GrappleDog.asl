/*
Grapple Dog (Released February 10, 2022)
ASL originally by Slask with overhauals by CptBrian
*/

state("Grapple Dog", "Unknown, Trying Latest"){ //Copy of addresses from whichever the most common or latest version is (Steam 1.0)
	int Continue : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4;
	double Health : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xD0;
	double Stage : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x150, 0x1A0;
	byte Transition : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0xAF0, 0xC, 0x40;
	byte Bell : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x990, 0xC, 0x40;
}
state("Grapple Dog", "Steam 1.0.1"){ //Process Name
	int Continue : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4; //The continue button appearing
	double Health : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xD0; //Potentially useful in some circumstances
	double Stage : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x150, 0x1A0; //ID doesn't change when exiting a level to the overworld
	byte Transition : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0xAF0, 0xC, 0x40; //White screen transitions/loads
	byte Bell : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x990, 0xC, 0x40; //Bell Rings (counts up with each hit, resets at results)
}

startup{
	vars.ASLVersion = "ASL Version 1.3 - Feb 17, 2022";
	vars.StartOptions = "Auto-Start Options";
	vars.SplitOptions = "Auto-Split Options";
	vars.LoadRemoval = "Pause during white transitions / Loads (rule undecided)";
	
	settings.Add(vars.ASLVersion, false);
	settings.Add(vars.StartOptions, true, vars.StartOptions);
		settings.Add("TransitionStart", true, "Start upon any initiated transitions (Play Stage)", vars.StartOptions);
	settings.Add(vars.SplitOptions, true, vars.SplitOptions);
		settings.Add("ContinueSplit", true, "Split when Continue appears in results", vars.SplitOptions);
		settings.Add("BellSplit", false, "Split upon hitting bells", vars.SplitOptions);
	settings.Add(vars.LoadRemoval, false);
}

init{
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString()); //Lets DebugView show me the ModuleMemorySize of the game executable (Backup for MD5)

	byte[] exeMD5HashBytes = new byte[0];
	using(var md5 = System.Security.Cryptography.MD5.Create()){
		using(var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite)){
			exeMD5HashBytes = md5.ComputeHash(s); 
		} 
	}
	var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("Game's MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable

	if(MD5Hash == "CB1A728B742A5433A630720FCC34A3E9") version = "Steam 1.0.1";
	else if(MD5Hash == "PatchPrep") version = "Steam 1.1";
	else version = "Unknown, Trying Latest";
}

update{

}

isLoading{ //Make sure to compare against GAME time in LiveSplit, or this won't work!
	return settings[vars.LoadRemoval] && current.Transition == 1;
}

start{
	if(settings["TransitionStart"] && old.Transition == 0 && current.Transition == 1){
		return true;
	}
	//else if{more here}
	else{
		return false;
	}
}

split{
	if(settings["ContinueSplit"] && old.Continue != 0x3FF00000 && current.Continue == 0x3FF00000){
		return true; //Split every time Continue appears
	}
	else if(settings["BellSplit"] && old.Bell != 0 && current.Bell > 0 && current.Bell < 5){
		return true;
	}
	else{
		return false;
	}
}

reset{

}

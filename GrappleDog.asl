/*
Grapple Dog (Released February 10, 2022)
ASL originally by Slask with overhauals by CptBrian, load fix by Snuggles
*/

state("Grapple Dog", "Unknown, Trying Latest"){ //Copy of addresses from whichever the most common or latest version is (Steam 1.0.1)
	int Continue : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4;
	int RexCannon : 0x43DE48, 0xAD0, 0xC, 0x24, 0x10, 0x594, 0x4;
	double Health : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xD0;
	double Control : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xA0;
	double Stage : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x150, 0x1A0;
	byte Transition : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0xAF0, 0xC, 0x40;
	byte LoadFreeze : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x4DC, 0xC, 0x40;
	byte Bell : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x990, 0xC, 0x40;
}
state("Grapple Dog", "Steam 1.0.1"){ //Process Name
	int Continue : 0x43DE48, 0xC98, 0xC, 0x144, 0x24, 0x10, 0x204, 0x4; //The continue button appearing
	int RexCannon : 0x43DE48, 0xAD0, 0xC, 0x24, 0x10, 0x594, 0x4; //if this one isn't stable, change it to 0x6EF220, 0x128, 0xEC4, 0x20, 0x24, 0x10, 0x594, 0x4;
	double Health : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xD0; //Potentially useful in some circumstances
	double Control : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x84, 0xA0; //IL Start timing won't work when restarting stage (must exit), but apparently a better address doesn't exist >:(
	double Stage : "Grapple Dog.exe", 0x6FCF38, 0x30, 0x150, 0x1A0; //ID doesn't change when exiting a level to the overworld
	byte Transition : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0xAF0, 0xC, 0x40; //White screen transitions/loads
	byte LoadFreeze : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x4DC, 0xC, 0x40; //Likely true loads, when loads/transitions freeze
	byte Bell : "Grapple Dog.exe", 0x4DCCEC, 0x0, 0x990, 0xC, 0x40; //Bell Rings (counts up with each hit, resets at results)
}

startup{
	vars.ASLVersion = "ASL Version 2.0 - Mar 1, 2022";
	vars.StartOptions = "Auto-Start Options";
	vars.SplitOptions = "Auto-Split Options";
	vars.LoadRemoval = "Load Removal v3 (compare against GAME time to see)";
	vars.LoadTester = "Test Loading durations (auto-negates other settings)";
	
	settings.Add(vars.ASLVersion, false);
	settings.Add("ILMode", false, "IL Mode (auto-negates other settings)");
		settings.Add("ControlInfo", false, "Must Exit between attempts for now (annoying)", "ILMode");
	settings.Add(vars.StartOptions, true, vars.StartOptions);
		settings.Add("TransitionStart", true, "Start upon any initiated transitions (Play Stage)", vars.StartOptions);
	settings.Add(vars.SplitOptions, true, vars.SplitOptions);
		settings.Add("ContinueSplit", true, "Split when Continue appears in results", vars.SplitOptions);
		settings.Add("BellSplit", false, "Split upon hitting bells", vars.SplitOptions);
		settings.Add("NewStageSplit", false, "Split upon entering a different stage (not 1-1)", vars.SplitOptions);
		settings.Add("RexCannonSplit", false, "Split upon landing in the red cannon before REX boss", vars.SplitOptions);
	settings.Add(vars.LoadRemoval, true);
	settings.Add(vars.LoadTester, false);
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
	if(settings[vars.LoadRemoval] && current.LoadFreeze == 1 && !settings[vars.LoadTester] && current.Transition == 1){
		return true; //Pause timer when loading
	}
	else if(settings[vars.LoadTester] && current.Transition == 0){
		return true; //Pause timer when NOT loading, to test the duration of loads
	}
	else{
		return false;
	}
}

start{
	if(settings["TransitionStart"] && old.Transition == 0 && current.Transition == 1 && !settings[vars.LoadTester] && !settings["ILMode"]){
		return true; //Start timer upon any initiated transitions (Play Stage)
	}
	else if(settings["ILMode"] && old.Control == 0 && current.Control == 1 && !settings[vars.LoadTester]){
		return true; //Start timer upon gaining control (currently global control instead of specifically player control, which doesn't appear to exist...)
	}
	else if(settings[vars.LoadTester] && old.Transition == 0 && current.Transition == 1){
		return true; //Start timer upon an initiated load to test load duration (I know these are *currently* the same, but keep them separate)
	}
	else{
		return false;
	}
}

split{

	if ((settings["RexCannonSplit"] || settings["ILMode"]) && old.RexCannon == 0x0 && current.RexCannon == 0x3FF00000 && !settings[vars.LoadTester]){
		return true;
	}
	else if(settings["ContinueSplit"] && old.Continue != 0x3FF00000 && current.Continue == 0x3FF00000 && !settings[vars.LoadTester] && !settings["ILMode"]){
		return true; //Split every time Continue appears
	}
	else if((settings["BellSplit"] || settings["ILMode"]) && old.Bell == 0 && current.Bell > 0 && current.Bell < 5 && !settings[vars.LoadTester]){
		return true; //Split upon hitting a bell (fail-safe included for multiple hits at the same time)
	}
	else if(settings["NewStageSplit"] && old.Stage != current.Stage && current.Stage > 1 && !settings[vars.LoadTester] && !settings["ILMode"]){
		return true; //Split upon entering a different stage (excluding 1-1)
	}
	else{
		return false;
	}
}

reset{
	if (settings["ILMode"] && old.Transition == 0 && current.Transition == 1 && !settings[vars.LoadTester]){
		return true; //Resets timer upon any transition when IL Mode is active
	}
	else{
		return false;
	}
}

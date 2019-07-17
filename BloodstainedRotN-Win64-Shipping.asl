/*
Bloodstained: Ritual of the Night
Load Remover v1.4 by CptBrian (PC only)
Autosplitter v0.2 - Not yet implemented(WIP)
This ASL is compatible with RotN versions 1.03(Steam), 1.05(GOG), Oldest GOG(FitGirl RePack)
[LiveSplit] Run as administrator, or this can't read RotN's memory. This can be done by default through Properties -> Compatibility.
[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter (don't need to do this if you're using this file through split editor)
[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file (^^^)
[LiveSplit] Remember to save your Layout/Splits!
*/

state("BloodstainedRotN-Win64-Shipping", "GOG Oldest")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x848; //offsets: +1000 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x140, 0x30;
	uint GameInactive : "BloodstainedRotN-Win64-Shipping.exe", 0x06DA1F90, 0x268, 0x28, 0x28, 0x68;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x830;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x208;
	uint CurrentRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x258;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.05")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x848; //offsets: -27970 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x140, 0x30;
	uint GameInactive : "BloodstainedRotN-Win64-Shipping.exe", 0x06D79620, 0x268, 0x28, 0x28, 0x68;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x830;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x208;
	uint CurrentRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x258;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.03")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x140, 0x30;
	uint GameInactive : "BloodstainedRotN-Win64-Shipping.exe", 0x06DA0F90, 0x268, 0x28, 0x28, 0x68;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x830;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x208;
	uint CurrentRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x258;
}

startup {
	settings.Add("Pause during general loading", true);
	settings.Add("Pause during Save File loading", true);
	settings.Add("Pause while Saving", true);
	settings.Add("Pause on Press Any Key events (indecisive ban)", false);
	settings.Add("Pause while game is inactive (banned in runs)", false);
	settings.Add("Pause during Bloodstained logo screen(unavailable)", false); //Not yet implemented
	settings.Add("Split on any boss death(unavailable)", false); //Not yet implemented
}

init
{
	//print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString());
	//Lets DebugView show me the ModuleMemorySize of the game executable, which may be useless because they can be the same between versions.
	
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create())
	{
		using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exeMD5HashBytes = md5.ComputeHash(s); 
		} 
	}
	var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable, which is actually useful.
	
	if(MD5Hash == "EC7E5B6FD907C3BC7BA3B5257F30B32E"){
		version = "Steam 1.03";
	}
	else if(MD5Hash == "E9C3AB688872DE80DBA91934AED9EC7F"){
		version = "GOG Oldest";
	}
	else if(MD5Hash == "0B9685B2C8056D9E841C254AAB94212E"){
		version = "GOG 1.05";
	}
	else{
		version = "Steam 1.03"; //Whatever most common version is
	}
}
 
isLoading
{
	//Original: return current.Loading >= 1 && current.Loading <= 3 && current.GameInactive == 0 || current.LoadingFile == 1 || current.LoadingFile == 2 || current.Saving == 1 || current.Saving == 2;
	//These flags just count up/down by 1, which is why the Loading flag(and potentially others) can very rarely go up to 2 during odd stacked triggers, but they always end up at 0.
	if (settings["Pause during general loading"] && (current.Loading >= 1 && current.Loading <= 3 && current.GameInactive == 0)){
		return true;
	}
	else if (settings["Pause during Save File loading"] && (current.LoadingFile == 1 || current.LoadingFile == 2)){
		return true;
	}
	else if (settings["Pause while Saving"] && (current.Saving == 1 || current.Saving == 2)){
		return true;
	}
	else if (settings["Pause on Press Any Key events (indecisive ban)"] && current.PressAnyKey == 1){
		return true;
	}
	else if (settings["Pause while game is inactive (banned in runs)"] && current.GameInactive == 1){
		return true;
	}
	else{
		return false;
	}
}

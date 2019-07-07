/*
Bloodstained: Ritual of the Night
Load Remover v1.0 by CptBrian (PC only)
Autosplitting not yet implemented(WIP)
This ASL is compatible with RotN versions 1.03(Steam), 1.05(GOG), Oldest GOG(FitGirl)
[LiveSplit] Run as administrator, or this can't read RotN's memory. This can be done by default through Properties -> Compatibility.
[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter (don't need to do this if you're using this file through split editor)
[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file (^^^)
[LiveSplit] Remember to save your Layout/Splits!
*/

state("BloodstainedRotN-Win64-Shipping", "GOGOldest")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x848; //offsets: +1000 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x140, 0x30;
	//The following are not currently in use, but are potentially useful:
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x208;
}
state("BloodstainedRotN-Win64-Shipping", "GOG1.05")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x848; //offsets: -27970 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x140, 0x30;
	//The following are not currently in use, but are potentially useful:
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x208;
}
state("BloodstainedRotN-Win64-Shipping", "Steam1.03")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x858;
	uint Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x140, 0x30;
	//The following are not currently in use, but are potentially useful:
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x208;
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
		version = "Steam1.03";
	}
	else if(MD5Hash == "E9C3AB688872DE80DBA91934AED9EC7F"){
		version = "GOGOldest";
	}
	else if(MD5Hash == "0B9685B2C8056D9E841C254AAB94212E"){
		version = "GOG1.05";
	}
	else{
		version = "Steam1.03";
	}
}
 
isLoading
{
	return current.Loading == 1 || current.Loading == 2 || current.LoadingFile == 1 || current.Saving == 1;
}

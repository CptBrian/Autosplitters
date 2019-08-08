/*
Bloodstained: Ritual of the Night - ASL primarily by CptBrian with help from: DarkTechnomancer & hitachihex
Load Remover v1.9 (PC only)
Autosplitter v0.5 - Not yet implemented(WIP when this goes live)
This ASL is compatible with RotN versions: Steam 1.02,3,4, GOG 1.03,4,5,6, & Cracked Steam 1.02
[LiveSplit] Run as administrator, or this can't read RotN's memory. This can be done by default through Properties -> Compatibility.
[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter (don't need to do this if you're using this file through split editor)
[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file (^^^)
[LiveSplit] Remember to save your Layout/Splits!
*/

state("BloodstainedRotN-Win64-Shipping", "UNDETECTED - Contact us!") //Copy of addresses from whatever the most common version is
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.02 Cracked")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x848; //uworld ptr is +1000 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.04") //Exactly the same as GOG 1.03
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x848; //uworld ptr is -309F0 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.05")
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x848; //uworld ptr is -27970 hex from Steam1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.03") //Exactly the same as Steam 1.02(official/uncracked)
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.04") //uworld ptr is +18510 hex from Steam1.03
{
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x85C;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2f688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F818, 0x0, 0x928, 0x238;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.06") //uworld ptr is +??? hex from Steam1.03
{

}

startup
{
	settings.Add("Autosplitter unavailable. Top priority after this goes live.", false);
	settings.Add("Pause during general gameplay loading", true);
	settings.Add("Pause during Save File Loading", true);
	settings.Add("Pause while Saving", true);
	settings.Add("Pause during RotN Circle Logo screen", true); //New implementation from DarkTechnomancer
	settings.Add("Pause on Press-Any-Key events (BANNED in runs)", false);
	settings.Add("End splits on final hit(unavailable)", false);
	settings.Add("Split on any boss death(unavailable)", false);
}

init
{
	var LogoIgnoreFlag = false;
	
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString()); //Lets DebugView show me the ModuleMemorySize of the game executable
	
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create())
	{
		using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exeMD5HashBytes = md5.ComputeHash(s); 
		} 
	}
	var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable
	
	if(MD5Hash == "EC7E5B6FD907C3BC7BA3B5257F30B32E"){
		version = "Steam 1.03";
	}
	else if(MD5Hash == "E9C3AB688872DE80DBA91934AED9EC7F"){
		version = "Steam 1.02 Cracked";
	}
	else if(MD5Hash == "0B9685B2C8056D9E841C254AAB94212E"){
		version = "GOG 1.05";
	}
	else if(MD5Hash == "F4500E29DB5AE2964D2009CE766D7603"){
		version = "GOG 1.04";
	}
	else if(MD5Hash == "A8A64C6A4C0682F7C486C29EBB56F77E"){
		version = "Steam 1.04";
	}
	else{
		version = "UNDETECTED - Contact us!";
	}
}

update
{
	if (old.GameMode == 0 && current.GameMode != 0){
		vars.LogoIgnoreFlag = true;
	}
	else if (current.RoomData != 0){
		vars.LogoIgnoreFlag = false;
	}
}
 
isLoading
{
	//Some flags just count up/down by 1, which is why the (old)Loading flag(and potentially others) can very rarely go up to 2 during odd stacked triggers, but they'll return to 0.
	if (settings["Pause during general gameplay loading"] && current.RDLoading == 0 && current.RoomData != 0){
		return true;
	}
	else if (settings["Pause during Save File Loading"] && (current.LoadingFile == 1 || current.FileCreateLoad == 1)){
		return true;
	}
	else if (settings["Pause while Saving"] && current.Saving == 1){
		return true;
	}
	else if (settings["Pause during RotN Circle Logo screen"] && current.RoomData == 0 && current.GameMode != 0 && !vars.LogoIgnoreFlag){
		return true;
	}
	else if (settings["Pause on Press-Any-Key events (BANNED in runs)"] && current.PressAnyKey == 1){
		return true;
	}
	else{
		return false;
	}
}

start
{
	return (current.GameMode == 6 && current.Room == 708 && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0)
	|| (current.GameMode == 1 && current.Room == 708 && old.DialogueShop == 1 && current.DialogueShop == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0)
	|| (current.GameMode == 2 && current.RoomData != 0 && old.FileCreateLoad == 1 && current.FileCreateLoad == 0 && current.Character == 0)
	;
}

reset
{
	return (timer.CurrentPhase == TimerPhase.Running && (current.GameMode == 6 || current.GameMode == 1) && current.Room == 708 && current.DialogueShop == 1 && current.IntroEvents == 0 && current.Character == 0)
	|| (timer.CurrentPhase == TimerPhase.Running && current.GameMode == 2 && old.RoomData == 0 && current.RoomData != 0 && current.FileCreateLoad == 1 && current.Character == 0)
	;
}

/*split
{
	if(){
		return true;
	}
	return false;
}*/

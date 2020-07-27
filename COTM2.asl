/*
Bloodstained: Curse of the Moon 2 autosplitter by CptBrian
This ASL is compatible with COTM2 versions 1.2.2, ?.?.?
  [LiveSplit] Run as administrator, or else this can't read COTM2's memory. This can be done by default through Properties -> Compatibility.
  [LiveSplit] Ignore the following 2 steps if you're using LiveSplit's integrated Activate button to use this ASL.
  [LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter
  [LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file
*/

state("game", "1.2.2"){
	byte Music : "game.exe", 0x00764DB8, 0x8, 0x270;
	byte Character : "game.exe", 0x9F62BC, 0x1A0;
	float PlayerX : "game.exe", 0x9F62BC, 0x1B4;
	float PlayerY : "game.exe", 0x9F62BC, 0x1B8;
	float CameraX : "game.exe", 0x702DB0, 0x24, 0x1A8, 0x104, 0x28;
	float CameraY : "game.exe", 0x702DB0, 0x24, 0x1A8, 0x104, 0x2C;
	byte Health : "game.exe", 0x702960, 0x58, 0x50, 0x510;
	float BossHP : "game.exe", 0x702960, 0x20, 0x78, 0x224, 0x2A0, 0x70; //All except 8e1p1, very stable
	ushort CharAnim : "game.exe", 0x9F62BC, 0x8, 0x20, 0x0, 0x104, 0x144, 0x0, 0x1BE;
	byte BRProgress : "game.exe", 0x483660, 0xF0; //Placeholder
	byte PlayerControl : "game.exe", 0x765108;
	byte Pause : "game.exe", 0x702960, 0x14, 0x1C, 0x20, 0x3C;
	byte RoomRespawnState : "game.exe", 0x9F62BC, 0x510;
}
state("game", "1.3.1"){ //Not released yet
	//Big ol' dicks
}

startup{
	vars.ASLVersion = "ASL Version 1.0 - July 26, 2020";
	vars.BossKillSplits = "Split on Final Hit for Bosses 1-7 (Ep1+2)";
	vars.MusicStageSplits = "Split when Music starts for the next stage (Ep1+2, need 8 splits)";
	vars.TitleScreenReset = "Reset on Title Screen (only mid-run)";
	
	settings.Add(vars.ASLVersion, false);
	settings.Add("WebsiteInfo", false, "Click the 'Website' button for more info!", vars.ASLVersion);
	settings.Add("ScriptInfo", false, "Ep1+2 READY! Ep3+4 start BUT DON'T SPLIT! No BR yet.", vars.ASLVersion);
	settings.Add("ScriptInfo2", false, "THIS WILL PROBABLY BREAK ON JULY 30TH'S UPDATE", vars.ASLVersion);
	settings.Add(vars.BossKillSplits, true);
	settings.Add(vars.MusicStageSplits, false);
	settings.Add(vars.TitleScreenReset, false);
}

init{
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString());
	//Lets DebugView show me the ModuleMemorySize of the game executable, which is useless because they're the same between versions.
	
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
	
	if(MD5Hash == "23BFAFE274C9518FB8AF5D8B40DD50E7"){
		version = "1.2.2";
	}
	else if(MD5Hash == "E1E439BD3FE89DE97BE08B15505837E2"){		
		version = "1.3.1";
	}
	else{
		version = "1.2.2"; //Most common or latest version
	}
}

start{
	if((current.Music==1 || current.Music==32) && old.PlayerControl==3 && current.PlayerControl<2 && current.CameraX==2808 && current.CameraY==3240){
		return true; //Autostart for Ep1,2,3
	}
	else if(current.Music==35 && old.PlayerControl==3 && current.PlayerControl<2 && current.CameraX==1944 && current.CameraY==360 && current.Pause==0){
		return true; //Autostart for Ep4
	}
	else{
		return false;
	}
}

reset{
	if(settings[vars.TitleScreenReset] && current.Music==20){
		return true; //Reset when Title Screen music plays (Always starts before you can mash through it)
	}
	/*
	else if((current.Music==1 || current.Music==32) && current.PlayerControl==3 && current.CameraX==2808 && current.CameraY==3240){
		return true; //Reset at the start of Stage 1 before you gain control - Disabled this because it will conflict with any run that comes back to Stage 1 after run has started.
	}
	*/
	else{
		return false;
	}
}

split{
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==11880 && current.CameraY==2520){
		return true; //Split on final hit for Boss 1
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==20088 && current.CameraY==600){
		return true; //Split on final hit for Boss 2
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX>1470 && current.CameraX<4110 && current.CameraY==360){
		return true; //Split on final hit for Boss 3
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX>9270 && current.CameraX<9300 && current.CameraY>2500 && current.CameraY<2550 && vars.BossPhase1Killed){
		return true; //Split on final hit for Boss 4
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==9288 && current.CameraY==360){
		return true; //Split on final hit for Boss 5 WIP
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==8424 && current.CameraY>2270 && current.CameraY<2340){
		return true; //Split on final hit for Boss 6 WIP
	}
	if(settings[vars.BossKillSplits] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==5400 && current.CameraY==360){
		return true; //Split on final hit for Boss 7 WIP
	}
	
	if(old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==29160 && current.CameraY>800 && current.CameraY<1200 && current.Pause==0){
		return true; //Split on final hit for Episode 1 ending while still alive and not paused
	}
	if(current.Health>0 && current.CameraX==22248 && current.CameraY==1320 && current.Pause==0 && old.PlayerX==current.PlayerX && current.Music==255 && old.Music==255 && current.PlayerControl==2 && old.PlayerControl==0 && current.RoomRespawnState==8 && old.RoomRespawnState==0){
		return true; //Split on final input for Episode 2 ending(both) while still alive, not paused, no music and hasn't changed, lost control, room respawn state changed, haven't moved
	}
	
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 27 && timer.CurrentSplitIndex == 0){
		return true; //Split when you're on the 1st split and Stage 2 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 26 && timer.CurrentSplitIndex == 1){
		return true; //Split when you're on the 2nd split and Stage 3 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 25 && timer.CurrentSplitIndex == 2){
		return true; //Split when you're on the 3rd split and Stage 4 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 24 && timer.CurrentSplitIndex == 3){
		return true; //Split when you're on the 4th split and Stage 5 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 23 && timer.CurrentSplitIndex == 4){
		return true; //Split when you're on the 5th split and Stage 6 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 22 && timer.CurrentSplitIndex == 5){
		return true; //Split when you're on the 6th split and Stage 7 music starts
	}
	if(settings[vars.MusicStageSplits] && old.Music == 255 && current.Music == 21 && timer.CurrentSplitIndex == 6){
		return true; //Split when you're on the 7th split and Stage 8 music starts
	}
	return false;
}

update{
	if(old.BossHP==0 && current.BossHP==0 && old.Music==28 && current.Music==28){
		vars.BossPhase1Killed = true; //True when boss is 0 HP while boss fight music is playing. Can't update on frame it hits 0 or else it meets split condition on same frame. This works.
	}
	else if(current.Music!=28){
		vars.BossPhase1Killed = false; //Resets to False when boss fight music isn't playing
	}
}

/*
Bloodstained: Curse of the Moon 2 autosplitter by CptBrian
This ASL is compatible with COTM2 versions 1.2.2, 1.3.1
  [LiveSplit] Run as administrator, or else this can't read COTM2's memory. This can be done by default through Properties -> Compatibility.
  [LiveSplit] Ignore the following 2 steps if you're using LiveSplit's integrated Activate button to use this ASL.
  [LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter
  [LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file
*/

state("game", "1.2.2"){
	byte Music : "game.exe", 0x764DB8, 0x8, 0x270;
	byte Character : "game.exe", 0x9F62BC, 0x1A0;
	float PlayerX : "game.exe", 0x9F62BC, 0x1B4;
	float PlayerY : "game.exe", 0x9F62BC, 0x1B8;
	float CameraX : "game.exe", 0x702DB0, 0x24, 0x1A8, 0x104, 0x28;
	float CameraY : "game.exe", 0x702DB0, 0x24, 0x1A8, 0x104, 0x2C;
	byte Health : "game.exe", 0x702960, 0x58, 0x50, 0x510;
	float BossHP : "game.exe", 0x702960, 0x20, 0x78, 0x224, 0x2A0, 0x70; //All except 8e1p1, very stable
	ushort CharAnim : "game.exe", 0x9F62BC, 0x8, 0x20, 0x0, 0x104, 0x144, 0x0, 0x1BE;
	byte PlayerControl : "game.exe", 0x765108;
	byte Pause : "game.exe", 0x702960, 0x14, 0x1C, 0x20, 0x3C;
	byte RoomRespawnState : "game.exe", 0x9F62BC, 0x510;
	byte SaveSlot : "game.exe", 0x702F8C, 0x8;
	byte HUD : "game.exe", 0x702960, 0x58, 0x50, 0x15C;
	byte CharRender : "game.exe", 0x9F62BC, 0x15C;
}
state("game", "1.3.1"){
	byte Music : "game.exe", 0x764E40, 0x8, 0x270;
	byte Character : "game.exe", 0x9F6344, 0x1A0;
	float PlayerX : "game.exe", 0x9F6344, 0x1B4;
	float PlayerY : "game.exe", 0x9F6344, 0x1B8;
	float CameraX : "game.exe", 0x702D98, 0x24, 0x1A8, 0x104, 0x28;
	float CameraY : "game.exe", 0x702D98, 0x24, 0x1A8, 0x104, 0x2C;
	byte Health : "game.exe", 0x702948, 0x58, 0x50, 0x510;
	float BossHP : "game.exe", 0x702948, 0x20, 0x78, 0x224, 0x2A0, 0x70;
	ushort CharAnim : "game.exe", 0x9F6344, 0x8, 0x20, 0x0, 0x104, 0x144, 0x0, 0x1BE;
	byte PlayerControl : "game.exe", 0x765190;
	byte Pause : "game.exe", 0x702948, 0x14, 0x1C, 0x20, 0x3C;
	byte RoomRespawnState : "game.exe", 0x9F6344, 0x510;
	byte SaveSlot : "game.exe", 0x702F74, 0x8;
	byte HUD : "game.exe", 0x702948, 0x58, 0x50, 0x15C;
	byte CharRender : "game.exe", 0x9F6344, 0x15C;
}

startup{
	vars.ASLVersion = "ASL Version 2.2 - September 2, 2020";
	vars.MidRunSplits = "Mid-Run Splits (must check to use any)";
	vars.TitleScreenReset = "Reset on Title Screen (only mid-run)";

	settings.Add(vars.ASLVersion, false);
	settings.Add("WebsiteInfo", false, "Click the 'Website' button for more info!", vars.ASLVersion);
	settings.Add(vars.MidRunSplits, true);
	settings.Add("BossKillSplits", false, "Split on Final Hit for Non-Final Bosses", vars.MidRunSplits);
	settings.Add("StageIDSplits", true, "Split on Stage ID changes (all modes considered)", vars.MidRunSplits);
	settings.Add("BossEntrySplits", false, "Split upon Entering All Boss Rooms", vars.MidRunSplits);
	settings.Add(vars.TitleScreenReset, false);
}

init{
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString());
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

	if(MD5Hash == "23BFAFE274C9518FB8AF5D8B40DD50E7"){
		version = "1.2.2";
	}
	else if(MD5Hash == "C7AF661B70D8ED38DBB236CE51CE4150"){
		version = "1.3.1";
	}
	else{
		version = "1.3.1"; //Most common or latest version
	}

	vars.BossPhase1Killed = false;
	//Definitions required for my DeepPointer old value storage setup
	vars.DeepPointersReady = false;
	vars.CharsAvailable = 0;
	vars.Stage = 0;
	vars.Episode = 0;
}

start{
	if((current.Music==1 || current.Music==32) && old.PlayerControl==3 && current.PlayerControl<2 && current.CameraX==2808 && current.CameraY==3240){
		return true; //Autostart for Ep1,2,3,Solo
	}
	else if(current.Music==35 && old.PlayerControl==3 && current.PlayerControl<2 && current.CameraX==1944 && current.CameraY==360 && current.Pause==0){
		return true; //Autostart for Ep4
	}
	else if(current.Music==35 && old.PlayerControl==3 && current.PlayerControl<2 && current.CameraX>870 && current.CameraX<890 && current.CameraY==360 && current.Pause==0 && current.SaveSlot==32){
		return true; //Autostart for Boss Rush
	}
	else{
		return false;
	}
}

reset{
	if(settings[vars.TitleScreenReset] && current.Music==20){
		return true; //Reset when Title Screen music plays (Always starts before you can mash through it)
	}
	else{
		return false;
	}
}

split{
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==11880 && current.CameraY==2520){
		return true; //Split on final hit for Boss 1
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==20088 && current.CameraY==600){
		return true; //Split on final hit for Boss 2
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX>1470 && current.CameraX<4110 && current.CameraY==360){
		return true; //Split on final hit for Boss 3
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX>9270 && current.CameraX<9300 && current.CameraY>2500 && current.CameraY<2550 && vars.BossPhase1Killed){
		return true; //Split on final hit for Boss 4
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==9288 && current.CameraY==360){
		return true; //Split on final hit for Boss 5
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==8424 && current.CameraY>2270 && current.CameraY<2340){
		return true; //Split on final hit for Boss 6
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==5400 && current.CameraY==360){
		return true; //Split on final hit for Boss 7
	}
	if(settings["BossKillSplits"] && old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==22248 && current.CameraY==1320 && current.SaveSlot==32){
		//print("Split on final hit for Boss 9 Mephisto in Boss Rush");
		return true; //Split on final hit for Boss 9 Mephisto in Boss Rush
	}

	if(old.BossHP>0 && current.BossHP==0 && current.Health>0 && current.CameraX==29160 && current.CameraY>800 && current.CameraY<1200 && current.Pause==0){
		//print("Split on final hit for Episode 1 ending");
		return true; //Split on final hit for Episode 1 ending while still alive and not paused
	}
	if(current.Health>0 && current.CameraX==22248 && current.CameraY==1320 && current.Pause==0 && old.PlayerX==current.PlayerX && current.Music==255 && old.Music==255 && current.PlayerControl==2 && old.PlayerControl==0 && current.RoomRespawnState>7 && current.RoomRespawnState<10 && old.RoomRespawnState==0 && current.HUD==0 && current.CharRender==0){
		//print("Split on final input for Episode 2 ending(both)");
		return true; //Split on final input for Episode 2 ending(both) while still alive, not paused, no music and hasn't changed, lost control, room respawn state changed, haven't moved, no HUD, character hidden. Note: RoomRespawnState is 9 in Ep2 instead of 8
	}
	if(current.Health>0 && current.CameraX==15768 && current.CameraY==1800 && current.Pause==0 && old.PlayerX==current.PlayerX && current.Music==8 && old.Music==8 && current.PlayerControl==2 && old.PlayerControl==0 && current.RoomRespawnState==8 && old.RoomRespawnState==0){
		//print("Split on final input for Episode 4 ending(partied)");
		return true; //Split on final input for Episode 4 ending(partied) while still alive, not paused, Sariel music hasn't changed, lost control, room respawn state changed, haven't moved
	}
	if(current.Health>0 && current.CameraX==18360 && current.CameraY==2280 && current.Pause==0 && old.PlayerX==current.PlayerX && current.Music==8 && old.Music==8 && current.PlayerControl==2 && old.PlayerControl==0 && current.RoomRespawnState==8 && old.RoomRespawnState==0){
		//print("Split on final input for Episode 4 ending(solo)");
		return true; //Split on final input for Episode 4 ending(solo) while still alive, not paused, Sariel music hasn't changed, lost control, room respawn state changed, haven't moved
	}

	if(settings["StageIDSplits"] && vars.OldStage==1 && vars.Stage==2 && vars.Episode!=3){
		return true; //Split when Stage changes from 1 to 2 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==2 && vars.Stage==3 && vars.Episode!=3){
		return true; //Split when Stage changes from 2 to 3 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==3 && vars.Stage==4 && vars.Episode!=3){
		return true; //Split when Stage changes from 3 to 4 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==4 && vars.Stage==5 && vars.Episode!=3){
		return true; //Split when Stage changes from 4 to 5 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==5 && vars.Stage==6 && vars.Episode!=3){
		return true; //Split when Stage changes from 5 to 6 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==6 && vars.Stage==7 && vars.Episode!=3){
		return true; //Split when Stage changes from 6 to 7 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage==7 && (vars.Stage==8 || vars.Stage==9) && vars.Episode!=3){
		return true; //Split when Stage changes from 7 to 8 in all Eps/SM except 4
	}
	if(settings["StageIDSplits"] && vars.OldStage<8 && vars.Stage==12 && vars.Episode==3){
		return true; //Split when Stage changes from 1~7 to Ep4 Camp
	}
	if((settings["StageIDSplits"] || settings["BossKillSplits"]) && vars.OldStage==10 && vars.Stage==11 && vars.Episode==3){
		return true; //Split when Stage changes from Shmup to Moon in Ep4 if using either of the split settings
	}
	if(settings["StageIDSplits"] && vars.OldStage<11 && vars.Stage==13 && current.SaveSlot==32){
		return true; //Split when Stage changes from 1~10 to Boss Rush Lobby
	}

	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>11447 && current.CameraX<11500 && current.CameraY==2520 && vars.Stage==1 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 1 fight room (Drago-Symbiote)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>19591 && current.CameraX<19650 && current.CameraY==2520 && vars.Stage==2 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 2 fight room (Lubius)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>1263 && current.CameraX<1300 && current.CameraY==360 && vars.Stage==3 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 3 fight room (Gladiator Dozer)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>8855 && current.CameraX<8900 && current.CameraY==2520 && vars.Stage==4 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 4 fight room (Vepar)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>8855 && current.CameraX<8900 && current.CameraY==360 && vars.Stage==5 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 5 fight room (Lavamandra)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>7991 && current.CameraX<8050 && current.CameraY==2280 && vars.Stage==6 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 6 fight room (Titankhamun)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX==1944 && current.CameraY==7320 && vars.Stage==7 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 7 fight room (Gremory)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>25703 && current.CameraX<25750 && current.CameraY==600 && (vars.Stage==8 || vars.Stage==9) && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 8 fight room (Beelzebub)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>22600 && current.CameraX<22681 && current.CameraY==1320 && (vars.Stage==8 || vars.Stage==9) && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 8 fight room (Mephisto)
	}
	if(settings["BossEntrySplits"] && old.PlayerControl==0 && current.PlayerControl==2 && current.CameraX>=13160 && current.CameraX<13200 && current.CameraY==360 && vars.Stage==11 && current.SaveSlot!=32 && current.Pause==0 && current.Health>0){
		return true; //Split upon entering Boss 10 fight room (Sariel)
	}
	if(settings["BossEntrySplits"] && vars.OldStage==13 && vars.Stage<12 && vars.Stage>0 && current.SaveSlot==32){
		return true; //Split when Stage changes from Boss Rush Lobby to 1~11
	}

	return false;
}

update{
	if(!vars.BossPhase1Killed && old.BossHP==0 && current.BossHP==0 && old.Music==28 && current.Music==28){
		vars.BossPhase1Killed = true; //True when boss is 0 HP while boss fight music is playing. Can't update on frame it hits 0 or else it meets split condition on same frame. This works.
	}
	else if(vars.BossPhase1Killed && current.Music!=28){
		vars.BossPhase1Killed = false; //Resets to False when boss fight music isn't playing
	}

	//These "Old" vars need to update BEFORE the DeepPointer updates below them so they're always one update behind. Must also define those DPs in init as a result.
	vars.OldCharsAvailable = vars.CharsAvailable;
	//Solo Values(decimal): Zangetsu(1), Miriam(2), Alfred(4), Gebel(8), Dominique(16), Robert(32), Hachi(64), Shadow Zangetsu(128)
		//Simply add the values together for combinations of party members.
	vars.OldStage = vars.Stage;
	vars.OldEpisode = vars.Episode;

	if(version=="1.2.2" && (!vars.DeepPointersReady || old.SaveSlot!=current.SaveSlot)){
		vars.CharsAvailablePointer = new DeepPointer("game.exe", 0x9F6004+(0x8*current.SaveSlot), 0x234); //Creates the DeepPointers only when necessary(when loading script or switching save slots)
		vars.StagePointer = new DeepPointer("game.exe", 0x9F6004+(0x8*current.SaveSlot), 0x21C);
		vars.EpisodePointer = new DeepPointer("game.exe", 0x9F6004+(0x8*current.SaveSlot), 0xC);
		vars.DeepPointersReady = true;
	}
	if(version=="1.3.1" && (!vars.DeepPointersReady || old.SaveSlot!=current.SaveSlot)){
		vars.CharsAvailablePointer = new DeepPointer("game.exe", 0x9F608C+(0x8*current.SaveSlot), 0x234);
		vars.StagePointer = new DeepPointer("game.exe", 0x9F608C+(0x8*current.SaveSlot), 0x21C);
		vars.EpisodePointer = new DeepPointer("game.exe", 0x9F608C+(0x8*current.SaveSlot), 0xC);
		vars.DeepPointersReady = true;
	}

	vars.CharsAvailable = vars.CharsAvailablePointer.Deref<byte>(game); //Updates the DeepPointer values
	vars.Stage = vars.StagePointer.Deref<byte>(game);
	vars.Episode = vars.EpisodePointer.Deref<byte>(game);

	//print("OldStage ID=="+vars.OldStage.ToString()+", Stage ID=="+vars.Stage.ToString());
}

exit{
	vars.DeepPointersReady = false;
}

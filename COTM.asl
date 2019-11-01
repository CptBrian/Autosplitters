/*
Bloodstained: Curse of the Moon autosplitter by CptBrian
This ASL is compatible with COTM versions 1.1.2 and 1.1.0(Unleashed crack)
  [LiveSplit] Run as administrator, or else this can't read COTM's memory. This can be done by default through Properties -> Compatibility.
  [LiveSplit] Ignore the following 2 steps if you're using LiveSplit's integrated Activate button to use this ASL.
  [LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter
  [LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file
Required to have 8 Splits (one for each stage)
*/

state("COTM", "1.1.2")
{
	uint ILframes : "COTM.exe", 0x00483660, 0x18;
	uint IGTframes : "COTM.exe", 0x00483660, 0x8, 0x28;
	uint TotalFrames : "COTM.exe", 0x004836CC;
	byte Stage : "COTM.exe", 0x00483660, 0x8, 0x88;
	byte Music : "COTM.exe", 0x0048365C, 0x2BC;
	byte Character : "COTM.exe", 0x00483660, 0x8, 0x20;
	float PlayerX : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x174, 0x1B8, 0x1B8;
	float PlayerY : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x174, 0x1B8, 0x1B0;
	float CameraX : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x174, 0x184;
	float CameraY : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x174, 0x188;
	byte Health : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x190, 0x15C, 0x3DC;
	byte BossRushProgress : "COTM.exe", 0x00483660, 0xF0;
	byte ZangetsuHP : "COTM.exe", 0x00483660, 0x8, 0x11;
	byte MiriamHP : "COTM.exe", 0x00483660, 0x8, 0x14;
	byte AlfredHP : "COTM.exe", 0x00483660, 0x8, 0x17;
	byte GebelHP : "COTM.exe", 0x00483660, 0x8, 0x1A;
	uint FinalBossHP : "COTM.exe", 0x00483660, 0xFC, 0x0, 0x8, 0x3DC;
	uint NMZangAnim : "COTM.exe", 0x00483660, 0xFC, 0x0, 0x8, 0x4FC;
	ushort CharAnim : "COTM.exe", 0x0048365C, 0x4, 0x70, 0x20, 0x20, 0x88, 0x20, 0x140, 0x0, 0x19A;
	ushort Allies : "COTM.exe", 0x00483660, 0x8, 0x2C;
	byte BRProgress : "COTM.exe", 0x00483660, 0xF0;
	byte PlayerControl : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x27C;
	byte Pause : "COTM.exe", 0x0048365C, 0x8, 0x6C, 0x20, 0x38;
}
state("COTM", "1.1.0")
{
	uint ILframes : "COTM.exe", 0x004835D0, 0x18;
	uint IGTframes : "COTM.exe", 0x004835D0, 0x8, 0x28;
	uint TotalFrames : "COTM.exe", 0x004836CC;
	byte Stage : "COTM.exe", 0x004835D0, 0x8, 0x88;
	byte Music : "COTM.exe", 0x004835CC, 0x2BC;
	byte Character : "COTM.exe", 0x004835D0, 0x8, 0x20;
	float PlayerX : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x174, 0x1B8, 0x1B8;
	float PlayerY : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x174, 0x1B8, 0x1B0;
	float CameraX : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x174, 0x184;
	float CameraY : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x174, 0x188;
	byte Health : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x190, 0x15C, 0x3DC;
	byte BossRushProgress : "COTM.exe", 0x004835D0, 0xF0;
	byte ZangetsuHP : "COTM.exe", 0x004835D0, 0x8, 0x11;
	byte MiriamHP : "COTM.exe", 0x004835D0, 0x8, 0x14;
	byte AlfredHP : "COTM.exe", 0x004835D0, 0x8, 0x17;
	byte GebelHP : "COTM.exe", 0x004835D0, 0x8, 0x1A;
	uint FinalBossHP : "COTM.exe", 0x004835D0, 0xFC, 0x0, 0x8, 0x3DC;
	uint NMZangAnim : "COTM.exe", 0x004835D0, 0xFC, 0x0, 0x8, 0x4FC;
	ushort CharAnim : "COTM.exe", 0x004835CC, 0x4, 0x70, 0x20, 0x20, 0x88, 0x20, 0x140, 0x0, 0x19A;
	ushort Allies : "COTM.exe", 0x004835D0, 0x8, 0x2C;
	byte BRProgress : "COTM.exe", 0x004835D0, 0xF0;
	byte PlayerControl : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x27C;
	byte Pause : "COTM.exe", 0x004835CC, 0x8, 0x6C, 0x20, 0x38;
}

startup
{
	settings.Add("ASL Version 2.5 - November 1, 2019", false);
	settings.Add("Click the 'Website' button for more info!", false);
}

init
{
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
	
	if(MD5Hash == "951389C953020FC7B5DEF32E7BED129A"){
		version = "1.1.2";
	}
	else if(MD5Hash == "E1E439BD3FE89DE97BE08B15505837E2"){		
		version = "1.1.0";
	}
	else{
		version = "1.1.2";
	}
}

start
{
	return (current.IGTframes == 0 && old.PlayerControl == 1 && current.PlayerControl == 0 && current.Stage == 1 && current.CameraX == 600 && current.PlayerX < 540)
	|| (current.Stage == 10 && current.BossRushProgress == 1 && old.ILframes == 0 && current.ILframes > 0 && current.ZangetsuHP != 0 && current.MiriamHP != 0 && current.AlfredHP != 0 && current.GebelHP != 0)
	;
}

reset
{
	if(timer.CurrentPhase == TimerPhase.Running && current.Stage == 1 && current.IGTframes == 0 && current.PlayerControl == 1 && current.CameraX == 600 && current.PlayerX < 600){
		return true;
	}
	else if(timer.CurrentPhase == TimerPhase.Running && current.Stage == 10 && current.BossRushProgress == 1 && current.ILframes == 0 && current.ZangetsuHP != 0 && current.MiriamHP != 0 && current.AlfredHP != 0 && current.GebelHP != 0 && current.PlayerX == 440){
		return true;
	}
	else{
		return false;
	}
}

split
{
	if(current.Stage == 2 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 0){
		return true;
	}
	if(current.Stage == 3 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 1){
		return true;
	}
	if(current.Stage == 4 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 2){
		return true;
	}
	if(current.Stage == 5 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 3){
		return true;
	}
	if(current.Stage == 6 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 4){
		return true;
	}
	if(current.Stage == 7 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 5){
		return true;
	}
	if(current.Stage == 8 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 6){
		return true;
	}
	if(current.Stage == 9 && current.IGTframes > 0 && current.ILframes == 0 && old.ILframes > 0 && timer.CurrentSplitIndex == 6){
		return true;
	}
	if(current.Stage == 8 && timer.CurrentSplitIndex == 7 && current.CameraX == 8600 && current.CameraY > 2200 && current.Allies > 63 && old.FinalBossHP > 0 && current.FinalBossHP == 0){
		return true;
	}
	if(current.Stage == 8 && timer.CurrentSplitIndex == 7 && current.CameraX == 8600 && current.CameraY > 2200 && current.Allies < 64 && current.FinalBossHP == 0 && current.CharAnim == 169){
		return true;
	}
	if(current.Stage == 9 && timer.CurrentSplitIndex == 7 && current.CameraX == 4600 && current.CameraY == 840 && current.FinalBossHP == 0 && current.Pause == 0 && old.PlayerControl == 0 && current.PlayerControl == 1 && current.NMZangAnim == 58){
		return true;
	}
	if(timer.CurrentSplitIndex == 0 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 1 && current.BRProgress == 2){
		return true;
	}
	if(timer.CurrentSplitIndex == 1 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 2 && current.BRProgress == 3){
		return true;
	}
	if(timer.CurrentSplitIndex == 2 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 3 && current.BRProgress == 4){
		return true;
	}
	if(timer.CurrentSplitIndex == 3 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 4 && current.BRProgress == 5){
		return true;
	}
	if(timer.CurrentSplitIndex == 4 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 5 && current.BRProgress == 6){
		return true;
	}
	if(timer.CurrentSplitIndex == 5 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 6 && current.BRProgress == 7){
		return true;
	}
	if(timer.CurrentSplitIndex == 6 && current.Stage > 0 && current.Stage < 11 && old.BRProgress == 7 && current.BRProgress == 8){
		return true;
	}
	return false;
}

//Bloodstained: Curse of the Moon autosplitter by CptBrian(it's my first, pray it works)
//This ASL is compatible with COTM versions 1.1.2 and 1.1.0(Unleashed crack)
//[LiveSplit] Run as administrator, or this can't read COTM's memory. This can be done by default through Properties -> Compatibility.
//[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter
//[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file
//[LiveSplit] Layout Settings: Timer(tab) -> Timing Method: Game Time -> Splits(tab) -> Both 'Column' Sections -> Timing Method: Game Time
//[LiveSplit] OK -> Now make sure to right-click your splits -> Compare Against -> Game Time ... & remember to save your Layout/Splits!
//Required to have 8 Splits (one for each stage)
//You should be able to split manually if you really want to, it shouldn't double-split the same split as it reads split number, stage, etc..

state("COTM", "1.1.2")
{
	uint ILframes : "COTM.exe", 0x00483660, 0x18;
	uint IGTframes : "COTM.exe", 0x00483660, 0x8, 0x28;
	byte Stage : "COTM.exe", 0x00483660, 0x8, 0x88;
	byte Music : "COTM.exe", 0x0048365C, 0x2BC;
	byte Character : "COTM.exe", 0x00483660, 0x8, 0x20; //Not currently in use.
}
state("COTM", "1.1.0")
{
	uint ILframes : "COTM.exe", 0x004835D0, 0x18;
	uint IGTframes : "COTM.exe", 0x004835D0, 0x8, 0x28;
	byte Stage : "COTM.exe", 0x004835D0, 0x8, 0x88;
	byte Music : "COTM.exe", 0x004835CC, 0x2BC;
	byte Character : "COTM.exe", 0x004835D0, 0x8, 0x20; //Not currently in use.
}

init
{
	//print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString());
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
	//print("MD5Hash: " + MD5Hash.ToString()); //Lets DebugView show me the MD5Hash of the game executable, which is actually useful.
	
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

isLoading
{
	return true;
}

start
{
	return current.IGTframes == 0 && old.ILframes == 0 && current.ILframes > 0 && current.Stage == 1;
}

reset
{
	if(timer.CurrentSplitIndex > 0 && timer.CurrentSplitIndex < 8 && current.Stage == 1 && current.IGTframes == 0 && current.ILframes == 0){
		return true;
	}
	//Resets timer if player starts over at Stage 1, but they've already split at least once, but will not reset if the player finished a run and didn't save their splits.
	
	else if(current.Stage == 10 && timer.CurrentSplitIndex < 8){
		return true;
	}
	//Resets timer if player enters Boss Rush lobby, but only if they don't have all 8 splits completed(autosplitter starts up on Boss Rush Glutton Train)
	
	return false;
}

gameTime
{
	if(current.ILframes == old.ILframes && current.ILframes > 0){
		return; //Fixes wrong times caused by IL not resetting immediately after its value is added to IGT.
	}
	else{
		return TimeSpan.FromTicks((current.IGTframes + current.ILframes)*166666L); //16.6666 ms~=1 frame
	}
}

update
{

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
	if(current.Stage == 8 && current.Music == 8 && timer.CurrentSplitIndex == 7){
		return true;
	}
	if(current.Stage == 9 && current.Music == 8 && timer.CurrentSplitIndex == 7){
		return true;
	}
	return false;
}

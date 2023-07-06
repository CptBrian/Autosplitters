/*
	Destroy All Humans! 2 - Reprobed (Released August 30th, 2022) https://store.steampowered.com/app/1266700
	ASL originally by CptBrian - https://www.speedrun.com/dah2r
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("DH-Win64-Shipping"){
	bool Loading  : 0x7112918, 0xA8; // Only 1 when the *smaller* loading icon is visible during true definitive loading scenarios
	byte BLoading : 0x7137A28, 0xDA0, 0x390, 0xA0; // 0=Playable, 1=BigLoadIconShown+More, 2=MostCutscenes+1stTimeDialogs(some exceptions)
}

startup{ // When the script first loads, before process connection
	settings.Add("ASLVersion", true, "ASL Version 1.0 – July 6, 2023 (purely informational)");
	settings.Add("ResetGameClose", false, "Reset timer upon game process closing");
	settings.Add("LoadTest", false, "TEST TIMES→ Start upon True Load, Pause outside loads");
	settings.Add("BLoadTest", false, "TEST TIMES→ Start upon Bonus Load, Pause outside loads");

	if(timer.CurrentTimingMethod == TimingMethod.RealTime){
		var timingMessage = MessageBox.Show(
			"This game is primarily timed without Loads (LRT),\n"+
			"but you have LiveSplit set to Real Time (RTA).\n"+
			"A Load Remover is available if you use Game Time.\n"+
			"Would you like to switch to Game Time for LRT?",
			"LiveSplit | Destroy All Humans! 2 - Reprobed",
			MessageBoxButtons.YesNo,MessageBoxIcon.Question
		);
		if(timingMessage == DialogResult.Yes){
			timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}

	vars.timerModel = new TimerModel { CurrentState = timer }; // Required for resetting in the exit{} block
}

init{ // When the process connects
	// Not yet necessary
}

isLoading{
	return (current.Loading || current.BLoading == 1) && !settings["LoadTest"] && !settings["BLoadTest"]
		|| settings["LoadTest"] && !current.Loading
		|| settings["BLoadTest"] && current.BLoading != 1;
}

start{
	return settings["LoadTest"] && current.Loading && !old.Loading
		|| settings["BLoadTest"] && current.BLoading == 1 && old.BLoading != 1;
}

split{
	// Not yet
}

reset{
	// Not yet
}

exit{ // When the game process dies
	if(settings["ResetGameClose"]){
		vars.timerModel.Reset();
	}
}

update{
	// Not yet necessary
}

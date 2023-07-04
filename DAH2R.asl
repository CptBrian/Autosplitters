/*
	Destroy All Humans! 2 - Reprobed (Released August 30th, 2022) https://store.steampowered.com/app/1266700
	ASL originally by CptBrian - https://www.speedrun.com/dah2r
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("DH-Win64-Shipping"){
	bool Loading : 0x7112918, 0xA8;
}

startup{ // When the script first loads, before process connection
	settings.Add("ASLVersion", true, "ASL Version 0.9 – July 4, 2023 (purely informational)");
	settings.Add("ResetGameClose", false, "Reset timer upon game process closing");

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
	return current.Loading;
}

start{
	// Not yet
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
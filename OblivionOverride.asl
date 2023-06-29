/*
	Oblivion Override (Released in Early Access on June 13, 2023) https://store.steampowered.com/app/1952370
	ASL originally by CptBrian with help from Ero; made primarily for the $10K competition. https://www.speedrun.com/oblivion_override
	Might update later, but it's a ton of work, and I'm very busy, also Unity pointers are literally Satan, so please help with them if you're capable.
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("Oblivion Override"){}

startup{ // When the script first loads, before process connection
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
	vars.Helper.GameName = "Oblivion Override";

	settings.Add("ASLVersion", true, "ASL Version 1.7 – June 29, 2023 (purely informational)");
	settings.Add("StartAfterHubPortal", true, "Start after exiting Hub portal");
	settings.Add("StartFreshFile", true, "Start upon playing Fresh File (Tutorial Entry)");
	settings.Add("SplitPortals", true, "Split on portals to new maps (Bosses & Stages)");
	settings.Add("SplitHubEntry", true, "Split upon entering Hub (except from Tutorial)");
	settings.Add("SplitFinalBoss", true, "Split upon Final Boss dying");
	settings.Add("ResetHub", false, "Reset timer within Hub");
	settings.Add("ResetGameClose", false, "Reset timer upon game process closing");

	if(timer.CurrentTimingMethod == TimingMethod.RealTime){
		var timingMessage = MessageBox.Show(
			"This game is primarily timed without Loads (LRT),\n"+
			"but you have LiveSplit set to Real Time (RTA).\n"+
			"A Load Remover is available if you use Game Time.\n"+
			"Would you like to switch to Game Time for LRT?",
			"LiveSplit | Oblivion Override",
			MessageBoxButtons.YesNo,MessageBoxIcon.Question
		);
		if(timingMessage == DialogResult.Yes){
			timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}

	vars.timerModel = new TimerModel { CurrentState = timer }; // Required for resetting in the exit{} block
	vars.SplitAvoidLevels = new List<int> { 1011, 1014, 3011 };
}

init{ // When the process connects
	vars.Helper.TryLoad = (Func<dynamic, bool>)(mono =>{
		var SM = mono["SceneManager", 1];
		var GO = mono["GameObj"];
		var CA = mono["CharacterAttr"];

		// I don't understand how these paths are effectively found, since it's not properly explained or documented anywhere, and trying to reverse-engineer these paths to figure out the process still confuses me when CA is randomly being used for MobHP and NOT PlayerHP... It's frustrating.
		// mono.Make<T>(myClass, "staticField", "nextField1", "nextField2");
		vars.Helper["Chapter"] = mono.Make<int>(SM, "ms_instance", "chapterId");
		vars.Helper["Level"] = mono.Make<int>(SM, "ms_instance", "levelId");
		vars.Helper["LoadingDone"] = mono.Make<bool>(SM, "ms_instance", "_isLoadingDone");
		vars.Helper["PlayerHP"] = mono.Make<int>(SM, "ms_instance", "gameScene", "player", "_m_attr", "nowHp");
		vars.Helper["FirstMobHP"] = mono.Make<int>(SM, "ms_instance", "gameScene", "mobs", 0x10, 0x20, GO["_m_attr"], CA["nowHp"]);
		vars.Helper["Room"] = mono.Make<int>(SM, "ms_instance", "gameScene", "player", "_physics", "_curRoom", "uuid");

		return true;
	});
}

isLoading{
	return !current.LoadingDone;
}

start{
	return settings["StartAfterHubPortal"] && current.Chapter == 1 && current.Level == 1001 && !old.LoadingDone && current.LoadingDone
		|| settings["StartFreshFile"] && current.Chapter == 1 && current.Level == 102 && !old.LoadingDone && current.LoadingDone;
}

split{
	return settings["SplitPortals"] && current.Level > 0 && old.Level > 0 && current.Level < 9999 && current.Level > old.Level && !vars.SplitAvoidLevels.Contains(current.Level)
		|| settings["SplitFinalBoss"] && current.Chapter == 3 && current.Level > 3001 && old.FirstMobHP > 0 && current.FirstMobHP == 0
		|| settings["SplitHubEntry"] && old.Level > 1 && old.Level < 9999 && old.Level != 102 && current.Level == 1;
}

reset{
	return settings["ResetHub"] && current.Chapter == 10 && current.Level == 1;
}

exit{ // When the game process dies
	if(settings["ResetGameClose"]){
		vars.timerModel.Reset();
	}
}

update{
	// Not yet necessary
}

/* Value Notes:
	Chapter 10 && Level 1 == Hub (Level ID always changes before Chapter ID)
	Chapter 1 == Stage 1 (Factory)
		Level 102 == Tutorial (Fresh File Start, and this run may progress normally to further stages)
		Level 103 == Mr. Xie's Chest Introduction (Re-Entering Chapter 1 after seeing Tutorial, which can be immediately Quit out of)
		Level 104 == Re-entered Chapter 1 without buying Mr. Xie's free Chest upgrade (Level 104 doesn't exist if you buy the upgrade ASAP)
		Level 1001 == Standard Stage 1 (after buying Mr. Xie's free Chest upgrade "Fire Support")
		Level 1002 == (BOSS) Tiyen Smasher
		Level 1003 == (BOSS) Electric Erich (including the instance with Mr. Bond spawned)
		Level 1004 == (BOSS) Mechanist Leon
		Level 1011 == Wade (Repairman Head) & Tiyen's Reprogramming Recording Room
		Level 1014 == Control Room with Yadi (wants Tesla Battery from Erich, unlocks Hub Recycling Bins, may be exclusive to Alert 2+)
	Chapter 2 == Stage 2 (Greenhouse)
		Level 2001 == Standard Stage 2
		Level 2002 == (BOSS) Gladys, The Annihilator
		Level 2003 == (BOSS) Ripper Wright
	Chapter 3 == Stage 3 (Data Center)
		Level 3001 == Standard Stage 3
		Level 3002 == ??? Doesn't currently exist, I guess.
		Level 3003 == (BOSS) Nephthys, The Executor (all known encounters)
		Level 3011 == Yixisi (Monkey) room, requiring the Nephthys ID card
*/

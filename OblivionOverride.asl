/*
	Oblivion Override (Released in Early Access on June 13, 2023) https://store.steampowered.com/app/1952370
	ASL originally by CptBrian with help from Ero; made primarily for the $10K competition.
	Might update later, but it's a ton of work, and I'm very busy, also Unity pointers are literally Satan, so please help with them if you're capable.
	Throw money at my PayPal if you want me to update it: CptBrian@Outlook.com
*/

state("Oblivion Override"){}

startup{ // When the script first loads, before process connection
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
	vars.Helper.GameName = "Oblivion Override";

	settings.Add("ASLVersion", true, "ASL Version 1.3 – June 22, 2023 (purely informational)");
	settings.Add("HubPortalExit", true, "Start upon exiting Hub portal");
	settings.Add("PortalSplit", true, "Split during portals to new maps (Bosses & Stages)");
	settings.Add("EndBossSplit", true, "Split when final boss reaches zero HP");

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
}

init{ // When the process connects
	vars.Helper.TryLoad = (Func<dynamic, bool>)(mono =>{
		var SM = mono["SceneManager", 1];
		var GO = mono["GameObj"];
		var CA = mono["CharacterAttr"];

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
	return settings[vars.HubPortalExit] && current.Chapter == 1 && current.Level == 1001 && !old.LoadingDone && current.LoadingDone;
}

split{
	return settings[vars.PortalSplit] && current.Level > 0 && old.Level > 0 && current.Level < 9999 && current.Level > old.Level
		|| settings[vars.EndBossSplit] && current.Chapter == 3 && current.Level > 3001 && old.FirstMobHP > 0 && current.FirstMobHP == 0;
}

reset{
	return settings[vars.HubPortalExit] && current.Chapter == 10 && current.Level == 1; // Inside Hub on a category that doesn't time it
}

update{
	// Not yet necessary
}

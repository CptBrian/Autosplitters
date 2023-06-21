state("Oblivion Override") { }

startup
{
	Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Unity");
	vars.Helper.GameName = "Oblivion Override";

	settings.Add("tp-1-1002", true, "Split when teleporting to Rooftop"); // tp-chapter-level

	settings.Add("boss-1-2", true, "Split when defeating Tiyen Smasher"); // boss-chapter-room

	vars.Helper.AlertLoadless();
}

init
{
	vars.Helper.TryLoad = (Func<dynamic, bool>)(mono =>
	{
		var sm = mono["SceneManager", 1];
		var go = mono["GameObj"];
		var ca = mono["CharacterAttr"];

		vars.Helper["Chapter"] = mono.Make<int>(sm, "ms_instance", "chapterId");
		vars.Helper["Level"] = mono.Make<int>(sm, "ms_instance", "levelId");
		// vars.Helper["IsBuildingScene"] = mono.Make<bool>(sm, "ms_instance", "_isBuildingScene");
		vars.Helper["IsLoadingDone"] = mono.Make<bool>(sm, "ms_instance", "_isLoadingDone");

		// vars.Helper["PlayerHP"] = mono.Make<int>(sm, "ms_instance", "gameScene", "player", "_m_attr", "nowHp");
		vars.Helper["FirstMobHP"] = mono.Make<int>(sm, "ms_instance", "gameScene", "mobs", 0x10, 0x20, go["_m_attr"], ca["nowHp"]);

		vars.Helper["Room"] = mono.Make<int>(sm, "ms_instance", "gameScene", "player", "_physics", "_curRoom", "uuid");

		return true;
	});
}

start
{
	return !old.IsLoadingDone && current.IsLoadingDone && current.Chapter == 1 && current.Level == 1001;
}

split
{
	return old.Level != current.Level && settings["tp-" + current.Chapter + "-" + current.Level]
		|| old.FirstMobHP > 0 && current.FirstMobHP == 0 && settings["boss-" + current.Chapter + "-" + current.Room];
}

reset
{
	return old.Level != 1001 && current.Level == 1001 && current.Chapter == 10;
}

isLoading
{
	return !current.IsLoadingDone;
}

/*
Bloodstained: Ritual of the Night - ASL primarily by CptBrian with help from: DarkTechnomancer & hitachihex
ASL Version 2.4 (PC Only)
This ASL is compatible with RotN versions: Steam 1.02,3,4,10 GOG 1.03,4,5,9,10 & Cracked Steam 1.02
[LiveSplit] Run as administrator, or this can't read RotN's memory. This can be done by default through Properties -> Compatibility.
[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter (don't need to do this if you're using this file through split editor)
[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file (^^^)
[LiveSplit] Remember to save your Layout/Splits!
*/

state("BloodstainedRotN-Win64-Shipping", "Unknown - Contact us!"){ //Copy of addresses from whatever the most common version is(Steam 1.10)
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x878;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x888;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x850;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x860;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x87C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x88C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x894;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x898;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x278;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x218;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x290;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x291;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x292;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x28C;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x288;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x27C;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F790, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x310;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2E6BD;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x238;
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x758;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x768;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.02 Cracked"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x848; //uworld ptr is +1000 hex from official Steam 1.02/1.03
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x2F688;
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
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06C31250, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.04"){ //Exactly the same as GOG 1.03
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x2F688;
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
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06BFF860, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.05"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x2F688;
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
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06C088E0, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.03"){ //Exactly the same as Steam 1.02(official/uncracked)
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x2F688;
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
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06C30250, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.04"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x2F688;
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
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06C48760, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.09"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x848;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x858;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x820;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x830;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x84C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x85C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x864;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x868;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x254;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x208;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F688;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F688, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F688, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x26C;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x26D;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x26E;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x268;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x264;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x258;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F760, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2E0;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2E68D;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F688, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x728;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x06C15D60, 0x738;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.10"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x878; //+30 hex vs prev ver
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x888; //+30 hex vs prev ver
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x850; //+30 hex vs prev ver
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x860;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x87C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x88C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x894;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x898;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x278; //+24 hex vs prev ver
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x218; //+10 hex vs prev ver
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8; //+30 hex vs prev ver
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x290;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x291;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x292;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x28C; //+24 hex vs prev ver
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x288;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x27C;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0xE8; //+0 hex vs prev ver
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F790, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x310; //+30 hex vs prev ver
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2E6BD; //+30 hex vs prev ver
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x238;
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x758; //+30 hex vs prev ver
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x768;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.10"){
	uint Loading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x878;
	uint LoadingFile : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x888;
	byte Saving : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x140, 0xF0, 0x285;
	uint PauseMenu : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x850;
	uint PressAnyKey : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x860;
	uint ShardGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x87C;
	uint NewAreaBanner : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x88C;
	uint LevelUp : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x894;
	uint UpgradeGet : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x898;
	uint Gold : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x278;
	uint Cutscene : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x218;
	uint RoomData : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8;
	uint Room : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x188;
	uint PreviousRoom : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x180;
	byte Difficulty : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x290;
	byte GameMode : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x291;
	byte Character : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x292;
	float IGT : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x28C;
	uint NGPlusCount : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x288;
	uint GameClear : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x27C;
	uint FileCreateLoad : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0xE8;
	uint DialogueShop : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F790, 0x510;
	uint IntroEvents : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x310;
	byte IntroChest : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2E6BD;
	byte RDLoading : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F6B8, 0x1B4;
	float PlayerX : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x244;
	float PlayerY : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x24C;
	float PlayerRotation : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x2F848, 0x0, 0x928, 0x238;
	byte BossDoors : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x758;
	byte GalleonBannerSeen : "BloodstainedRotN-Win64-Shipping.exe", 0x072B3060, 0x768;
}

startup{
	settings.Add("Click 'Website' button for more info!", false);
	settings.Add("Pause during general gameplay loading - Default: ON", true);
	settings.Add("Pause during Save File Loading - Default: ON", true);
	settings.Add("Pause while Saving - Default: ON", true);
	settings.Add("Pause during RotN Circle Logo screen - Default: ON", true); //New implementation from DarkTechnomancer
	settings.Add("Pause on Press-Any-Key events (BANNED in runs)", false);
	settings.Add("Basic data logging(if there's issues) .log in LS dir.", false);
	
	vars.logFilePath = Directory.GetCurrentDirectory() + "\\RotN-Autosplitter.log"; //same folder as LiveSplit.exe
	vars.log = (Action<string>)((string logLine) => {
		string time = System.DateTime.Now.ToString("dd/MM/yy hh:mm:ss:fff");
		System.IO.File.AppendAllText(vars.logFilePath, time + ": " + logLine + "\r\n");
	});
	try{
		vars.log("ASL file loaded(Version 2.4)");
	}
	catch (System.IO.FileNotFoundException e){
		System.IO.File.Create(vars.logFilePath);
		vars.log("Autosplitter loaded, log file created");
	}
}

init{
	var LogoIgnoreFlag = false;
	var Logging = false;
	
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
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "E9C3AB688872DE80DBA91934AED9EC7F"){
		version = "Steam 1.02 Cracked";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "0B9685B2C8056D9E841C254AAB94212E"){
		version = "GOG 1.05";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "F4500E29DB5AE2964D2009CE766D7603"){
		version = "GOG 1.04";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "A8A64C6A4C0682F7C486C29EBB56F77E"){
		version = "Steam 1.04";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "B057A5C2CF9EDA9156767EC687F03B57"){
		version = "GOG 1.09";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "3993A9330EE6F985F190DF38788C9196"){
		version = "Steam 1.10";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "IDONOTOWNTHISSHIT"){
		version = "GOG 1.10";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else{
		version = "Unknown - Contact us!";
		vars.log("UNDETECTED GAME VERSION - MD5Hash: " + MD5Hash);
	}
}

update{
	if(old.GameMode == 0 && current.GameMode != 0){
		vars.LogoIgnoreFlag = true;
	}
	else if(current.RoomData != 0){
		vars.LogoIgnoreFlag = false;
	}
	
	if(settings["Basic data logging(if there's issues) .log in LS dir."]){
		vars.Logging = true;
	}
	else if(!settings["Basic data logging(if there's issues) .log in LS dir."]){
		vars.Logging = false;
	}
	
	if(vars.Logging){
		if(old.FileCreateLoad == 1 && current.FileCreateLoad == 0){
			vars.log("File loaded. Some values: Loading=" + current.Loading + ", LoadingFile=" + current.LoadingFile + ", Saving=" + current.Saving + ", PauseMenu=" + current.PauseMenu + ", PressAnyKey=" + current.PressAnyKey + ", Gold=" + current.Gold + ", Cutscene=" + current.Cutscene + ", RoomData=" + current.RoomData + ", Room=" + current.Room + ", PreviousRoom=" + current.PreviousRoom + ", Difficulty=" + current.Difficulty + ", GameMode=" + current.GameMode + ", Character=" + current.Character + ", IGT=" + current.IGT + ", NGPlusCount=" + current.NGPlusCount + ", GameClear=" + current.GameClear + ", DialogueShop=" + current.DialogueShop + ", IntroEvents=" + current.IntroEvents + ", IntroChest=" + current.IntroChest + ", RDLoading=" + current.RDLoading + ", PlayerX=" + current.PlayerX + ", PlayerY=" + current.PlayerY + ", PlayerRotation=" + current.PlayerRotation);
			vars.log("Reminder: Invalid addresses also return a value of 0");
		}
		else if(old.DialogueShop == 0 && current.DialogueShop == 1){
			vars.log("Dialogue opened");
		}
		else if(old.DialogueShop == 1 && current.DialogueShop == 2){
			vars.log("Shop opened");
		}
		else if(old.Cutscene == 0 && current.Cutscene == 1){
			vars.log("Cutscene started");
		}
		else if(old.Saving == 0 && current.Saving == 1){
			vars.log("Saving game");
		}
		else if(old.RDLoading == 1 && current.RDLoading == 0){
			vars.log("General Loading");
		}
		else if(old.PressAnyKey == 1 && current.PressAnyKey == 0){
			vars.log("Progressed a 'Press Any Key' state");
		}
		else if(old.Room != 708 && current.Room == 708){
			vars.log("Entered starting room");
		}
		else if(old.Room != 0 && current.Room == 0){
			vars.log("RoomData wiped");
		}
		else if(old.Room == 0 && current.Room != 0){
			vars.log("RoomData generated");
		}
		else if(old.IntroChest == 0 && current.IntroChest == 1){
			vars.log("IntroChest was opened");
		}
	}
}
 
isLoading{
	//Some flags just count up/down by 1, which is why the (old)Loading flag(and potentially others) can very rarely go up to 2 or 3 during oddly stacked triggers, but they'll return to 0.
	if(settings["Pause during general gameplay loading - Default: ON"] && current.RDLoading == 0 && current.RoomData != 0){
		return true;
	}
	else if(settings["Pause during Save File Loading - Default: ON"] && (current.LoadingFile == 1 || current.FileCreateLoad == 1)){
		return true;
	}
	else if(settings["Pause while Saving - Default: ON"] && current.Saving == 1){
		return true;
	}
	else if(settings["Pause during RotN Circle Logo screen - Default: ON"] && current.RoomData == 0 && current.GameMode != 0 && !vars.LogoIgnoreFlag){
		return true;
	}
	else if(settings["Pause on Press-Any-Key events (BANNED in runs)"] && current.PressAnyKey == 1){
		return true;
	}
	else{
		return false;
	}
}

start{
	if(current.GameMode == 6 && (current.Room == 708 || current.Room == 715) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 6 && current.Room == 715 && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 1 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 9 && (current.Room == 708 || current.Room == 715) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 0 && current.IntroEvents == 192 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for Randomizer mode");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 708 || current.Room == 715) && old.DialogueShop == 1 && current.DialogueShop == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 1 && current.Room == 715 && old.IGT == 0.000000000 && current.IGT != 0.000000000 && current.Character == 1 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 2 && current.RoomData != 0 && old.FileCreateLoad == 1 && current.FileCreateLoad == 0 && current.Character < 3){
		if(vars.Logging){
			vars.log("Splits started for Boss Rush");
		}
		return true;
	}
	else{
		return false;
	}
}

reset{
	if((current.GameMode == 1 || current.GameMode == 6) && (current.Room == 708 || current.Room == 715) && current.DialogueShop == 1 && current.IntroEvents == 0 && current.Character == 0){
		if(vars.Logging){
			vars.log("Splits reset for either Standard or SpeedRun mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 1 && current.Room == 715 && current.IGT == 0.000000000 && current.IntroEvents == 0 && current.Character == 1 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for Standard mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 6 && current.Room == 715 && current.PressAnyKey == 1 && current.IntroEvents == 0 && current.Character == 1 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for SpeedRun mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 9 && current.Room == 715 && current.PressAnyKey == 1 && current.IntroEvents == 192 && current.Character == 0){
		if(vars.Logging){
			vars.log("Splits reset for Randomizer mode");
		}
		return true;
	}
	else if(current.GameMode == 2 && old.RoomData == 0 && current.RoomData != 0 && current.FileCreateLoad == 1 && current.Character < 3){
		if(vars.Logging){
			vars.log("Splits reset for Boss Rush");
		}
		return true;
	}
	else{
		return false;
	}
}

split{
	if(current.BossDoors > old.BossDoors && (current.GameMode == 1 || current.GameMode == 6 || current.GameMode == 9) && current.RoomData != 0 && current.FileCreateLoad == 0 && current.LoadingFile == 0 && current.PressAnyKey == 0){
		if(vars.Logging){
			vars.log("Auto-split for killing a boss - Value: " + current.BossDoors);
		}
		return true;
	}
	else{
		return false;
	}
}

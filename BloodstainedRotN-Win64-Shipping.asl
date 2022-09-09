/*
Bloodstained: Ritual of the Night - ASL primarily by CptBrian with help from: DarkTechnomancer & hitachihex
ASL Version 3.3 (PC Only)
This ASL is compatible with RotN versions: Steam 1.02,3,4,10,16,17,19,21,30,40 GOG 1.03,4,5,9,10,21 & Cracked Steam 1.02
[LiveSplit] Run as administrator, or this can't read RotN's memory. This can be done by default through Properties -> Compatibility.
[LiveSplit] Edit Layout: Add -> Control -> Scriptable Auto Splitter (don't need to do this if you're using this file through split editor)
[LiveSplit] Layout Settings: Scriptable AutoSplitter -> Browse for this .asl file (^^^)
[LiveSplit] Remember to save your Layout/Splits and compare against Game Time if necessary!
*/

state("BloodstainedRotN-Win64-Shipping", "Unknown-Using Latest"){ //Copy of addresses from whichever the most common version is (Steam 1.40)
	uint FileCreateLoad : 0xA81CEE0, 0x188;
	byte Saving : 0xA81CEE0, 0x280, 0x150, 0x2B5;
	uint Cutscene : 0xA81CEE0, 0x3D0;
	uint BossHP : 0xA81CEE0, 0x408, 0xD18, 0x240;
	uint Gold : 0xA81CEE0, 0x430;
	uint GameClear : 0xA81CEE0, 0x434;
	uint NGPlusCount : 0xA81CEE0, 0x440;
	float IGT : 0xA81CEE0, 0x444;
	byte Difficulty : 0xA81CEE0, 0x448;
	byte GameMode : 0xA81CEE0, 0x449;
	byte Character : 0xA81CEE0, 0x44A;
	uint IntroEvents : 0xA81CEE0, 0x4E8;
	byte BossDoors : 0xA81CEE0, 0x930;
	byte GalleonBannerSeen : 0xA81CEE0, 0x940;
	uint PauseMenu : 0xA81CEE0, 0xA28;
	uint PressAnyKey : 0xA81CEE0, 0xA38;
	uint Loading : 0xA81CEE0, 0xA50;
	uint ShardGet : 0xA81CEE0, 0xA54;
	uint LoadingFile : 0xA81CEE0, 0xA60;
	uint NewAreaBanner : 0xA81CEE0, 0xA64;
	uint LevelUp : 0xA81CEE0, 0xA6C;
	uint UpgradeGet : 0xA81CEE0, 0xA70;
	uint RoomData : 0xA81CEE0, 0x2F8A0;
	uint PreviousRoom : 0xA81CEE0, 0x2F8A0, 0x180;
	uint Room : 0xA81CEE0, 0x2F8A0, 0x188;
	byte RDLoading : 0xA81CEE0, 0x2F8A0, 0x1B0;
	byte IntroChest : 0xA81CEE0, 0x2E8A5;
	uint DialogueShop : 0xA81CEE0, 0x2F978, 0x4E8;
	float PlayerRotation : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x23C;
	float PlayerX : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x260;
	float PlayerY : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x268;
	float PlayerZ : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x264;
	uint PlayerHP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x240;
	uint PlayerMP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x244;
	uint PlayerEXP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x248;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.02 Cracked"){
	uint Loading : 0x6C31250, 0x848; //uworld ptr is +1000 hex from official Steam 1.02/1.03
	uint LoadingFile : 0x6C31250, 0x858;
	byte Saving : 0x6C31250, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6C31250, 0x820;
	uint PressAnyKey : 0x6C31250, 0x830;
	uint ShardGet : 0x6C31250, 0x84C;
	uint NewAreaBanner : 0x6C31250, 0x85C;
	uint LevelUp : 0x6C31250, 0x864;
	uint UpgradeGet : 0x6C31250, 0x868;
	uint Gold : 0x6C31250, 0x254;
	uint Cutscene : 0x6C31250, 0x208;
	uint RoomData : 0x6C31250, 0x2F688;
	uint Room : 0x6C31250, 0x2F688, 0x188;
	uint PreviousRoom : 0x6C31250, 0x2F688, 0x180;
	byte Difficulty : 0x6C31250, 0x26C;
	byte GameMode : 0x6C31250, 0x26D;
	byte Character : 0x6C31250, 0x26E;
	float IGT : 0x6C31250, 0x268;
	uint NGPlusCount : 0x6C31250, 0x264;
	uint GameClear : 0x6C31250, 0x258;
	uint FileCreateLoad : 0x6C31250, 0xE8;
	uint DialogueShop : 0x6C31250, 0x2F760, 0x510;
	uint IntroEvents : 0x6C31250, 0x2E0;
	byte IntroChest : 0x6C31250, 0x2E68D;
	byte RDLoading : 0x6C31250, 0x2F688, 0x1B4;
	float PlayerX : 0x6C31250, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6C31250, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6C31250, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6C31250, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6C31250, 0x728;
	byte GalleonBannerSeen : 0x6C31250, 0x738;
	uint BossHP : 0x6C31250, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6C31250, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6C31250, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6C31250, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.04"){ //Exactly the same as GOG 1.03
	uint Loading : 0x6BFF860, 0x848;
	uint LoadingFile : 0x6BFF860, 0x858;
	byte Saving : 0x6BFF860, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6BFF860, 0x820;
	uint PressAnyKey : 0x6BFF860, 0x830;
	uint ShardGet : 0x6BFF860, 0x84C;
	uint NewAreaBanner : 0x6BFF860, 0x85C;
	uint LevelUp : 0x6BFF860, 0x864;
	uint UpgradeGet : 0x6BFF860, 0x868;
	uint Gold : 0x6BFF860, 0x254;
	uint Cutscene : 0x6BFF860, 0x208;
	uint RoomData : 0x6BFF860, 0x2F688;
	uint Room : 0x6BFF860, 0x2F688, 0x188;
	uint PreviousRoom : 0x6BFF860, 0x2F688, 0x180;
	byte Difficulty : 0x6BFF860, 0x26C;
	byte GameMode : 0x6BFF860, 0x26D;
	byte Character : 0x6BFF860, 0x26E;
	float IGT : 0x6BFF860, 0x268;
	uint NGPlusCount : 0x6BFF860, 0x264;
	uint GameClear : 0x6BFF860, 0x258;
	uint FileCreateLoad : 0x6BFF860, 0xE8;
	uint DialogueShop : 0x6BFF860, 0x2F760, 0x510;
	uint IntroEvents : 0x6BFF860, 0x2E0;
	byte IntroChest : 0x6BFF860, 0x2E68D;
	byte RDLoading : 0x6BFF860, 0x2F688, 0x1B4;
	float PlayerX : 0x6BFF860, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6BFF860, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6BFF860, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6BFF860, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6BFF860, 0x728;
	byte GalleonBannerSeen : 0x6BFF860, 0x738;
	uint BossHP : 0x6BFF860, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6BFF860, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6BFF860, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6BFF860, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.05"){
	uint Loading : 0x6C088E0, 0x848;
	uint LoadingFile : 0x6C088E0, 0x858;
	byte Saving : 0x6C088E0, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6C088E0, 0x820;
	uint PressAnyKey : 0x6C088E0, 0x830;
	uint ShardGet : 0x6C088E0, 0x84C;
	uint NewAreaBanner : 0x6C088E0, 0x85C;
	uint LevelUp : 0x6C088E0, 0x864;
	uint UpgradeGet : 0x6C088E0, 0x868;
	uint Gold : 0x6C088E0, 0x254;
	uint Cutscene : 0x6C088E0, 0x208;
	uint RoomData : 0x6C088E0, 0x2F688;
	uint Room : 0x6C088E0, 0x2F688, 0x188;
	uint PreviousRoom : 0x6C088E0, 0x2F688, 0x180;
	byte Difficulty : 0x6C088E0, 0x26C;
	byte GameMode : 0x6C088E0, 0x26D;
	byte Character : 0x6C088E0, 0x26E;
	float IGT : 0x6C088E0, 0x268;
	uint NGPlusCount : 0x6C088E0, 0x264;
	uint GameClear : 0x6C088E0, 0x258;
	uint FileCreateLoad : 0x6C088E0, 0xE8;
	uint DialogueShop : 0x6C088E0, 0x2F760, 0x510;
	uint IntroEvents : 0x6C088E0, 0x2E0;
	byte IntroChest : 0x6C088E0, 0x2E68D;
	byte RDLoading : 0x6C088E0, 0x2F688, 0x1B4;
	float PlayerX : 0x6C088E0, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6C088E0, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6C088E0, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6C088E0, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6C088E0, 0x728;
	byte GalleonBannerSeen : 0x6C088E0, 0x738;
	uint BossHP : 0x6C088E0, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6C088E0, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6C088E0, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6C088E0, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.03"){ //Exactly the same as Steam 1.02(official/uncracked)
	uint Loading : 0x6C30250, 0x848;
	uint LoadingFile : 0x6C30250, 0x858;
	byte Saving : 0x6C30250, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6C30250, 0x820;
	uint PressAnyKey : 0x6C30250, 0x830;
	uint ShardGet : 0x6C30250, 0x84C;
	uint NewAreaBanner : 0x6C30250, 0x85C;
	uint LevelUp : 0x6C30250, 0x864;
	uint UpgradeGet : 0x6C30250, 0x868;
	uint Gold : 0x6C30250, 0x254;
	uint Cutscene : 0x6C30250, 0x208;
	uint RoomData : 0x6C30250, 0x2F688;
	uint Room : 0x6C30250, 0x2F688, 0x188;
	uint PreviousRoom : 0x6C30250, 0x2F688, 0x180;
	byte Difficulty : 0x6C30250, 0x26C;
	byte GameMode : 0x6C30250, 0x26D;
	byte Character : 0x6C30250, 0x26E;
	float IGT : 0x6C30250, 0x268;
	uint NGPlusCount : 0x6C30250, 0x264;
	uint GameClear : 0x6C30250, 0x258;
	uint FileCreateLoad : 0x6C30250, 0xE8;
	uint DialogueShop : 0x6C30250, 0x2F760, 0x510;
	uint IntroEvents : 0x6C30250, 0x2E0;
	byte IntroChest : 0x6C30250, 0x2E68D;
	byte RDLoading : 0x6C30250, 0x2F688, 0x1B4;
	float PlayerX : 0x6C30250, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6C30250, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6C30250, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6C30250, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6C30250, 0x728;
	byte GalleonBannerSeen : 0x6C30250, 0x738;
	uint BossHP : 0x6C30250, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6C30250, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6C30250, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6C30250, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.04"){
	uint Loading : 0x6C48760, 0x848;
	uint LoadingFile : 0x6C48760, 0x858;
	byte Saving : 0x6C48760, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6C48760, 0x820;
	uint PressAnyKey : 0x6C48760, 0x830;
	uint ShardGet : 0x6C48760, 0x84C;
	uint NewAreaBanner : 0x6C48760, 0x85C;
	uint LevelUp : 0x6C48760, 0x864;
	uint UpgradeGet : 0x6C48760, 0x868;
	uint Gold : 0x6C48760, 0x254;
	uint Cutscene : 0x6C48760, 0x208;
	uint RoomData : 0x6C48760, 0x2F688;
	uint Room : 0x6C48760, 0x2F688, 0x188;
	uint PreviousRoom : 0x6C48760, 0x2F688, 0x180;
	byte Difficulty : 0x6C48760, 0x26C;
	byte GameMode : 0x6C48760, 0x26D;
	byte Character : 0x6C48760, 0x26E;
	float IGT : 0x6C48760, 0x268;
	uint NGPlusCount : 0x6C48760, 0x264;
	uint GameClear : 0x6C48760, 0x258;
	uint FileCreateLoad : 0x6C48760, 0xE8;
	uint DialogueShop : 0x6C48760, 0x2F760, 0x510;
	uint IntroEvents : 0x6C48760, 0x2E0;
	byte IntroChest : 0x6C48760, 0x2E68D;
	byte RDLoading : 0x6C48760, 0x2F688, 0x1B4;
	float PlayerX : 0x6C48760, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6C48760, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6C48760, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6C48760, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6C48760, 0x728;
	byte GalleonBannerSeen : 0x6C48760, 0x738;
	uint BossHP : 0x6C48760, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6C48760, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6C48760, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6C48760, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.09"){
	uint Loading : 0x6C15D60, 0x848;
	uint LoadingFile : 0x6C15D60, 0x858;
	byte Saving : 0x6C15D60, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x6C15D60, 0x820;
	uint PressAnyKey : 0x6C15D60, 0x830;
	uint ShardGet : 0x6C15D60, 0x84C;
	uint NewAreaBanner : 0x6C15D60, 0x85C;
	uint LevelUp : 0x6C15D60, 0x864;
	uint UpgradeGet : 0x6C15D60, 0x868;
	uint Gold : 0x6C15D60, 0x254;
	uint Cutscene : 0x6C15D60, 0x208;
	uint RoomData : 0x6C15D60, 0x2F688;
	uint Room : 0x6C15D60, 0x2F688, 0x188;
	uint PreviousRoom : 0x6C15D60, 0x2F688, 0x180;
	byte Difficulty : 0x6C15D60, 0x26C;
	byte GameMode : 0x6C15D60, 0x26D;
	byte Character : 0x6C15D60, 0x26E;
	float IGT : 0x6C15D60, 0x268;
	uint NGPlusCount : 0x6C15D60, 0x264;
	uint GameClear : 0x6C15D60, 0x258;
	uint FileCreateLoad : 0x6C15D60, 0xE8;
	uint DialogueShop : 0x6C15D60, 0x2F760, 0x510;
	uint IntroEvents : 0x6C15D60, 0x2E0;
	byte IntroChest : 0x6C15D60, 0x2E68D;
	byte RDLoading : 0x6C15D60, 0x2F688, 0x1B4;
	float PlayerX : 0x6C15D60, 0x2F818, 0x0, 0x928, 0x244;
	float PlayerY : 0x6C15D60, 0x2F818, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x6C15D60, 0x2F818, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x6C15D60, 0x2F818, 0x0, 0x928, 0x238;
	byte BossDoors : 0x6C15D60, 0x728;
	byte GalleonBannerSeen : 0x6C15D60, 0x738;
	uint BossHP : 0x6C15D60, 0x240, 0xD30, 0x38;
	uint PlayerHP : 0x6C15D60, 0x2F818, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x6C15D60, 0x2F818, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x6C15D60, 0x2F818, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.10"){ //Pointers match GOG 1.10
	uint Loading : 0x72B3060, 0x878;
	uint LoadingFile : 0x72B3060, 0x888;
	byte Saving : 0x72B3060, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x72B3060, 0x850;
	uint PressAnyKey : 0x72B3060, 0x860;
	uint ShardGet : 0x72B3060, 0x87C;
	uint NewAreaBanner : 0x72B3060, 0x88C;
	uint LevelUp : 0x72B3060, 0x894;
	uint UpgradeGet : 0x72B3060, 0x898;
	uint Gold : 0x72B3060, 0x278; //+24 hex prev
	uint Cutscene : 0x72B3060, 0x218; //+10 hex prev
	uint RoomData : 0x72B3060, 0x2F6B8; //+30 hex prev
	uint Room : 0x72B3060, 0x2F6B8, 0x188;
	uint PreviousRoom : 0x72B3060, 0x2F6B8, 0x180;
	byte Difficulty : 0x72B3060, 0x290;
	byte GameMode : 0x72B3060, 0x291;
	byte Character : 0x72B3060, 0x292;
	float IGT : 0x72B3060, 0x28C; //+24 hex prev
	uint NGPlusCount : 0x72B3060, 0x288;
	uint GameClear : 0x72B3060, 0x27C;
	uint FileCreateLoad : 0x72B3060, 0xE8; //+0 hex prev
	uint DialogueShop : 0x72B3060, 0x2F790, 0x510;
	uint IntroEvents : 0x72B3060, 0x310; //+30 hex prev
	byte IntroChest : 0x72B3060, 0x2E6BD;
	byte RDLoading : 0x72B3060, 0x2F6B8, 0x1B4;
	float PlayerX : 0x72B3060, 0x2F848, 0x0, 0x928, 0x244;
	float PlayerY : 0x72B3060, 0x2F848, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x72B3060, 0x2F848, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x72B3060, 0x2F848, 0x0, 0x928, 0x238;
	byte BossDoors : 0x72B3060, 0x758;
	byte GalleonBannerSeen : 0x72B3060, 0x768;
	uint BossHP : 0x72B3060, 0x250, 0xD30, 0x38;
	uint PlayerHP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.10"){ //Pointers match Steam 1.10
	uint Loading : 0x72B3060, 0x878;
	uint LoadingFile : 0x72B3060, 0x888;
	byte Saving : 0x72B3060, 0x140, 0xF0, 0x285;
	uint PauseMenu : 0x72B3060, 0x850;
	uint PressAnyKey : 0x72B3060, 0x860;
	uint ShardGet : 0x72B3060, 0x87C;
	uint NewAreaBanner : 0x72B3060, 0x88C;
	uint LevelUp : 0x72B3060, 0x894;
	uint UpgradeGet : 0x72B3060, 0x898;
	uint Gold : 0x72B3060, 0x278;
	uint Cutscene : 0x72B3060, 0x218;
	uint RoomData : 0x72B3060, 0x2F6B8;
	uint Room : 0x72B3060, 0x2F6B8, 0x188;
	uint PreviousRoom : 0x72B3060, 0x2F6B8, 0x180;
	byte Difficulty : 0x72B3060, 0x290;
	byte GameMode : 0x72B3060, 0x291;
	byte Character : 0x72B3060, 0x292;
	float IGT : 0x72B3060, 0x28C;
	uint NGPlusCount : 0x72B3060, 0x288;
	uint GameClear : 0x72B3060, 0x27C;
	uint FileCreateLoad : 0x72B3060, 0xE8;
	uint DialogueShop : 0x72B3060, 0x2F790, 0x510;
	uint IntroEvents : 0x72B3060, 0x310;
	byte IntroChest : 0x72B3060, 0x2E6BD;
	byte RDLoading : 0x72B3060, 0x2F6B8, 0x1B4;
	float PlayerX : 0x72B3060, 0x2F848, 0x0, 0x928, 0x244;
	float PlayerY : 0x72B3060, 0x2F848, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x72B3060, 0x2F848, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x72B3060, 0x2F848, 0x0, 0x928, 0x238;
	byte BossDoors : 0x72B3060, 0x758;
	byte GalleonBannerSeen : 0x72B3060, 0x768;
	uint BossHP : 0x72B3060, 0x250, 0xD30, 0x38;
	uint PlayerHP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x72B3060, 0x2F848, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.16"){
	uint Loading : 0x7402720, 0x8A8;
	uint LoadingFile : 0x7402720, 0x8B8;
	byte Saving : 0x7402720, 0x140, 0xF0, 0x285; //+0 hex prev
	uint PauseMenu : 0x7402720, 0x880;
	uint PressAnyKey : 0x7402720, 0x890;
	uint ShardGet : 0x7402720, 0x8AC;
	uint NewAreaBanner : 0x7402720, 0x8BC;
	uint LevelUp : 0x7402720, 0x8C4;
	uint UpgradeGet : 0x7402720, 0x8C8;
	uint Gold : 0x7402720, 0x2A8; //+30 hex prev
	uint Cutscene : 0x7402720, 0x248; //+30 hex prev
	uint RoomData : 0x7402720, 0x2F6E8; //+30 hex prev
	uint Room : 0x7402720, 0x2F6E8, 0x188;
	uint PreviousRoom : 0x7402720, 0x2F6E8, 0x180;
	byte Difficulty : 0x7402720, 0x2C0;
	byte GameMode : 0x7402720, 0x2C1;
	byte Character : 0x7402720, 0x2C2;
	float IGT : 0x7402720, 0x2BC; //+30 hex prev
	uint NGPlusCount : 0x7402720, 0x2B8;
	uint GameClear : 0x7402720, 0x2AC;
	uint FileCreateLoad : 0x7402720, 0xE8; //+0 hex prev
	uint DialogueShop : 0x7402720, 0x2F7C0, 0x510;
	uint IntroEvents : 0x7402720, 0x340; //+30 hex prev
	byte IntroChest : 0x7402720, 0x2E6ED;
	byte RDLoading : 0x7402720, 0x2F6E8, 0x1B4;
	float PlayerX : 0x7402720, 0x2F878, 0x0, 0x928, 0x244;
	float PlayerY : 0x7402720, 0x2F878, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x7402720, 0x2F878, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x7402720, 0x2F878, 0x0, 0x928, 0x238;
	byte BossDoors : 0x7402720, 0x788;
	byte GalleonBannerSeen : 0x7402720, 0x798;
	uint BossHP : 0x7402720, 0x280, 0xD30, 0x38;
	uint PlayerHP : 0x7402720, 0x2F878, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x7402720, 0x2F878, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x7402720, 0x2F878, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.17"){
	uint Loading : 0x7402820, 0x8A8;
	uint LoadingFile : 0x7402820, 0x8B8;
	byte Saving : 0x7402820, 0x140, 0xF0, 0x285; //+0 hex prev
	uint PauseMenu : 0x7402820, 0x880;
	uint PressAnyKey : 0x7402820, 0x890;
	uint ShardGet : 0x7402820, 0x8AC;
	uint NewAreaBanner : 0x7402820, 0x8BC;
	uint LevelUp : 0x7402820, 0x8C4;
	uint UpgradeGet : 0x7402820, 0x8C8;
	uint Gold : 0x7402820, 0x2A8; //+0 hex prev
	uint Cutscene : 0x7402820, 0x248; //+0 hex prev
	uint RoomData : 0x7402820, 0x2F6E8; //+0 hex prev
	uint Room : 0x7402820, 0x2F6E8, 0x188;
	uint PreviousRoom : 0x7402820, 0x2F6E8, 0x180;
	byte Difficulty : 0x7402820, 0x2C0;
	byte GameMode : 0x7402820, 0x2C1;
	byte Character : 0x7402820, 0x2C2;
	float IGT : 0x7402820, 0x2BC; //+0 hex prev
	uint NGPlusCount : 0x7402820, 0x2B8;
	uint GameClear : 0x7402820, 0x2AC;
	uint FileCreateLoad : 0x7402820, 0xE8; //+0 hex prev
	uint DialogueShop : 0x7402820, 0x2F7C0, 0x510;
	uint IntroEvents : 0x7402820, 0x340; //+0 hex prev
	byte IntroChest : 0x7402820, 0x2E6ED;
	byte RDLoading : 0x7402820, 0x2F6E8, 0x1B4;
	float PlayerX : 0x7402820, 0x2F878, 0x0, 0x928, 0x244;
	float PlayerY : 0x7402820, 0x2F878, 0x0, 0x928, 0x24C;
	float PlayerZ : 0x7402820, 0x2F878, 0x0, 0x928, 0x25C;
	float PlayerRotation : 0x7402820, 0x2F878, 0x0, 0x928, 0x238;
	byte BossDoors : 0x7402820, 0x788;
	byte GalleonBannerSeen : 0x7402820, 0x798;
	uint BossHP : 0x7402820, 0x280, 0xD30, 0x38;
	uint PlayerHP : 0x7402820, 0x2F878, 0x0, 0xD30, 0x38;
	uint PlayerMP : 0x7402820, 0x2F878, 0x0, 0xD30, 0x3C;
	uint PlayerEXP : 0x7402820, 0x2F878, 0x0, 0xD30, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.19"){
	uint FileCreateLoad : 0x6F2C990, 0xE8; //+0 hex previous version (Final offset)
	byte Saving : 0x6F2C990, 0x140, 0x120, 0x285; //+0 hex prev, and +30 hex prev on 2nd offset
	uint Cutscene : 0x6F2C990, 0x248; //+0 hex prev
	uint BossHP : 0x6F2C990, 0x280, 0xD50, 0x38; //+0 hex prev, and +20 hex prev on 2nd offset
	uint Gold : 0x6F2C990, 0x2A8; //+0 hex prev
	uint GameClear : 0x6F2C990, 0x2AC; //+0 hex prev
	uint NGPlusCount : 0x6F2C990, 0x2B8; //+0 hex prev
	float IGT : 0x6F2C990, 0x2BC; //+0 hex prev
	byte Difficulty : 0x6F2C990, 0x2C0; //+0 hex prev
	byte GameMode : 0x6F2C990, 0x2C1; //+0 hex prev
	byte Character : 0x6F2C990, 0x2C2; //+0 hex prev
	uint IntroEvents : 0x6F2C990, 0x348; //+8 hex prev
	byte BossDoors : 0x6F2C990, 0x790; //+8 hex prev
	byte GalleonBannerSeen : 0x6F2C990, 0x7A0; //+8 hex prev
	uint PauseMenu : 0x6F2C990, 0x888; //+8 hex prev
	uint PressAnyKey : 0x6F2C990, 0x898; //+8 hex prev
	uint Loading : 0x6F2C990, 0x8B0; //-18 hex prev
	uint ShardGet : 0x6F2C990, 0x8B4; //+8 hex prev
	uint LoadingFile : 0x6F2C990, 0x8C0; //+8 hex prev
	uint NewAreaBanner : 0x6F2C990, 0x8C4; //+8 hex prev
	uint LevelUp : 0x6F2C990, 0x8CC; //+8 hex prev
	uint UpgradeGet : 0x6F2C990, 0x8D0; //+8 hex prev
	uint RoomData : 0x6F2C990, 0x2F700; //+18 hex prev
	uint PreviousRoom : 0x6F2C990, 0x2F700, 0x180; //+18 hex prev
	uint Room : 0x6F2C990, 0x2F700, 0x188; //+18 hex prev
	byte RDLoading : 0x6F2C990, 0x2F700, 0x1B4; //+18 hex prev
	byte IntroChest : 0x6F2C990, 0x2E705; //+18 hex prev
	uint DialogueShop : 0x6F2C990, 0x2F7D8, 0x510; //+18 hex prev
	float PlayerRotation : 0x6F2C990, 0x2F890, 0x0, 0x928, 0x238; //+18 hex prev
	float PlayerX : 0x6F2C990, 0x2F890, 0x0, 0x928, 0x244; //+18 hex prev
	float PlayerY : 0x6F2C990, 0x2F890, 0x0, 0x928, 0x24C; //+18 hex prev
	float PlayerZ : 0x6F2C990, 0x2F890, 0x0, 0x928, 0x25C; //+18 hex prev
	uint PlayerHP : 0x6F2C990, 0x2F890, 0x0, 0xD50, 0x38; //+18 hex prev, and +20 hex prev on 3rd offset
	uint PlayerMP : 0x6F2C990, 0x2F890, 0x0, 0xD50, 0x3C; //+18 hex prev, and +20 hex prev on 3rd offset
	uint PlayerEXP : 0x6F2C990, 0x2F890, 0x0, 0xD50, 0x40; //+18 hex prev, and +20 hex prev on 3rd offset
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.21"){
	uint FileCreateLoad : 0x6F891E0, 0xE8; //+0 hex previous version (Final offset)
	byte Saving : 0x6F891E0, 0x148, 0x120, 0x285; //+0 hex prev, +0 hex prev on 2nd offset, +8 hex prev on 1st offset
	uint Cutscene : 0x6F891E0, 0x250; //+8 hex prev
	uint BossHP : 0x6F891E0, 0x288, 0xD50, 0x38; //+0 hex prev, +0 hex on 2nd offset, +8 hex prev on 1st offset
	uint Gold : 0x6F891E0, 0x2B0; //+8 hex prev
	uint GameClear : 0x6F891E0, 0x2B4; //+8 hex prev
	uint NGPlusCount : 0x6F891E0, 0x2C0; //+8 hex prev
	float IGT : 0x6F891E0, 0x2C4; //+8 hex prev
	byte Difficulty : 0x6F891E0, 0x2C8; //+8 hex prev
	byte GameMode : 0x6F891E0, 0x2C9; //+8 hex prev
	byte Character : 0x6F891E0, 0x2CA; //+8 hex prev
	uint IntroEvents : 0x6F891E0, 0x358; //+10 hex prev
	byte BossDoors : 0x6F891E0, 0x7A0; //+10 hex prev
	byte GalleonBannerSeen : 0x6F891E0, 0x7B0; //+10 hex prev
	uint PauseMenu : 0x6F891E0, 0x898; //+10 hex prev
	uint PressAnyKey : 0x6F891E0, 0x8A8; //+10 hex prev
	uint Loading : 0x6F891E0, 0x8C0; //+10 hex prev
	uint ShardGet : 0x6F891E0, 0x8C4; //+10 hex prev
	uint LoadingFile : 0x6F891E0, 0x8D0; //+10 hex prev
	uint NewAreaBanner : 0x6F891E0, 0x8D4; //+10 hex prev
	uint LevelUp : 0x6F891E0, 0x8DC; //+10 hex prev
	uint UpgradeGet : 0x6F891E0, 0x8E0; //+10 hex prev
	uint RoomData : 0x6F891E0, 0x2F710; //+10 hex prev
	uint PreviousRoom : 0x6F891E0, 0x2F710, 0x180; //+0 hex prev, +10 hex prev on 1st offset
	uint Room : 0x6F891E0, 0x2F710, 0x188; //+0 hex prev, +10 hex prev on 1st offset
	byte RDLoading : 0x6F891E0, 0x2F710, 0x1B4; //+0 hex prev, +10 hex prev on 1st offset
	byte IntroChest : 0x6F891E0, 0x2E715; //+10 hex prev
	uint DialogueShop : 0x6F891E0, 0x2F7E8, 0x510; //+0 hex prev, +10 hex prev on 1st offset
	float PlayerRotation : 0x6F891E0, 0x2F8A0, 0x0, 0x930, 0x238; //+0 hex prev, +8 hex prev on 3rd offset, +10 hex prev on 1st offset
	float PlayerX : 0x6F891E0, 0x2F8A0, 0x0, 0x930, 0x244; //+0 hex prev, +8 hex prev on 3rd offset, +10 hex prev on 1st offset
	float PlayerY : 0x6F891E0, 0x2F8A0, 0x0, 0x930, 0x24C; //+0 hex prev, +8 hex prev on 3rd offset, +10 hex prev on 1st offset
	float PlayerZ : 0x6F891E0, 0x2F8A0, 0x0, 0x930, 0x25C; //+0 hex prev, +8 hex prev on 3rd offset, +10 hex prev on 1st offset
	uint PlayerHP : 0x6F891E0, 0x2F8A0, 0x0, 0xD50, 0x38; //+0 hex prev, +0 hex prev on 3rd offset, +10 hex prev on 1st offset
	uint PlayerMP : 0x6F891E0, 0x2F8A0, 0x0, 0xD50, 0x3C; //+0 hex prev, +0 hex prev on 3rd offset, +10 hex prev on 1st offset
	uint PlayerEXP : 0x6F891E0, 0x2F8A0, 0x0, 0xD50, 0x40; //+0 hex prev, +0 hex prev on 3rd offset, +10 hex prev on 1st offset
}
state("BloodstainedRotN-Win64-Shipping", "GOG 1.21"){ //Matches Steam's, except the base address
	uint FileCreateLoad : 0x6F881E0, 0xE8;
	byte Saving : 0x6F881E0, 0x148, 0x120, 0x285;
	uint Cutscene : 0x6F881E0, 0x250;
	uint BossHP : 0x6F881E0, 0x288, 0xD50, 0x38;
	uint Gold : 0x6F881E0, 0x2B0;
	uint GameClear : 0x6F881E0, 0x2B4;
	uint NGPlusCount : 0x6F881E0, 0x2C0;
	float IGT : 0x6F881E0, 0x2C4;
	byte Difficulty : 0x6F881E0, 0x2C8;
	byte GameMode : 0x6F881E0, 0x2C9;
	byte Character : 0x6F881E0, 0x2CA;
	uint IntroEvents : 0x6F881E0, 0x358;
	byte BossDoors : 0x6F881E0, 0x7A0;
	byte GalleonBannerSeen : 0x6F881E0, 0x7B0;
	uint PauseMenu : 0x6F881E0, 0x898;
	uint PressAnyKey : 0x6F881E0, 0x8A8;
	uint Loading : 0x6F881E0, 0x8C0;
	uint ShardGet : 0x6F881E0, 0x8C4;
	uint LoadingFile : 0x6F881E0, 0x8D0;
	uint NewAreaBanner : 0x6F881E0, 0x8D4;
	uint LevelUp : 0x6F881E0, 0x8DC;
	uint UpgradeGet : 0x6F881E0, 0x8E0;
	uint RoomData : 0x6F881E0, 0x2F710;
	uint PreviousRoom : 0x6F881E0, 0x2F710, 0x180;
	uint Room : 0x6F881E0, 0x2F710, 0x188;
	byte RDLoading : 0x6F881E0, 0x2F710, 0x1B4;
	byte IntroChest : 0x6F881E0, 0x2E715;
	uint DialogueShop : 0x6F881E0, 0x2F7E8, 0x510;
	float PlayerRotation : 0x6F881E0, 0x2F8A0, 0x0, 0x930, 0x238;
	float PlayerX : 0x6F881E0, 0x2F8A0, 0x0, 0x930, 0x244;
	float PlayerY : 0x6F881E0, 0x2F8A0, 0x0, 0x930, 0x24C;
	float PlayerZ : 0x6F881E0, 0x2F8A0, 0x0, 0x930, 0x25C;
	uint PlayerHP : 0x6F881E0, 0x2F8A0, 0x0, 0xD50, 0x38;
	uint PlayerMP : 0x6F881E0, 0x2F8A0, 0x0, 0xD50, 0x3C;
	uint PlayerEXP : 0x6F881E0, 0x2F8A0, 0x0, 0xD50, 0x40;
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.30"){
	uint FileCreateLoad : 0xA84D8E0, 0x188; //+A0 hex previous version (Final offset)
	byte Saving : 0xA84D8E0, 0x280, 0x150, 0x2B5; //+30 hex prev, +30 hex prev on 2nd offset, +138 hex prev on 1st offset
	uint Cutscene : 0xA84D8E0, 0x3D0; //+180 hex prev
	uint BossHP : 0xA84D8E0, 0x408, 0xD18, 0x240; //+208 hex prev, -38 hex on 2nd offset, +180 hex prev on 1st offset
	uint Gold : 0xA84D8E0, 0x430; //+180 hex prev —— Always start with Gold when updating pointers for a new game version to easily find accurate base addresses (1 result) & this memory region
	uint GameClear : 0xA84D8E0, 0x434; //+180 hex prev
	uint NGPlusCount : 0xA84D8E0, 0x440; //+180 hex prev
	float IGT : 0xA84D8E0, 0x444; //+180 hex prev
	byte Difficulty : 0xA84D8E0, 0x448; //+180 hex prev
	byte GameMode : 0xA84D8E0, 0x449; //+180 hex prev
	byte Character : 0xA84D8E0, 0x44A; //+180 hex prev
	uint IntroEvents : 0xA84D8E0, 0x4E8; //+190 hex prev
	byte BossDoors : 0xA84D8E0, 0x930; //+190 hex prev
	byte GalleonBannerSeen : 0xA84D8E0, 0x940; //+190 hex prev
	uint PauseMenu : 0xA84D8E0, 0xA28; //+190 hex prev
	uint PressAnyKey : 0xA84D8E0, 0xA38; //+190 hex prev
	uint Loading : 0xA84D8E0, 0xA50; //+190 hex prev
	uint ShardGet : 0xA84D8E0, 0xA54; //+190 hex prev
	uint LoadingFile : 0xA84D8E0, 0xA60; //+190 hex prev
	uint NewAreaBanner : 0xA84D8E0, 0xA64; //+190 hex prev
	uint LevelUp : 0xA84D8E0, 0xA6C; //+190 hex prev
	uint UpgradeGet : 0xA84D8E0, 0xA70; //+190 hex prev
	uint RoomData : 0xA84D8E0, 0x2F8A0; //+190 hex prev
	uint PreviousRoom : 0xA84D8E0, 0x2F8A0, 0x180; //+0 hex prev, +190 hex prev on 1st offset
	uint Room : 0xA84D8E0, 0x2F8A0, 0x188; //+0 hex prev, +190 hex prev on 1st offset
	byte RDLoading : 0xA84D8E0, 0x2F8A0, 0x1B0; //-4 hex prev, +190 hex prev on 1st offset
	byte IntroChest : 0xA84D8E0, 0x2E8A5; //+190 hex prev
	uint DialogueShop : 0xA84D8E0, 0x2F978, 0x4E8; //-28 hex prev, +190 hex prev on 1st offset
	float PlayerRotation : 0xA84D8E0, 0x2FA30, 0x0, 0x8F8, 0x23C; //+4 hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset —— Order of these changed within region
	float PlayerX : 0xA84D8E0, 0x2FA30, 0x0, 0x8F8, 0x260; //+1C hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset
	float PlayerY : 0xA84D8E0, 0x2FA30, 0x0, 0x8F8, 0x268; //+1C hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset
	float PlayerZ : 0xA84D8E0, 0x2FA30, 0x0, 0x8F8, 0x264; //+8 hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset
	uint PlayerHP : 0xA84D8E0, 0x2FA30, 0x0, 0xD18, 0x240; //+208 hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset —— Pointer scanning for this & checking specific base address helped find correct offsets for other pointers (1 result)
	uint PlayerMP : 0xA84D8E0, 0x2FA30, 0x0, 0xD18, 0x244; //+208 hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset
	uint PlayerEXP : 0xA84D8E0, 0x2FA30, 0x0, 0xD18, 0x248; //+208 hex prev, -38 hex prev on 3rd offset, +190 hex prev on 1st offset
}
state("BloodstainedRotN-Win64-Shipping", "Steam 1.40"){
	uint FileCreateLoad : 0xA81CEE0, 0x188; //+0 hex previous version (Final offset)
	byte Saving : 0xA81CEE0, 0x280, 0x150, 0x2B5; //+0 hex prev
	uint Cutscene : 0xA81CEE0, 0x3D0; //+0 hex prev
	uint BossHP : 0xA81CEE0, 0x408, 0xD18, 0x240; //+0 hex prev
	uint Gold : 0xA81CEE0, 0x430; //+0 hex prev —— Always start with Gold when updating pointers for a new game version to easily find accurate base addresses (1 result) & this memory region
	uint GameClear : 0xA81CEE0, 0x434; //+0 hex prev
	uint NGPlusCount : 0xA81CEE0, 0x440; //+0 hex prev
	float IGT : 0xA81CEE0, 0x444; //+0 hex prev
	byte Difficulty : 0xA81CEE0, 0x448; //+0 hex prev
	byte GameMode : 0xA81CEE0, 0x449; //+0 hex prev
	byte Character : 0xA81CEE0, 0x44A; //+0 hex prev
	uint IntroEvents : 0xA81CEE0, 0x4E8; //+0 hex prev
	byte BossDoors : 0xA81CEE0, 0x930; //+0 hex prev
	byte GalleonBannerSeen : 0xA81CEE0, 0x940; //+0 hex prev
	uint PauseMenu : 0xA81CEE0, 0xA28; //+0 hex prev
	uint PressAnyKey : 0xA81CEE0, 0xA38; //+0 hex prev
	uint Loading : 0xA81CEE0, 0xA50; //+0 hex prev
	uint ShardGet : 0xA81CEE0, 0xA54; //+0 hex prev
	uint LoadingFile : 0xA81CEE0, 0xA60; //+0 hex prev
	uint NewAreaBanner : 0xA81CEE0, 0xA64; //+0 hex prev
	uint LevelUp : 0xA81CEE0, 0xA6C; //+0 hex prev
	uint UpgradeGet : 0xA81CEE0, 0xA70; //+0 hex prev
	uint RoomData : 0xA81CEE0, 0x2F8A0; //+0 hex prev
	uint PreviousRoom : 0xA81CEE0, 0x2F8A0, 0x180; //+0 hex prev
	uint Room : 0xA81CEE0, 0x2F8A0, 0x188; //+0 hex prev
	byte RDLoading : 0xA81CEE0, 0x2F8A0, 0x1B0; //+0 hex prev
	byte IntroChest : 0xA81CEE0, 0x2E8A5; //+0 hex prev
	uint DialogueShop : 0xA81CEE0, 0x2F978, 0x4E8; //+0 hex prev
	float PlayerRotation : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x23C; //+0 hex prev
	float PlayerX : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x260; //+0 hex prev
	float PlayerY : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x268; //+0 hex prev
	float PlayerZ : 0xA81CEE0, 0x2FA30, 0x0, 0x8F8, 0x264; //+0 hex prev
	uint PlayerHP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x240; //+0 hex prev
	uint PlayerMP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x244; //+0 hex prev
	uint PlayerEXP : 0xA81CEE0, 0x2FA30, 0x0, 0xD18, 0x248; //+0 hex prev
}

startup{
	vars.ASLVersion = "ASL Version 3.3 - September 9, 2022";

	settings.Add(vars.ASLVersion, false);
	settings.Add("WebsiteTip", false, "Click 'Website' button for more info!", vars.ASLVersion);
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
		vars.log("ASL file loaded(" + vars.ASLVersion + ")");
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
	else if(MD5Hash == "446C47126FF4A483E547064E2A06337E"){
		version = "GOG 1.10";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "AAF598E8FFDEAF85D461A5E33F1785DF"){
		version = "Steam 1.16";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "7A08E5B90E34D50A1645FBFE1117EDA2"){
		version = "Steam 1.17";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "2F765A9F7D05F9B812859578CEE5B261"){
		version = "Steam 1.19";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "22ED1244BE67360036FB6EE318BD5E79"){
		version = "Steam 1.21";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "1408DADA2F05DBC603573F55DA0CAE8E"){
		version = "GOG 1.21";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "0B9F93A255CD4172CE20976A496E5FD5"){
		version = "Steam 1.30";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else if(MD5Hash == "6FAF2CF582CCD64A627F9C6D61FD68F9"){
		version = "Steam 1.40";
		vars.log("Detected game version: " + version + " - MD5Hash: " + MD5Hash);
	}
	else{
		version = "Unknown-Using Latest";
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
			vars.log("File loaded. Some values: Loading=" + current.Loading + ", LoadingFile=" + current.LoadingFile + ", Saving=" + current.Saving + ", PauseMenu=" + current.PauseMenu + ", PressAnyKey=" + current.PressAnyKey + ", Gold=" + current.Gold + ", Cutscene=" + current.Cutscene + ", RoomData=" + current.RoomData + ", Room=" + current.Room + ", PreviousRoom=" + current.PreviousRoom + ", Difficulty=" + current.Difficulty + ", GameMode=" + current.GameMode + ", Character=" + current.Character + ", IGT=" + current.IGT + ", NGPlusCount=" + current.NGPlusCount + ", GameClear=" + current.GameClear + ", DialogueShop=" + current.DialogueShop + ", IntroEvents=" + current.IntroEvents + ", IntroChest=" + current.IntroChest + ", RDLoading=" + current.RDLoading + ", PlayerX=" + current.PlayerX + ", PlayerY=" + current.PlayerY + ", PlayerZ=" + current.PlayerZ + ", PlayerRotation=" + current.PlayerRotation);
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
	/*Quick DebugView Test: Also, if load removal isn't working, make damn sure you're comparing against GAME time...*/
	//print("FileCreateLoad=="+current.FileCreateLoad+", LoadingFile=="+current.LoadingFile+", Saving=="+current.Saving);
}
 
isLoading{ //Make sure to compare against GAME time, or this won't work!
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
	if(current.GameMode == 6 && (current.Room == 708 || current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 708 || current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && old.DialogueShop == 1 && current.DialogueShop == 0 && current.Character == 0 && current.IntroEvents == 128 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 1 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && old.IGT == 0.000000000 && current.IGT != 0.000000000 && current.Character == 1 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 924 || current.Room == 936) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 3 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Aurora)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 924 || current.Room == 936) && old.IGT == 0.000000000 && current.IGT != 0.000000000 && current.Character == 3 && current.IntroEvents == 0 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Aurora)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 729 || current.Room == 728 || current.Room == 925 || current.Room == 937) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 6 && current.IntroEvents == 1075838976){
		if(vars.Logging){
			vars.log("Splits started for SpeedRun mode (Bloodless)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 729 || current.Room == 728 || current.Room == 925 || current.Room == 937) && old.IGT == 0.000000000 && current.IGT != 0.000000000 && current.Character == 6 && current.IntroEvents == 1075838976){
		if(vars.Logging){
			vars.log("Splits started for Standard mode (Bloodless)");
		}
		return true;
	}
	else if(current.GameMode == 9 && (current.Room == 708 || current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && old.PressAnyKey == 1 && current.PressAnyKey == 0 && current.Character == 0 && current.IntroEvents == 192 && current.IntroChest == 0){
		if(vars.Logging){
			vars.log("Splits started for Randomizer mode");
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
	if((current.GameMode == 1 || current.GameMode == 6) && (current.Room == 708 || current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && current.DialogueShop == 1 && current.IntroEvents == 0 && current.Character == 0){
		if(vars.Logging){
			vars.log("Splits reset for either Standard or SpeedRun mode (Miriam)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && current.PressAnyKey == 1 && current.IntroEvents == 0 && current.Character == 1 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for SpeedRun mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && current.IGT == 0.000000000 && current.IntroEvents == 0 && current.Character == 1 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for Standard mode (Zangetsu)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 924 || current.Room == 936) && current.PressAnyKey == 1 && current.IntroEvents == 0 && current.Character == 3 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for SpeedRun mode (Aurora)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 924 || current.Room == 936) && current.IGT == 0.000000000 && current.IntroEvents == 0 && current.Character == 3 && current.GalleonBannerSeen == 0){
		if(vars.Logging){
			vars.log("Splits reset for Standard mode (Aurora)");
		}
		return true;
	}
	else if(current.GameMode == 6 && (current.Room == 729 || current.Room == 728 || current.Room == 925 || current.Room == 937) && current.PreviousRoom == 0 && current.IntroEvents == 1075838976 && current.Character == 6 && current.RDLoading == 1 && old.RDLoading == 0){
		if(vars.Logging){
			vars.log("Splits reset for SpeedRun mode (Bloodless)");
		}
		return true;
	}
	else if(current.GameMode == 1 && (current.Room == 729 || current.Room == 728 || current.Room == 925 || current.Room == 937) && current.PreviousRoom == 0 && current.IGT == 0.000000000 && current.IntroEvents == 1075838976 && current.Character == 6 && current.RDLoading == 1 && old.RDLoading == 0){
		if(vars.Logging){
			vars.log("Splits reset for Standard mode (Bloodless)");
		}
		return true;
	}
	else if(current.GameMode == 9 && (current.Room == 715 || current.Room == 728 || current.Room == 727 || current.Room == 924 || current.Room == 936) && current.PressAnyKey == 1 && current.IntroEvents == 192 && current.Character == 0){
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
	if(current.BossDoors > old.BossDoors && (current.GameMode == 1 || current.GameMode == 6 || current.GameMode == 9 || current.GameMode == 5) && current.RoomData != 0 && current.FileCreateLoad == 0 && current.LoadingFile == 0 && current.PressAnyKey == 0
	   && !(current.PlayerX > 79350 && current.PlayerX < 80650 && current.PlayerY > 19400 && current.PlayerY < 20150 && current.PlayerZ == 0)){ //Excluding Gebel/Miriam Fight room for this method
		if(vars.Logging){
			vars.log("Auto-split for killing a boss - Value: " + current.BossDoors);
		}
		return true;
	}
	else if((current.PlayerX > 79350 && current.PlayerX < 80650 && current.PlayerY > 19400 && current.PlayerY < 20150 && current.PlayerZ == 0) && (current.GameMode == 1 || current.GameMode == 6 || current.GameMode == 9) && current.RoomData != 0 && current.FileCreateLoad == 0 && current.LoadingFile == 0 && current.PressAnyKey == 0 && current.PlayerHP > 0 && current.BossHP == 0 && old.BossHP > 0){
		if(vars.Logging){
			vars.log("Auto-split on the final hit for fights in the Gebel/Miriam ending room");
		}
		return true;
	}
	else{
		return false;
	}
}

/*
Zangetsu Mode Miriam Fight(Gebel's Arena):
X: 79350 - 80650
Y: 19400 - 20150
Z: 0 - 0
12000 HP on all difficulties. Final offset=38
Room ID(1.10): 191973
------------------------------------- Boss HP Pointer appears to work for pretty much all(?) bosses.
Gebel Fight(same arena as above):
X: 79350 - 80650
Y: 19400 - 20150
Z: 0 - 0
2800 HP on Normal. Final offset=38
Room ID(1.10): 191973
*/

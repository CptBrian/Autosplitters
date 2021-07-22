/*
	Yooka-Laylee and the Impossible Lair (Released October 8, 2019)
	ASL originally by DerKO with revamps by CptBrian ♥ & tipdaddy78 (aka tipW)
	Thanks to "thisis2838" & "apple1417" for helping me figure out a few WriteBytes lines for Hard Mode, and "Ero" for fixing the XPos pointer in Steam 1.04.
*/
state("YLILWin64", "Unknown Version"){ // Defaults to Steam 1.04.
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA0;
	float YPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA4;
	float ZPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA8;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
}

state("YLILWin64", "Steam 1.01"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
}

state("YLILWin64", "EGS 1.02"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x68, 0x28, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x258, 0x80, 0x60;
	byte beeBreak       : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x2D8, 0x80, 0x0, 0x278, 0x68, 0x30;
	byte isRunningTasks : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x330, 0x398, 0x20;
	byte isLoading      : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x330, 0x398, 0x21;
	byte isInteractable : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x330, 0x398, 0x23;
	float XPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	int beeTotal        : "mono-2.0-bdwgc.dll", 0x43ECC0, 0x98, 0x10, 0x728, 0x10, 0x30, 0x0, 0x18, 0x8, 0x70, 0x0, 0x2C;
	int Level           : "mono-2.0-bdwgc.dll", 0x43ECC0, 0xA8, 0x348, 0x10, 0xC8;
	byte LevelLoad      : "mono-2.0-bdwgc.dll", 0x43ECC0, 0xA8, 0x348, 0x10, 0xD0;
	byte playerControl  : "mono-2.0-bdwgc.dll", 0x43ECC0, 0xA8, 0xC78, 0x8, 0x18, 0x58, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono-2.0-bdwgc.dll", 0x43ECC0, 0xA8, 0xC78, 0x8, 0x18, 0x58, 0x20, 0x18, 0x158, 0x38;
}

state("YLILWin64", "Steam 1.03"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14; // Coordinates not perfect, but decent. Needs replacement.
	float ZPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
}

state("YLILWin64", "Demo 1.03"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14;
	float ZPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C;
}

state("YLILWin64", "Steam 1.04"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA0; // Coordinates are perfect now.
	float YPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA4;
	float ZPos          : "mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA8;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C; // Potential consistency problem in 1.04?
	// Hard Mode Additions:
	int ChkMtDeaths     : "mono.dll", 0x264A28, 0x1C0, 0xE10, 0x3C8, 0x300, 0x58, 0x198, 0x18, 0x10, 0x30, 0x30, 0x68, 0x28, 0x3C; // Death Count for always-current CheckMate (to prevent warping)
	int MaxHealth       : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x34; // Prevents Bell interaction when set to 1 (2=Laylee, 1=Yooka, 0=Dead)
	long EquippedTonic1 : "mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x20;
	long EquippedTonic2 : "mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x28;
	long EquippedTonic3 : "mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x30;
	long EquippedTonic4 : "mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x38;
	long IDLessChkMts   : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0x38; // Stored Tonic IDs (randomized) to equip
	long IDRollEvFaster : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0xA8;
	long IDSpotlight    : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0x180;
	long IDGooglyEyes   : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0x80;
	long IDDerorrim     : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0x130;
	long IDChamColors   : "mono.dll", 0x2675E0, 0x40, 0x138, 0x20, 0x20, 0x20, 0x50, 0xB8, 0x1C8;
	short ULCatchee     : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x20, 0x18; // If Catchee is not found & bought, tonic selection menu hard locks the game
	byte ULLessChkMts   : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x38, 0x18; // Tonic Unlock Flags (forced tonics must also be "found" to prevent a hard-lock)
	byte ULRollEvFaster : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0xA8, 0x18;
	byte ULSpotlight    : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x180, 0x18;
	byte ULGooglyEyes   : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x80, 0x18;
	byte ULDerorrim     : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x130, 0x18;
	byte ULChamColors   : "mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x1C8, 0x18;
	int DLCTonics       : "mono.dll", 0x2675E0, 0x40, 0x168, 0x68, 0x0, 0x3E8, 0x0, 0x48; // Unlocks DLC tonics when set to 1 (for current file session only)
	int Paywall1Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x38, 0x28; // Change cost of paywalls
	int Paywall2Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x30, 0x28; // I want to make sure they're ALL functioning before attempting to overwrite
	int Paywall3Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x28, 0x28;
	int Paywall4Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x48, 0x28;
	int Paywall5Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x40, 0x28;
	int Paywall6Cost    : "mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x20, 0x28;
	long PaywallText    : "mono.dll", 0x4F8AF8, 0xEC14; // Check if text has been overwritten yet
	byte TonicsUnlocked : "mono.dll", 0x2675E0, 0x90, 0x10, 0x260, 0x18, 0x30, 0x8, 0x108, 0x30, 0x18, 0x28, 0x54; // Unlocks tonic menus & the ability to use them
}

state("YLILWin64", "EGS 1.04"){
	int owTonics        : "UnityPlayer.dll", 0x144DBD8, 0x8, 0x8, 0x8, 0x2D8, 0x28, 0x18, 0x28;
	byte Restart        : "UnityPlayer.dll", 0x146ECE8, 0x128, 0x8, 0x8, 0x80, 0x60;
	float XPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x10;
	float YPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x14; // Coordinates not perfect, but decent. Needs replacement.
	float ZPos          : "UnityPlayer.dll", 0x147A5B0, 0x70, 0x0, 0x60, 0x70, 0x18;
	byte beeBreak       : "mono.dll", 0x2675E0, 0x40, 0xE30, 0x90;
	byte isRunningTasks : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x97;
	byte isLoading      : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x98;
	byte isInteractable : "mono.dll", 0x2675E0, 0x48, 0xE68, 0x98, 0x9A;
	int Level           : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xC8;
	byte LevelLoad      : "mono.dll", 0x2675E0, 0xA0, 0x4B8, 0x8, 0x110, 0x130, 0x60, 0xD0;
	byte playerControl  : "mono.dll", 0x2675E0, 0xA0, 0xC28, 0x8, 0x20, 0x30, 0x20, 0x18, 0x78, 0x50, 0x58, 0xA6;
	int Health          : "mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38;
	int beeTotal        : "mono.dll", 0x268180, 0x50, 0xCE0, 0x20, 0x50, 0x30, 0x8, 0x18, 0x0, 0x2C; // Potential consistency problem in 1.04?
}

startup{
	vars.HardMode = "HARD Mode game modification — All you need! (info on forum!)";
	vars.ILRunsMode = "IL Mode: Start on control, Auto-Reset, Split on hive break";
	vars.TutStart = "TUTORIAL Entry Start";
	vars.LairSplits = "LAIR Splits on Entry, Sections, Fights & Ending";
	vars.BeeSplits = "BEES: Split on all bees (not for IL Mode)";
	vars.EntrySplits = "CHAPTER Entry splits (use BEES for exit)";
	vars.PagieSplits = "PAGIE Entry & Exit splits";
	vars.TonicSplits = "TONICS: Split on all grabbed OW Tonics (not Catchee)";
	vars.OWCat = "OVERWORLD Entry Start";
	vars.SpecificBees = "Specific BEES: Split at specific Bee Counts (not for IL Mode)";
	vars.SpecificTonics = "Specific TONICS: Split at a specific Tonic Count (excluding Catchee)";
	vars.AltLoadRemove = "Alternate Load Removal Method";
	
	
	settings.Add(vars.HardMode, false, vars.HardMode);
		settings.Add("Spotlight", false, "Harder: Replace Chameleon Colors with Spotlight", vars.HardMode);
		settings.Add("Mirrored", false, "Harder: Replace Chameleon Colors with Mirrored Mode", vars.HardMode);
	settings.Add(vars.ILRunsMode, false);
	settings.Add(vars.TutStart, false);
	settings.Add(vars.LairSplits, false);
		settings.Add("LairSplitFromTut", false, "Split when entering from Tutorial", vars.LairSplits);
		settings.Add("LairDeathSplit", true, "Section 1 Death split", vars.LairSplits);
	settings.Add(vars.BeeSplits, false);
	settings.Add(vars.EntrySplits, false);
	settings.Add(vars.PagieSplits, false);
	settings.Add(vars.TonicSplits, false);
	settings.Add(vars.OWCat, false);
	settings.Add(vars.SpecificBees, false);
	for (var i = 1; i < 49; i++){
		settings.Add(i + " Bees", false, i + " Bees", vars.SpecificBees);
	}
	settings.Add(vars.SpecificTonics, false);
	for (var i = 1; i < 61; i++){
		settings.Add(i + " Tonics", false, i + " Tonics", vars.SpecificTonics);
	}
	settings.Add(vars.AltLoadRemove, false);
	settings.Add("Technical", true, "Technical");
		settings.Add("Logging", false, "Debug Logging (Log files help solve auto-splitting issues)", "Technical");
		settings.Add("TestDelaysRestart", false, "Test delays: Transitions to Player Control. (Restarts & OW warps)", "Technical");
		settings.Add("TestDelaysBeeBreakToLoad", false, "Test delays: IL Bee Break to Loading", "Technical");
}

init{
	// This code identifies different YookaLayleeIL versions with MD5 checksum on the Assembly-CSharp.dll.
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create()){
		using (var s = File.Open(modules.First().FileName.Substring(0, modules.First().FileName.Length-13)
		+ "YLILWin64_Data\\Managed\\Assembly-CSharp.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite)){
			exeMD5HashBytes = md5.ComputeHash(s);
		} 
	}
	vars.MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	print("MD5Hash: " + vars.MD5Hash.ToString()); // Prints detected MD5 once to see from DebugView, so I don't need to enable logging to get the MD5.
	
	if(vars.MD5Hash == "E53699BBB90A71D45D9531209B900AAC") version = "Steam 1.01";
	else if(vars.MD5Hash == "D87ABA30D79B660B27A6AAB3994ACCCB") version = "Steam 1.03";
	else if(vars.MD5Hash == "2C94F6C5E858B5D33141EF3715294B39") version = "EGS 1.02"; // EGS Version number 1.0.27910
	else if(vars.MD5Hash == "AA8CB9D44275AF063A760480B08773AB") version = "Demo 1.03";
	else if(vars.MD5Hash == "ECE3D69E79D60DBC87DFE356D9DB4EEC") version = "Steam 1.04";
	else if(vars.MD5Hash == "0568E1950E39A1D3FE04106F07FE4FE4") version = "EGS 1.04"; // EGS Version number 1.0.28131 and now uses mono.dll instead of mono-2.0-bdwgc.dll from 1.02
	else version = "Unknown Version";
	
	// Logging variables
	vars.logFileName = "YLIL.log";
	vars.maxFileSize = 4000000;
	vars.timerSecondOLD = -1;
	vars.timerSecond = 0;
	vars.timerMinuteOLD = -1;
	vars.timerMinute = 0;
	vars.hasLoggedLoad = false;
	
	// If the logging setting is checked, this function logs game info to a log file.
	// If the file reaches maz size, it will delete the oldest entries.
	vars.Log = (Action<string>)(myString => {
		if(settings["Logging"]){
			vars.logwriter = File.AppendText(vars.logFileName);
			print(myString);
			vars.logwriter.WriteLine(myString);
			vars.logwriter.Close();

			if((new FileInfo(vars.logFileName)).Length > vars.maxFileSize){
				string[] lines = File.ReadAllLines(vars.logFileName);
				File.WriteAllLines(vars.logFileName, lines.Skip(lines.Length/8).ToArray());
			}
		} else
			if(File.Exists(vars.logFileName))
				File.Delete(vars.logFileName);
	});
	
	vars.loadingFl = 0;
	vars.HardCoin = false;
}

start{
	if(settings[vars.ILRunsMode] && current.Restart == 1 && current.playerControl == 1 && old.playerControl == 0 && current.Level != 10 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("– Starting timer for normal ILs! –\n");
		return true;						        
	} else if(settings["TestDelaysRestart"] && current.Restart == 0 && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("– Starting timer with old IL timing to test transition delay times! –\n");
		return true;						        
	} else if(settings["TestDelaysBeeBreakToLoad"] && current.beeBreak == 1 && old.beeBreak == 2 && !settings["TestDelaysRestart"]){
		vars.Log("– Starting timer on bee break to test how long it takes to hit the load! –\n");
		return true;						        
	} else if(settings[vars.OWCat] && current.Level == 10 && current.LevelLoad == 0 && old.LevelLoad == 1){
		vars.Log("– Loaded into overworld. Starting timer! –\n");
		return true;						        
	} else if(settings[vars.TutStart] && current.Level == 4 && current.LevelLoad == 0 && old.LevelLoad == 1){
		vars.Log("– Loaded into tutorial. Starting timer! –\n");
		return true;						        
	}
}

reset{
	if(current.Restart == 0 && old.Restart == 1 && (settings[vars.ILRunsMode] || settings["TestDelaysRestart"])){
		vars.Log("– Resetting timer on level restart! (IL mode enabled or testing restart delay). –\n");
		return true;
	} else if(current.isLoading == 1 && current.Level > 10 && settings[vars.ILRunsMode] && !settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("– Loaded into chapter or pagie from overworld. Resetting timer! –\n");
		return true;
	} else if(current.beeBreak == 2 && settings["TestDelaysBeeBreakToLoad"]){
		vars.Log("– Hive wasn't broken while delay test is enabled. Resetting timer! –\n");
		return true;
	}
}

isLoading{
	if(settings[vars.AltLoadRemove] && vars.loadingFl == 1 && current.isLoading == 1 && current.isInteractable == 0 && current.LevelLoad == 1){
	// Alternative Load Removal — Variable change happens in update{} — Is this consistent & reliable load removal?
		if(!vars.hasLoggedLoad){
			vars.Log("- Pausing the timer. (Level Changed) -\n");
			vars.hasLoggedLoad = true;
		}
		return true;
	} else { // Everything NOT using Alternative Load Removal goes in here
		if(current.isLoading == 1 && current.LevelLoad == 1 && current.isInteractable == 0 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"]){
		// Standard load removal (isInteractable checks for tonic menu, LevelLoad excludes fades & cutscene inconsistencies)
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the Timer (Entered a Load) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else if(current.isRunningTasks == 1 && version == "EGS 1.02" && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && !settings[vars.TutStart]){
		// Loading fix to bring EGS load removal in line with Steam1.03, excluded in OWT, but addressed below (EGS version utilizes isRunningTasks for loads)
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the Timer (Entered a Load - No Tut Start - EGS) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else if(current.isRunningTasks == 1 && version == "EGS 1.02" && current.Level != 4 && !settings["TestDelaysRestart"] && !settings["TestDelaysBeeBreakToLoad"] && !settings[vars.OWCat] && settings[vars.TutStart]){
		// Tut Start Loading fix to bring EGS load removal in line with Steam1.03, excluded in OWT, but addressed below (EGS version utilizes isRunningTasks for loads)
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the Timer (Entered a Load - Tut Start - EGS) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else if(settings[vars.OWCat] && current.isRunningTasks == 1 && current.isInteractable == 0 && current.playerControl == 0 && current.Level != 4 && version == "EGS 1.02"){
		// OW Cat adjusted load removal for EGS 1.02 (EGS version utilizes isRunningTasks for loads) - Fix for EGS OWT start pausing a few seconds, which still happens if Control pointer fails
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the Timer (Entered a Load - Overworld Cat. - EGS) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else if(settings["TestDelaysRestart"] && current.Restart == 1 && current.playerControl == 1){
		// Pauses timer when you gain control with the restart delay test setting
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the game condition (Testing Start Delay) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else if(settings["TestDelaysBeeBreakToLoad"] && current.beeBreak == 1 && current.isLoading == 1){
		// Pauses timer when you hit a load after the 2D beeBreak sequence with the delay test setting
			if(!vars.hasLoggedLoad){
				vars.Log("- Pausing the game condition (Testing Bee Break Delay) -\n");
				vars.hasLoggedLoad = true;
			}
			return true;
		} else {
			return false; // Required addition or the timer never un-pauses after meeting a condition above one time
		}
	}
}

split{
	if(current.beeBreak == 1 && old.beeBreak == 2 && settings[vars.ILRunsMode]){
		vars.Log("- Splitting for Bee Break in IL Mode -\n");
		return true;						        
	} else if(current.Level > 10 && current.Level < 31 && old.Level == 10 && current.Level != 10 && settings[vars.EntrySplits]){
		vars.Log("- Splitting due to Chapter Entry -\n"); // Chapter ID range: 11-30
		return true;						        
	} else if(current.Level > 30 && current.Level < 47 && old.Level == 10 && settings[vars.PagieSplits]){
		vars.Log("- Splitting due to Pagie Entry -\n"); // Pagie ID range: 31-46
		return true;						        
	} else if(old.Level > 30 && old.Level < 47 && current.Level == 10 && settings[vars.PagieSplits]){
		vars.Log("- Splitting due to Pagie Exit -\n"); // Pagie ID range: 31-46
		return true;						        
	} else if(current.Level > 5 && current.Level < 9 && current.isLoading == 1 && old.isLoading == 0 && settings[vars.LairSplits]){
		vars.Log("- Splitting between Lair sections or from Tutorial -\n"); // Lair ID range: 5-8
		return true;						        
	} else if(current.Level == 5 && old.Level == 10 && settings[vars.LairSplits]){
		vars.Log("- Splitting due to Entering Lair Section 1 from overworld -\n");
		return true;						       
	} else if(current.Level == 5 && old.Level == 4 && settings["LairSplitFromTut"]){
		vars.Log("- Splitting due to Entering Lair from Tutorial -\n");
		return true;						        
	} else if(current.Level == 10 && old.Level == 5 && current.Restart == 1 && settings[vars.LairSplits] && settings["LairDeathSplit"]){
		vars.Log("- Splitting due to Lair Section 1 Death -\n"); // Prevents splitting from manually exiting via menu
		return true;						        
	} else if(current.Level == 5 && current.XPos == -133 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("– Splitting after Lair fight 1! –\n");
		return true;						        
	} else if(current.Level == 6 && current.XPos == -96 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("– Splitting after Lair fight 2! –\n");
		return true;						       
	} else if(current.Level == 7 && current.XPos == -144 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("– Splitting after Lair fight 3! –\n");
		return true;						       
	} else if(current.Level == 8 && current.XPos < 0 && old.XPos == -226 && settings[vars.LairSplits]){
		vars.Log("– Splitting after Lair fight 4! –\n");
		return true;						        
	} else if(current.Level == 10 && old.Level == 8 && current.Restart == 1 && current.Health > 0 && settings[vars.LairSplits]){
		vars.Log("– Splitting on Lair ending! –\n"); // Prevents splitting from manually exiting via menu or dying
		return true;						        
	} else if((current.beeTotal - old.beeTotal) == 1 && settings[vars.BeeSplits]){
		vars.Log("- Splitting due to Bee Collection -\n");
		return true;						        
	} else if(settings[vars.SpecificBees] && (current.beeTotal - old.beeTotal) == 1){
		if(settings[current.beeTotal + " Bees"]){
			vars.Log("- Splitting due to Bee Collection -\n");
			return true; 
		}
	} else if((current.owTonics - old.owTonics) == 1 && settings[vars.TonicSplits]){
		vars.Log("- Splitting due to Tonic Collection -\n");
		return true;						       
	} else if(settings[vars.SpecificTonics] && (current.owTonics - old.owTonics) == 1){
		if(settings[current.owTonics + " Tonics"]){
			vars.Log("- Splitting due to Tonic Collection -\n");
			return true; 
		}
	}
}

update{
	// Logging
	vars.timerMinute = timer.CurrentTime.RealTime.Value.Minutes;
	vars.timerSecond = timer.CurrentTime.RealTime.Value.Seconds;
	
	if(vars.timerMinute != vars.timerMinuteOLD){
		vars.timerMinuteOLD = vars.timerMinute;
		vars.Log("\n" +
			"TimeOfDay: "                + DateTime.Now.ToString() + "\n" +
			"Version: "                  + version.ToString() + "\n" +
			"MD5Hash: "                  + vars.MD5Hash.ToString() + "\n" +
			"ILRunsMode:"                + settings[vars.ILRunsMode].ToString() + "\n" +
			"TutStart:"                  + settings[vars.TutStart].ToString() + "\n" +
			"LairSplits: "               + settings[vars.LairSplits].ToString() + "\n" +
			"LairSplitFromTut: "         + settings["LairSplitFromTut"].ToString() + "\n" +
			"LairDeathSplit: "           + settings["LairDeathSplit"].ToString() + "\n" +
			"EntrySplits: "              + settings[vars.EntrySplits].ToString() + "\n" +
			"BeeSplits: "                + settings[vars.BeeSplits].ToString() + "\n" +
			"TonicSplits: "              + settings[vars.TonicSplits].ToString() + "\n" +
			"PagieSplits: "              + settings[vars.PagieSplits].ToString() + "\n" +
			"OWCat: "                    + settings[vars.OWCat].ToString() + "\n" +
			"TestDelaysRestart: "        + settings["TestDelaysRestart"].ToString() + "\n" +
			"TestDelaysBeeBreakToLoad: " + settings["TestDelaysBeeBreakToLoad"].ToString() + "\n");
	}

	if(vars.timerSecond != vars.timerSecondOLD){
		vars.timerSecondOLD = vars.timerSecond;
		vars.Log(
			"RealTime: "       + timer.CurrentTime.RealTime.Value.ToString(@"hh\:mm\:ss\.fff") + "\n" +
			"GameTime: "       + timer.CurrentTime.GameTime.Value.ToString(@"hh\:mm\:ss\.fff") + "\n" +
			"XPos: "           + current.XPos + "\n" +
			"YPos: "           + current.YPos + "\n" +
			"ZPos: "           + current.ZPos + "\n" +
			"isRunningTasks: " + current.isRunningTasks + "\n" +
			"isLoading: "      + current.isLoading + "\n" +
			"isInteractable: " + current.isInteractable + "\n" +
			"Restart: "        + current.Restart + "\n" +
			"beeBreak: "       + current.beeBreak + "\n" +
			"playerControl: "  + current.playerControl + "\n" +
			"owTonics: "       + current.owTonics + "\n" +
			"beeTotal: "       + current.beeTotal + "\n" +
			"Level: "          + current.Level + "\n" +
			"LevelLoad: "      + current.LevelLoad + "\n" +
			"Health: "         + current.Health + "\n");
	}

	// Alt Load Removal variable updates
	if(settings[vars.AltLoadRemove] && current.Level != old.Level){
		vars.loadingFl = 1; // Variable used to keep the timer paused when level ID changes
	}
	if(settings[vars.AltLoadRemove] && vars.loadingFl == 1 && current.isLoading == 0 && old.isLoading == 1){
		vars.loadingFl = 0; // Unpause when loading stops
		vars.hasLoggedLoad = false;
	}
	
	// Hard Mode — https://www.speedrun.com/ylil/thread/89533
	if(settings[vars.HardMode]){
		if(current.Level == 10 && current.Health != 2){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp); // Health pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) ); // Return Laylee in 3D overworld
		}
		if(current.Level != 10 && current.Health != 1 && vars.HardCoin == false){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp); // Health pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)1) ); // Remove Laylee in 2D stages, excluding Laylee slam coin doors
		}
		if(current.MaxHealth != 1){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x34).DerefOffsets(game, out temp); // MaxHealth pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)1) ); // Set Max Health to 1 to make Laylee Bells un-interactable
		}
		if(current.TonicsUnlocked != 1){ // Only upon exiting OW to prevent tonic tutorial from hard-locking the game
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x90, 0x10, 0x260, 0x18, 0x30, 0x8, 0x108, 0x30, 0x18, 0x28, 0x54).DerefOffsets(game, out temp); // TonicsUnlocked pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks tonic menus & the ability to use them
		}
		if(current.ULCatchee != 257 && current.Level != 10){ // Don't apply in overworld to prevent tonic tutorial hard lock (it re-locks itself when needed in the tutorial, but won't progress if we overwrite it here)
			IntPtr temp; // This will never need to be applied in the overworld anyway
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x20, 0x18).DerefOffsets(game, out temp); // ULCatchee pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((short)257) ); // Buys Tonic - If Catchee is not found & bought, tonic selection menu hard locks the game
		}
		if(current.ULLessChkMts != 1 || current.ULRollEvFaster != 1 || current.ULSpotlight != 1 || current.ULGooglyEyes != 1 || current.ULDerorrim != 1 || current.ULChamColors != 1){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x38, 0x18).DerefOffsets(game, out temp); // ULLessChkMts pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0xA8, 0x18).DerefOffsets(game, out temp); // ULRollEvFaster pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x180, 0x18).DerefOffsets(game, out temp); // ULSpotlight pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x80, 0x18).DerefOffsets(game, out temp); // ULGooglyEyes pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x130, 0x18).DerefOffsets(game, out temp); // ULDerorrim pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
			new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0x340, 0xA8, 0x28, 0x60, 0x10, 0x1C8, 0x18).DerefOffsets(game, out temp); // ULChamColors pointer
			game.WriteBytes((IntPtr)temp, new byte[] {1} ); // Unlocks Tonic
		}
		if(current.ChkMtDeaths > 0){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x264A28, 0x1C0, 0xE10, 0x3C8, 0x300, 0x58, 0x198, 0x18, 0x10, 0x30, 0x30, 0x68, 0x28, 0x3C).DerefOffsets(game, out temp); // ChkMtDeaths pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)0) ); // Keep current CheckMate's death count to 0 to prevent warping
		}
		if(current.EquippedTonic1 != current.IDLessChkMts){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x20).DerefOffsets(game, out temp); // EquippedTonic1 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDLessChkMts) ); // Equips Tonic if it isn't equipped
		}
		if(current.EquippedTonic2 != current.IDRollEvFaster){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x28).DerefOffsets(game, out temp); // EquippedTonic2 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDRollEvFaster) ); // Equips Tonic if it isn't equipped
		}
		if(current.EquippedTonic3 != current.IDChamColors && !settings["Spotlight"] && !settings["Mirrored"]){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x30).DerefOffsets(game, out temp); // EquippedTonic3 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDChamColors) ); // Equips Tonic if it isn't equipped
		}
		if(current.EquippedTonic3 != current.IDSpotlight && settings["Spotlight"] && !settings["Mirrored"]){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x30).DerefOffsets(game, out temp); // EquippedTonic3 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDSpotlight) ); // Equips Tonic if it isn't equipped
		}
		if(current.EquippedTonic3 != current.IDChamColors && settings["Mirrored"] && !settings["Spotlight"]){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x30).DerefOffsets(game, out temp); // EquippedTonic3 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDDerorrim) ); // Equips Tonic if it isn't equipped
		}
		if(current.EquippedTonic4 != current.IDGooglyEyes && current.Level != 12){ // Googly Eyes bug makes 17-1 impossible
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x38).DerefOffsets(game, out temp); // EquippedTonic4 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)current.IDGooglyEyes) ); // Equips Tonic if it isn't equipped
		}
		if(current.Level == 12 && current.EquippedTonic4 != 0){ // Googly Eyes bug makes 17-1 impossible
			IntPtr temp;
			new DeepPointer("mono.dll", 0x268180, 0x50, 0x308, 0x40, 0x38, 0x30, 0x30, 0x20, 0x18, 0x0, 0x20, 0x38).DerefOffsets(game, out temp); // EquippedTonic4 pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((long)0) ); // Removes Googly Eyes
		}

		// Coordinate boxes to give Laylee back in 2D stages to slam heavy doors
		if(old.Level == 10 && current.Level != 10){ // Entering any 2D level from OW
			vars.HardCoin = false; // Fail-safe when players exit to OW within a HardCoin coordinate box
		}
		if(current.Level == 27){ // 1-2
			if(current.XPos > 53.0 && current.XPos < 56.5 && current.YPos > -2){ // Coin 3
				vars.HardCoin = true; // Prevent global 1 HP override so Laylee can be given back temporarily
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp); // Health pointer
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) ); // Return Laylee
			}
			else {
				vars.HardCoin = false; // Reapplies global 1 HP override upon exiting coordinate box
			}
		}
		if(current.Level == 20){ // 2-1
			if( (current.XPos > 178.4 && current.XPos < 183.5 && current.YPos > 315 && current.YPos < 330) // Coin 2
			|| (current.XPos > 153.5 && current.XPos < 156.5 && current.YPos > 290 && current.YPos < 300) ){ // Coin 3 Key
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 14){ // 3-1
			if(current.XPos > 157.5 && current.XPos < 162.4 && current.YPos > 30 && current.YPos < 37.7){ // Coin 2
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 25){ // 4-1 & 4-2
			if( (current.XPos > 88.5 && current.XPos < 92.5 && current.YPos > -23) // Coin 2 (4-1)
			||	(current.XPos > -37.5 && current.XPos < -31.5 && current.YPos > -14) ){ // Coin 1 (4-2)
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 17){ // 5-1
			if(current.XPos > 524.5 && current.XPos < 529.5 && current.YPos > -190 && current.YPos < -167){ // Coin 5
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 19){ // 7-2
			if(current.XPos > 285.4 && current.XPos < 290.4 && current.YPos > 3 && current.YPos < 15){ // Secret Exit
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 18){ // 10-1
			if(current.XPos > 32.5 && current.XPos < 37.5 && current.YPos > 88 && current.YPos < 98){ // Coin 2 Bomb
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 22){ // 11-2
			if(current.XPos > 913.5 && current.XPos < 920 && current.YPos > 119){ // Coin 5 (technically possible with a bomb from far back)
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 15){ // 12-1
			if(current.XPos > 551.5 && current.XPos < 556.5 && current.YPos > 35){ // Coin 4 Bomb (technically possible with Coin 2 Bomb)
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 16){ // 13-1
			if(current.XPos > 350.5 && current.XPos < 355.5 && current.YPos > -24 && current.YPos < -15){ // Coin 2
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 24){ // 14-2
			if(current.XPos > 215.5 && current.XPos < 219.5 && current.YPos > -4 && current.YPos < 6){ // Coin 3
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 26){ // 16-1
			if( (current.XPos > 22.4 && current.XPos < 27.6 && current.YPos > 14 && current.YPos < 25) // Coin 1 Flower Box
			||	(current.XPos > 303.5 && current.XPos < 306.5 && current.YPos > 26 && current.YPos < 38) ){ // Coin 2
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}
		if(current.Level == 12){ // 17-1
			if(current.XPos > 92.5 && current.XPos < 97.5 && current.YPos > -4 && current.YPos < 20){ // Coin 1
				vars.HardCoin = true;
				IntPtr temp;
				new DeepPointer("mono.dll", 0x2675E0, 0xA0, 0xC40, 0x38, 0x20, 0x30, 0x20, 0x18, 0x158, 0x38).DerefOffsets(game, out temp);
				game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)2) );
			}
			else {
				vars.HardCoin = false;
			}
		}

		// Change Paywall Costs & their text strings
		if(current.PaywallText == 34058609628217412){ // Default text not overwritten yet
			IntPtr temp;
			new DeepPointer("mono.dll", 0x4F8AF8, 0xEC14).DerefOffsets(game, out temp); // Paywall 1 Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 10 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0xFAB4).DerefOffsets(game, out temp); // Paywall 1 Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x494).DerefOffsets(game, out temp); // Paywall 2 Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 35 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, -0xEAEC).DerefOffsets(game, out temp); // Paywall 2 Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x130D4).DerefOffsets(game, out temp); // Paywall 3 Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 30 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x14834).DerefOffsets(game, out temp); // Paywall 3 Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x133D4).DerefOffsets(game, out temp); // Paywall 4 Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 30 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x14AB4).DerefOffsets(game, out temp); // Paywall 4 Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x1CA94).DerefOffsets(game, out temp); // Paywall 5 Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 30 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x1EDD4).DerefOffsets(game, out temp); // Paywall 5 Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x15814).DerefOffsets(game, out temp); // Paywall 6 Text pointer (Trowzer's House)
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"Hard Mode dissssscount! Merely 35 [TrowzerCoin]{Character:T.W.I.T. Coins}!\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x29AB4).DerefOffsets(game, out temp); // Paywall 6 Choice Text pointer (Trowzer's House)
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] I won't pass up that {Character:steal!}[Trowzer]\0\0\0\0\0\0\0\0\0\0") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x1B5B4).DerefOffsets(game, out temp); // Trowzer Final Purchase Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"I'll need about 30 [TrowzerCoin]{Character:T.W.I.T. Coin}...") );
			new DeepPointer("mono.dll", 0x4F8AF8, 0x29154).DerefOffsets(game, out temp); // Trowzer Final Purchase Choice Text pointer
			game.WriteBytes((IntPtr)temp, Encoding.Unicode.GetBytes((string)"[Yes] Sure... (Give 30 [TrowzerCoin]{Character:T.W.I.T. Coin})") );
		}
		if(current.Paywall1Cost == 1){ // Default Unlock Cost
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x38, 0x28).DerefOffsets(game, out temp); // Paywall1Cost pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)10) ); // Changed Unlock Cost
		}
		if(current.Paywall2Cost == 10){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x30, 0x28).DerefOffsets(game, out temp); // Paywall2Cost pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)35) );
		}
		if(current.Paywall3Cost == 15){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x28, 0x28).DerefOffsets(game, out temp); // Paywall3Cost pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)30) );
		}
		if(current.Paywall4Cost == 20){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x48, 0x28).DerefOffsets(game, out temp); // Paywall4Cost pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)30) );
		}
		if(current.Paywall5Cost == 25){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x40, 0x28).DerefOffsets(game, out temp); // Paywall5Cost pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)30) );
		}
		if(current.Paywall6Cost == 30){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x2675E0, 0x40, 0x1C8, 0x20, 0x20, 0x20, 0x170, 0x28, 0x70, 0x10, 0x20, 0x28).DerefOffsets(game, out temp); // Paywall6Cost pointer (Trowzer's House)
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((int)35) );
		}
		// No way to change the final purchase cost yet (99→30)

		// Teleport to the end of the tutorial on new files
		if(current.Level == 4 && current.XPos < 650){
			IntPtr temp;
			new DeepPointer("mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA0).DerefOffsets(game, out temp); // XPos pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((float)650) );
			new DeepPointer("mono.dll", 0x267758, 0x10, 0x1D0, 0x8, 0x3F0, 0x1758, 0x108, 0x108, 0x30, 0x100, 0x8, 0x18, 0x0, 0x18, 0x10, 0x20, 0x128, 0x10, 0x60, 0xA4).DerefOffsets(game, out temp); // YPos pointer
			game.WriteBytes((IntPtr)temp, BitConverter.GetBytes((float)-0.86) );
		}
	}
}


// Performance Tool:

// var watch = System.Diagnostics.Stopwatch.StartNew();
// Code to measure
// watch.Stop();
// var elapsedMs = watch.ElapsedMilliseconds;
// print(elapsedMs.ToString());

/*
Level IDs:
Title Screen = 3
Tutorial = 4
Lair S1 = 5
Lair S2 = 6
Lair S3 = 7
Lair S4 = 8
Overworld = 10
Ch.1 = 27
Ch.2 = 20
Ch.3 = 14
Ch.4 = 25
Ch.5 = 17
Ch.6 = 28
Ch.7 = 19
Ch.8 = 30
Ch.9 = 29
Ch.10 = 18
Ch.11 = 22
Ch.12 = 15
Ch.13 = 16
Ch.14 = 24
Ch.15 = 23
Ch.16 = 26
Ch.17 = 12
Ch.18 = 21
Ch.19 = 13
Ch.20 = 11
~~~ Chapter ID range: 11-30
Pagie down-right of ch.20(4 Metal ropes, 1 green snail) = 33
Pagie up-right of that^^(Honey crab snowballs) = 45
Pagie flagpole logs(5 Toads) = 31
Pagie north of flagpoles(11 Spiders, 1 toad) = 35
Pagie in a cagie 14-2(Underwater saws) = 43
Pagie desert red pipe steps(3 Flying meanyions) = 41
Pagie behind Trowzer's house(3 Toads, 2 saws) = 44
Pagie near toxic cloud wind boxes(Helicopter rope missiles) = 46
Pagie on dock(Caged snail) = 37
Pagie on sandcastle(Bomberman) = 40
Pagie above Hivory Towers gate(Space invaders) = 32
Pagie at toxic waterfall near ch.6(Choggers) = 39
Pagie in middle of 4 fans(Meanyon control) = 38
Pagie below Doc ch.3(4 Meanyons) = 42
Pagie after ch.4(Meanyon boxes) = 34
~~~ Pagie ID range: 31-46 (36 missing)
Missing IDs(gaps): 0,1,2 (probably don't exist), 9 (between Lair and Overworld), 36 (middle of Pagie IDs)
*/

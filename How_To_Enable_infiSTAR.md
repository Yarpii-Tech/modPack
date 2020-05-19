# infiSTAR install:

1. Replace your <code>AH.sqf, AHConfig.sqf and AT.sqf</code> with the ones in <code>server\a2_infiSTAR</code> folder

server
├── @DayZ_Epoch
│		├── addons
│		├── dayz_logo_ca.paa
│		└── mod.cpp
├── @DayZ_Epoch_Server
│		├── addons
│		├──		└── dayz_server.pbo
│		└── HiveExt.dll
├── a2_infiSTAR
│ 		├── AH.sqf.sqf
│		├── AHconfig.sqf
│		└── AT.sqf.sqf
└── MPMissions
		└── DayZ_Epoch_11.Chernarus.pbo



2. In <code>Arma 2 OA\@dayz_epoch_server\addons\dayz_server\init\server_functions.sqf</code> find the following line and uncomment it:
	```sqf
	//[] execVM "\a2_infiSTAR\AH.sqf";
	```


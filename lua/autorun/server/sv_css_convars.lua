CreateConVar("sv_css_damage_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all damage from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_recoil_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all recoil from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_velcone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_heat_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cooltime_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the cooldown delay time from CSS weapons is multiplied by. Default is 1." )
CreateConVar("sv_css_cooldown_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the cooldown amount from CSS weapons is multiplied by. Default is 1." )

CreateConVar("sv_css_enable_csszoom", "0", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables CSS-Like zooms for the AUG and SG552. Default is 0." )

CreateConVar("sv_css_ammo_loaded", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving weapons already loaded. Default is 1." )
CreateConVar("sv_css_ammo_givespare", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving spare ammo to players upon pickup. Default is 1." )

CreateConVar("sv_css_enable_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to drop css weapons on death, all other values disables it. Default is 1." )
CreateConVar("sv_css_timed_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 creates a removal time limit for weapons that drop. 0 never removes weapon drops." )
CreateConVar("sv_css_drop_timer", "60", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that determines how long the weapons are removed after they are dropped. Default is 60." )
CreateConVar("sv_css_limit_equipped", "0", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 limits only one primary weapon and one secondary weapon. Equipment is unlimited. Default is 0." )

--CreateConVar("sv_css_enable_c4", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_enable_c4nonadmin", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_enable_c4smoke", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables smoke effects for the c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_time_explosion", "45", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 detonates when planted. Default is 45." )
CreateConVar("sv_css_c4_time_defuse", "10", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 is defused. Default is 10." )
CreateConVar("sv_css_c4_damage", "500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in points that determines maximum damage. Default is 500." )
CreateConVar("sv_css_c4_radius", "1500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in units that determines the maximum blast radius. Default is 1500." )
CreateConVar("sv_css_c4_notifyplayers", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to receive cosmetic round winning notifications and sounds, all other values disables it. Default is 1." )

CreateConVar("sv_css_enable_penetration", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enable penetration through objects, 0 disables. Default is 1." )
CreateConVar("sv_css_penetration_scale", "0.5", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that all damage from CSS weapons is multiplied from penetration. Default is 0.5." )

CreateConVar("sv_css_enable_mags", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables cosmetic magazine drops. Requires separate addon. Default is 0." )

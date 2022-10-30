-- Logichammer: Scripture, General, by scehr | v0.0.0.3 | 05.02.2022

local name_updates = {
	{
		-- BRETONNIANS (CRUSADERS): CNC 01 - CRUSADERS OF BRETONNIA (Only Lord)
		factions = {
			"wh2_dlc14_brt_chevaliers_de_lyonesse",
			"wh2_main_brt_knights_of_origo",
			"wh2_main_brt_knights_of_the_flame",
			"wh2_main_brt_thegans_crusaders"
		},
		new_name = "faction_name_order_brt_crus01_crusaders",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- BRETONNIANS (DUKEDOMS): CNC 01 - KINGDOM OF BRETONNIA (only lord)
		factions = {
			"wh_main_brt_artois",
			"wh_main_brt_bastonne",
			"wh_main_brt_bordeleaux",
			"wh_main_brt_carcassonne",
			"wh_main_brt_bretonnia",
			"wh_main_brt_lyonesse",
			"wh_main_brt_parravon"
		},
		new_name = "faction_name_order_brt_01_kingdom",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- BRETONNIANS (DUKEDOMS): CNC 01 - KINGDOM OF BRETONNIA (provinces)
		factions = {
			"wh_main_brt_artois",
			"wh_main_brt_bastonne",
			"wh_main_brt_bordeleaux",
			"wh_main_brt_carcassonne",
			"wh_main_brt_bretonnia",
			"wh_main_brt_lyonesse",
			"wh_main_brt_parravon"
		},
		new_name = "faction_name_order_brt_01_kingdom",
		requirements = {
			["main_warhammer"] = {
				count = 7,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_carcassone_et_brionne",
                    "wh_main_couronne_et_languille",
                    "wh_main_forest_of_arden",
                    "wh_main_lyonesse",
                    "wh_main_bordeleaux_et_aquitaine",
                    "wh_main_bastonne_et_montfort",
                    "wh_main_parravon_et_quenelles"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- DWARFS (CLANS): 01 - CLANS OF THE EIGHT HOLDS
		factions = {
			"wh_main_dwf_dwarfs",
            "wh_main_dwf_karak_izor",
            "wh_main_dwf_karak_kadrin",
            "wh_main_dwf_barak_varr",
            "wh_main_dwf_karak_azul",
            "wh_main_dwf_karak_hirn",
            "wh_main_dwf_karak_norn",
            "wh_main_dwf_karak_ziflin",
            "wh_main_dwf_zhufbar",
            "wh2_dlc15_dwf_clan_helhein"

		},
		new_name = "faction_name_order_dwf_02_odro",
		requirements = {
			["main_warhammer"] = {
				count = 8,
                characters = {
                },
				regions = {
					"wh_main_the_silver_road_karaz_a_karak",
					"wh_main_peak_pass_karak_kadrin",
					"wh_main_zhufbar_zhufbar",
					"wh_main_desolation_of_nagash_karak_azul",
					"wh_main_black_mountains_karak_hirn",
					"wh_main_southern_grey_mountains_karak_norn",
					"wh_main_the_vaults_karak_izor",
					"wh_main_blood_river_valley_barak_varr"
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- DWARFS (CLANS): 02 - KARAZ ANKOR
		factions = {
			"wh_main_dwf_dwarfs",
            "wh_main_dwf_karak_izor",
            "wh_main_dwf_karak_kadrin",
            "wh_main_dwf_barak_varr",
            "wh_main_dwf_karak_azul",
            "wh_main_dwf_karak_hirn",
            "wh_main_dwf_karak_norn",
            "wh_main_dwf_karak_ziflin",
            "wh_main_dwf_zhufbar",
            "wh2_dlc15_dwf_clan_helhein"

		},
		new_name = "faction_name_order_dwf_01_karaz_ankor",
		requirements = {
			["main_warhammer"] = {
				count = 17,
                characters = {
                },
				regions = {
					"wh_main_the_silver_road_karaz_a_karak",
					"wh_main_peak_pass_karak_kadrin",
					"wh_main_zhufbar_zhufbar",
					"wh_main_desolation_of_nagash_karak_azul",
					"wh_main_black_mountains_karak_hirn",
					"wh_main_southern_grey_mountains_karak_norn",
					"wh_main_the_vaults_karak_izor",
					"wh_main_blood_river_valley_barak_varr",
					"wh_main_northern_worlds_edge_mountains_karak_ungor",
					"wh_main_western_badlands_ekrund",
					"wh_main_rib_peaks_mount_gunbad",
                    "wh2_main_the_wolf_lands_mount_silverspear",
					"wh_main_eastern_badlands_karak_eight_peaks",
					"wh_main_blightwater_karak_azgal",
					"wh_main_death_pass_karak_drazh",
					"wh_main_gianthome_mountains_karak_drak",
					"wh2_main_southlands_worlds_edge_mountains_karak_zorn"
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- REALMS OF MEN (EMPIRE): FREE 01 - LEAGUE OF FERNESLAND
		factions = {
			"wh2_main_emp_new_world_colonies"
		},
		new_name = "faction_name_order_emp_free01_fernesland",
		requirements = {
			["main_warhammer"] = {
				count = 1,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_northern_jungle_of_pahualaxa"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- REALMS OF MEN (EMPIRE): 02 - IMPERIAL PROVINCES NORTH OF THE RIVERS REIK AND TALABEC
		factions = {
            "wh_main_emp_empire",
            "wh2_dlc13_emp_golden_order",
            "wh_main_emp_averland",
            "wh_main_emp_hochland",
            "wh_main_emp_middenland",
            "wh_main_emp_nordland",
            "wh_main_emp_ostermark",
            "wh_main_emp_ostland",
            "wh_main_emp_stirland",
            "wh_main_emp_talabecland",
            "wh_main_emp_wissenland"
		},
		new_name = "faction_name_order_emp_03_north_rivers",
		requirements = {
			["main_warhammer"] = {
				count = 6,
                characters = {
                },
				regions = {
				},
				provinces = {
                    "wh_main_middenland",
                    "wh_main_the_wasteland",
                    "wh2_main_misty_hills",
                    "wh_main_nordland",
                    "wh_main_hochland",
                    "wh_main_ostland"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- REALMS OF MEN (EMPIRE): 02 - IMPERIAL PROVINCES SOUTH OF THE RIVERS REIK AND TALABEC
		factions = {
            "wh_main_emp_empire",
            "wh2_dlc13_emp_golden_order",
            "wh_main_emp_averland",
            "wh_main_emp_hochland",
            "wh_main_emp_middenland",
            "wh_main_emp_nordland",
            "wh_main_emp_ostermark",
            "wh_main_emp_ostland",
            "wh_main_emp_stirland",
            "wh_main_emp_talabecland",
            "wh_main_emp_wissenland"
		},
		new_name = "faction_name_order_emp_03_south_rivers",
		requirements = {
			["main_warhammer"] = {
				count = 10,
                characters = {
                },
				regions = {
				},
				provinces = {
                    "wh_main_reikland",
                    "wh_main_talabecland",
                    "wh_main_ostermark",
                    "wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_stirland",
                    "wh_main_wissenland",
                    "wh2_main_solland",
                    "wh_main_averland",
                    "wh2_main_the_moot"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	--[[{
		-- REALMS OF MEN (EMPIRE): 03 - EMPIRE OF MAN (Provinces)
		factions = {
            "wh_main_emp_empire",
            "wh2_dlc13_emp_golden_order",
            "wh_main_emp_averland",
            "wh_main_emp_hochland",
            "wh_main_emp_middenland",
            "wh_main_emp_nordland",
            "wh_main_emp_ostermark",
            "wh_main_emp_ostland",
            "wh_main_emp_stirland",
            "wh_main_emp_talabecland",
            "wh_main_emp_wissenland"
		},
		new_name = "faction_name_order_emp_01_empire",
		requirements = {
			["main_warhammer"] = {
				count = 16,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_middenland",
                    "wh_main_the_wasteland",
                    "wh2_main_misty_hills",
                    "wh_main_nordland",
                    "wh_main_hochland",
                    "wh_main_ostland",
                    "wh_main_reikland",
                    "wh_main_talabecland",
                    "wh_main_ostermark",
                    "wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_stirland",
                    "wh_main_wissenland",
                    "wh2_main_solland",
                    "wh_main_averland",
                    "wh2_main_the_moot"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- REALMS OF MEN (EMPIRE): 01 - EMPIRE OF MAN (Only Lord)
		factions = {
            "wh_main_emp_empire",
            "wh2_dlc13_emp_golden_order",
            "wh_main_emp_averland",
            "wh_main_emp_hochland",
            "wh_main_emp_middenland",
            "wh_main_emp_nordland",
            "wh_main_emp_ostermark",
            "wh_main_emp_ostland",
            "wh_main_emp_stirland",
            "wh_main_emp_talabecland",
            "wh_main_emp_wissenland"
		},
		new_name = "faction_name_order_emp_01_empire",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},]]--
	{
		-- REALMS OF MEN (MARIENBURG): 01 - MARIENBURG REPUBLIC
		factions = {
			"wh_main_emp_marienburg"
		},
		new_name = "faction_name_order_emp_mar01_marienburg",
		requirements = {
			["main_warhammer"] = {
				count = 16,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_middenland",
                    "wh_main_the_wasteland",
                    "wh2_main_misty_hills",
                    "wh_main_nordland",
                    "wh_main_hochland",
                    "wh_main_ostland",
                    "wh_main_reikland",
                    "wh_main_talabecland",
                    "wh_main_ostermark",
                    "wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_stirland",
                    "wh_main_wissenland",
                    "wh2_main_solland",
                    "wh_main_averland",
                    "wh2_main_the_moot"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- HIGH ELVES (OUTLANDS): 01 - KINGDOM CALEDOR (Only Lord)
		factions = {
			"wh2_dlc15_hef_imrik",
			"wh2_main_hef_caledor"
		},
		new_name = "faction_name_order_hef_crus01_kingdom_caledor",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- HIGH ELVES (OUTLANDS): 01 - KINGDOM NAGARYTHE (Only Lord)
		factions = {
			"wh2_main_hef_nagarythe",
			"wh2_main_def_scourge_of_khaine"
		},
		new_name = "faction_name_order_hef_crus01_kingdom_nagarythe",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- HIGH ELVES (KINGDOMS): 01 - REALMS OF ULTHUAN (Provinces)
		factions = {
			"wh2_main_hef_avelorn",
			"wh2_main_hef_caledor",
			"wh2_main_hef_chrace",
			"wh2_main_hef_cothique",
			"wh2_main_hef_eataine",
			"wh2_main_hef_ellyrion",
			"wh2_main_hef_nagarythe",
			"wh2_main_hef_saphery",
			"wh2_main_hef_tiranoc",
			"wh2_main_hef_yvresse",
			"wh2_main_hef_order_of_loremasters",
			"wh2_dlc15_hef_imrik"
		},
		new_name = "faction_name_order_hef_01_ulthuan",
		requirements = {
			["main_warhammer"] = {
				count = 10,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_eataine",
					"wh2_main_caledor",
					"wh2_main_tiranoc",
					"wh2_main_nagarythe",
					"wh2_main_chrace",
					"wh2_main_cothique",
					"wh2_main_yvresse",
					"wh2_main_saphery",
					"wh2_main_avelorn",
					"wh2_main_ellyrion"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- HIGH ELVES (KINGDOMS): 01 - REALMS OF ULTHUAN (Only Lord)
		factions = {
			"wh2_main_hef_avelorn",
			"wh2_main_hef_caledor",
			"wh2_main_hef_chrace",
			"wh2_main_hef_cothique",
			"wh2_main_hef_eataine",
			"wh2_main_hef_ellyrion",
			"wh2_main_hef_nagarythe",
			"wh2_main_hef_saphery",
			"wh2_main_hef_tiranoc",
			"wh2_main_hef_yvresse",
			"wh2_dlc15_hef_imrik"
		},
		new_name = "faction_name_order_hef_01_ulthuan",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- LIZARDMEN: CRUS 01 — CHILDREN OF XHOTL
		factions = {
			"wh2_main_lzd_last_defenders",
			"wh2_main_skv_clan_mordkin"
		},
		new_name = "faction_name_order_lzd_crus01_xhotl",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- FAY FOLK OF ATHEL LOREN: 01 — YN ATHEL ETERNOS (Only Lord)
		factions = {
			"wh_dlc05_wef_argwylon",
			"wh_dlc05_wef_torgovann",
			"wh_dlc05_wef_wood_elves",
			"wh_dlc05_wef_wydrioth"
		},
		new_name = "faction_name_order_wef_01_eternos",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- FAY FOLK OF ATHEL LOREN: 01 — YN ATHEL ETERNOS (Provinces)
		factions = {
			"wh_dlc05_wef_argwylon",
			"wh_dlc05_wef_torgovann",
			"wh_dlc05_wef_wood_elves",
			"wh_dlc05_wef_wydrioth"
		},
		new_name = "faction_name_order_wef_01_eternos",
		requirements = {
			["main_warhammer"] = {
				count = 5,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_argwylon",
					"wh_main_torgovann",
					"wh_main_wydrioth",
					"wh_main_talsyn",
					"wh_main_yn_edri_eternos"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- STRYGOS: 01 — KINGDOM OF STRYGOS
		factions = {
			"wh2_main_vmp_strygos_empire"
		},
		new_name = "faction_name_death_vmp_ghul01_kingdom",
		requirements = {
			["main_warhammer"] = {
				count = 2,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_marshes_of_madness",
					"wh_main_southern_badlands"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- STRYGOS: 01 — GREAT EMPIRE OF STRYGOS
		factions = {
			"wh2_main_vmp_strygos_empire"
		},
		new_name = "faction_name_death_vmp_ghul02_empire",
		requirements = {
			["main_warhammer"] = {
				count = 2,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_marshes_of_madness",
					"wh_main_southern_badlands"
				},
                conqcount = 30,
				only_lord = false
			}
		}
	},
	{
		-- TOMB KINGS: 01 — SESEMET NUYAH
		factions = {
            "wh2_dlc09_tmb_followers_of_nagash"
		},
		new_name = "faction_name_death_tmb_nagash01_nehekhara",
		requirements = {
			["main_warhammer"] = {
				count = 9,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_land_of_the_dead",
					"wh2_main_great_desert_of_araby",
					"wh2_main_great_mortis_delta",
					"wh2_main_ash_river",
					"wh2_main_charnel_valley",
					"wh2_main_devils_backbone",
					"wh_main_southern_badlands",
					"wh2_main_marshes_of_madness",
					"wh2_main_the_broken_teeth"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- TOMB KINGS: 01 — QAISESEMET NEHEKHARA
		factions = {
            "wh2_dlc09_tmb_khemri",
            "wh2_dlc09_tmb_lybaras",
            "wh2_dlc09_tmb_exiles_of_nehek"
		},
		new_name = "faction_name_death_tmb_01_nehekhara",
		requirements = {
			["main_warhammer"] = {
				count = 16,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh2_main_land_of_the_dead",
					"wh2_main_great_desert_of_araby",
					"wh2_main_great_mortis_delta",
					"wh2_main_land_of_the_dervishes",
					"wh2_main_shifting_sands",
					"wh2_main_ash_river",
					"wh2_main_charnel_valley",
					"wh2_main_crater_of_the_walking_dead",
					"wh2_main_devils_backbone",
					"wh_main_southern_badlands",
					"wh_main_blightwater",
					"wh2_main_marshes_of_madness",
					"wh_main_western_badlands",
					"wh_main_eastern_badlands",
					"wh2_main_desolation_of_nagash",
					"wh2_main_the_broken_teeth"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: MOUSILLON 01 — ROYAUME DU GRAAL SANGLANT
		factions = {
			"wh_main_vmp_mousillon"
		},
		new_name = "faction_name_death_vmp_mousillon_kingdom",
		requirements = {
			["main_warhammer"] = {
				count = 7,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_carcassone_et_brionne",
                    "wh_main_couronne_et_languille",
                    "wh_main_forest_of_arden",
                    "wh_main_lyonesse",
                    "wh_main_bordeleaux_et_aquitaine",
                    "wh_main_bastonne_et_montfort",
                    "wh_main_parravon_et_quenelles"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: BARROW 01 — THE BARROW REALM
		factions = {
			"wh2_dlc11_vmp_the_barrow_legion"
		},
		new_name = "faction_name_death_vmp_barrow_realm",
		requirements = {
			["main_warhammer"] = {
				count = 7,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_carcassone_et_brionne",
                    "wh_main_couronne_et_languille",
                    "wh_main_forest_of_arden",
                    "wh_main_lyonesse",
                    "wh_main_bordeleaux_et_aquitaine",
                    "wh_main_bastonne_et_montfort",
                    "wh_main_parravon_et_quenelles"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: MANNFRED 03 — GRAND COUNTY OF SYLVANIA
		factions = {
			"wh_main_vmp_vampire_counts"
		},
		new_name = "faction_name_death_vmp_lord_county",
		requirements = {
			["main_warhammer"] = {
				count = 2,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_western_sylvania",
                    "wh_main_eastern_sylvania"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: CARSTEIN 03 — GRAND COUNTY OF SYLVANIA
		factions = {
			"wh_main_vmp_schwartzhafen"
		},
		new_name = "faction_name_death_vmp_lord_county",
		requirements = {
			["main_warhammer"] = {
				count = 2,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_western_sylvania",
                    "wh_main_eastern_sylvania"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: MANNFRED 02 — MIDNIGHT ARISTOCRACY
		factions = {
			"wh_main_vmp_vampire_counts"
		},
		new_name = "faction_name_death_vmp_lord_aristocracy",
		requirements = {
			["main_warhammer"] = {
				count = 3,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_averland"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: CARSTEIN 02 — MIDNIGHT ARISTOCRACY
		factions = {
			"wh_main_vmp_schwartzhafen"
		},
		new_name = "faction_name_death_vmp_lord_aristocracy",
		requirements = {
			["main_warhammer"] = {
				count = 3,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_ostermark"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: MANNFRED 01 — THE ETERNAL EMPIRE
		factions = {
			"wh_main_vmp_vampire_counts"
		},
		new_name = "faction_name_death_vmp_mannfred_empire",
		requirements = {
			["main_warhammer"] = {
				count = 16,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_middenland",
                    "wh_main_the_wasteland",
                    "wh2_main_misty_hills",
                    "wh_main_nordland",
                    "wh_main_hochland",
                    "wh_main_ostland",
                    "wh_main_reikland",
                    "wh_main_talabecland",
                    "wh_main_ostermark",
                    "wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_stirland",
                    "wh_main_wissenland",
                    "wh2_main_solland",
                    "wh_main_averland",
                    "wh2_main_the_moot"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- VAMPIRE COUNTS: CARSTIEN 01 — EMPIRE OF UNDEATH
		factions = {
			"wh_main_vmp_schwartzhafen"
		},
		new_name = "faction_name_death_vmp_carstein_empire",
		requirements = {
			["main_warhammer"] = {
				count = 16,
                characters = {
                },
				regions = {
				},
				provinces = {
					"wh_main_middenland",
                    "wh_main_the_wasteland",
                    "wh2_main_misty_hills",
                    "wh_main_nordland",
                    "wh_main_hochland",
                    "wh_main_ostland",
                    "wh_main_reikland",
                    "wh_main_talabecland",
                    "wh_main_ostermark",
                    "wh_main_western_sylvania",
                    "wh_main_eastern_sylvania",
                    "wh_main_stirland",
                    "wh_main_wissenland",
                    "wh2_main_solland",
                    "wh_main_averland",
                    "wh2_main_the_moot"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- DARK ELVES: 01 — KHALIR NAGGAROTH
		factions = {
			"wh2_main_def_naggarond",
			"wh2_main_def_cult_of_pleasure",
			"wh2_main_def_clar_karond",
			"wh2_main_def_ghrond",
			"wh2_main_def_hag_graef",
			"wh2_main_def_har_ganeth",
			"wh2_main_def_karond_kar",
			"wh2_dlc11_def_the_blessed_dread"
		},
		new_name = "faction_name_destruction_def_01_naggaroth",
		requirements = {
			["main_warhammer"] = {
				count = 6,
                characters = {
                },
				regions = {
				},
				provinces = {
                    "wh2_main_iron_mountains",
                    "wh2_main_the_chill_road",
                    "wh2_main_the_road_of_skulls",
                    "wh2_main_the_black_flood",
                    "wh2_main_obsidian_peaks",
                    "wh2_main_the_broken_land"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	--[[{
		-- GREENSKINS: 01 — DA GREENTIDE!
		factions = {
			"wh_main_grn_black_venom",
			"wh_main_grn_bloody_spearz",
			"wh_main_grn_broken_nose",
			"wh_main_grn_crooked_moon",
			"wh_main_grn_necksnappers",
			"wh_main_grn_red_eye",
			"wh_main_grn_red_fangs",
			"wh_main_grn_scabby_eye",
			"wh_main_grn_skull-takerz",
			"wh_main_grn_skullsmasherz",
			"wh_main_grn_teef_snatchaz",
			"wh_main_grn_top_knotz",
			"wh2_main_grn_arachnos",
			"wh2_main_grn_blue_vipers",
			"wh2_dlc12_grn_leaf_cutterz_tribe",
			"wh2_dlc14_grn_red_cloud",
			"wh2_dlc15_grn_bonerattlaz",
			"wh2_dlc15_grn_broken_axe",
			"wh2_dlc15_grn_skull_crag"
		},
		new_name = "faction_name_destruction_grn_01_greentide",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 30,
				only_lord = true
			}
		}
	},]]--
	{
		-- NORSCA: THROGG 01 — TROLL KING'S SAVAGE HORDE
		factions = {
			"wh_dlc08_nor_wintertooth"
		},
		new_name = "faction_name_chaos_nor_throgg01_horde",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 10,
				only_lord = false
			}
		}
	},
	{
		-- NORSCA: THROGG 02 — DESPOILERS OF THE ICE AGE
		factions = {
			"wh_dlc08_nor_wintertooth"
		},
		new_name = "faction_name_chaos_nor_throgg02_iceage",
		requirements = {
			["main_warhammer"] = {
				count = 8,
                characters = {
                },
				regions = {
					"wh_main_gianthome_mountains_sjoktraken"
				},
				provinces = {
					"wh_main_goromadny_mountains",
                    "wh_main_helspire_mountains",
                    "wh_main_ice_tooth_mountains",
                    "wh_main_mountains_of_hel",
                    "wh_main_mountains_of_naglfari",
                    "wh_main_trollheim_mountains",
                    "wh_main_vanaheim_mountains"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- NORSCA: WULFRIK 01 — SARL TRIBE
		factions = {
			"wh_dlc08_nor_norsca"
		},
		new_name = "faction_name_chaos_nor_wulfrik01_sarl",
		requirements = {
			["main_warhammer"] = {
				count = 1,
                characters = {
                },
				regions = {
				},
				provinces = {
                    "wh_main_trollheim_mountains"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- NORSCA: 01 — TRIBES OF THE HIGH KING
		factions = {
			"wh_dlc08_nor_norsca",
			"wh_main_nor_aesling",
			"wh_main_nor_baersonling",
			"wh_main_nor_bjornling",
			"wh_main_nor_graeling",
			"wh_main_nor_sarl",
			"wh_main_nor_skaeling",
			"wh_main_nor_varg",
			"wh_dlc08_nor_goromadny_tribe",
			"wh_dlc08_nor_helspire_tribe",
			"wh_dlc08_nor_naglfarlings",
			"wh_dlc08_nor_vanaheimlings",
			"wh2_main_nor_skeggi"
		},
		new_name = "faction_name_chaos_nor_01_highking",
		requirements = {
			["main_warhammer"] = {
				count = 8,
                characters = {
                },
				regions = {
					"wh_main_gianthome_mountains_sjoktraken"
				},
				provinces = {
					"wh_main_goromadny_mountains",
                    "wh_main_helspire_mountains",
                    "wh_main_ice_tooth_mountains",
                    "wh_main_mountains_of_hel",
                    "wh_main_mountains_of_naglfari",
                    "wh_main_trollheim_mountains",
                    "wh_main_vanaheim_mountains"
				},
                conqcount = 0,
				only_lord = false
			}
		}
	},
	{
		-- SKAVEN: GREAT CLANS 01 — THE UNDER-EMPIRE
		factions = {
			"wh2_main_skv_clan_eshin",
			"wh2_main_skv_clan_skyre",
			"wh2_main_skv_clan_pesilens",
			"wh2_main_skv_clan_moulder"
		},
		new_name = "faction_name_chaos_skv_gclan01_under_empire",
		requirements = {
			["main_warhammer"] = {
				count = 0,
                characters = {
                },
				regions = {
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = true
			}
		}
	},
	{
		-- SKAVEN: GREAT CLANS 01 — THE GREAT ASCENDANCY
		factions = {
			"wh2_main_skv_clan_eshin",
			"wh2_main_skv_clan_skyre",
			"wh2_main_skv_clan_pesilens",
			"wh2_main_skv_clan_moulder",
			"wh2_dlc15_skv_clan_ferrik",
			"wh2_dlc12_skv_clan_fester",
			"wh2_main_skv_clan_gnaw",
			"wh2_dlc12_skv_clan_mange",
			"wh2_main_skv_clan_mordkin",
			"wh2_main_skv_clan_mors",
			"wh2_dlc15_skv_clan_kreepus",
			"wh2_dlc09_skv_clan_rictus",
			"wh2_main_skv_clan_septik",
			"wh2_main_skv_clan_spittel",
			"wh2_dlc15_skv_clan_volkn"
			
		},
		new_name = "faction_name_chaos_skv_01_ascendancy",
		requirements = {
			["main_warhammer"] = {
				count = 20,
                characters = {
                },
				regions = {
					"wh2_main_southern_great_jungle_itza",
					"wh2_main_isthmus_of_lustria_hexoatl",
					"wh_main_yn_edri_eternos_the_oak_of_ages",
					"wh_main_couronne_et_languille_couronne",
					"wh_main_tilea_miragliano",
					"wh_main_estalia_magritta",
					"wh_main_the_silver_road_karaz_a_karak",
					"wh_main_eastern_badlands_karak_eight_peaks",
					"wh2_main_land_of_the_dead_khemri",
					"wh2_main_great_mortis_delta_black_pyramid_of_nagash",
					"wh_main_eastern_sylvania_castle_drakenhof",
					"wh2_main_the_broken_teeth_nagashizar",
					"wh2_main_the_wolf_lands_crookback_mountain",
					"wh2_main_hell_pit_hell_pit",
					"wh2_main_skavenblight_skavenblight",
					"wh_main_southern_grey_mountains_grimhold",
					"wh2_main_headhunters_jungle_oyxl",
					"wh2_main_vampire_coast_the_awakening",
					"wh_main_southern_badlands_galbaraz",
					"wh_main_death_pass_iron_rock"
				},
				provinces = {
				},
                conqcount = 0,
				only_lord = false
			}
		}
	}
};

function add_faction_renaming_listeners()
	out("#### Adding Faction Renaming Listeners ####");
	core:add_listener(
		"renaming_FactionTurnStart",
		"FactionTurnStart",
		true,
		function(context)
			update_faction_renaming(context:faction());
		end,
		true
	);
	core:add_listener(
		"renaming_RegionFactionChangeEvent",
		"RegionFactionChangeEvent",
		true,
		function(context)
			update_faction_renaming(context:region():owning_faction());
		end,
		true
	);
end

function update_faction_renaming(faction)
	if faction:is_null_interface() == false and faction:is_dead() == false then
		local faction_key = faction:name();
		local campaign_key = "";
		
		if cm:model():campaign_name("main_warhammer") then
			campaign_key = "main_warhammer";
		elseif cm:model():campaign_name("wh2_main_great_vortex") then
			campaign_key = "wh2_main_great_vortex";
		end

		for i = 1, #name_updates do
			local name_update = name_updates[i];

			for j = 1, #name_update.factions do
				if name_update.factions[j] == faction_key then
					local should_rename = false;
                    local vchar = false;
					local vreg = false;
                    local vprov = false;
                    local vconq = false;
					
					if name_update.requirements ~= nil and name_update.requirements[campaign_key] ~= nil then
                        should_rename = false;
                        local character_list = faction:character_list();
						local region_list = faction:region_list();
						local num_regions = region_list:num_items();
						local requirements = unique_table:new();
                        
                        for e = 0, character_list:num_items() - 1 do
                            local characters = character_list:item_at(e);
                            local chosen = characters:character_subtype_key();

                            if chosen ~= nil then
                                requirements:insert(chosen);
                            end
                        end

						for c = 0, region_list:num_items() - 1 do
							local regions = region_list:item_at(c);
							local region = regions:name();

							if region ~= nil then
								requirements:insert(region);
							end
						end
                        
						for s = 0, region_list:num_items() - 1 do
							local regions = region_list:item_at(s);
							local province = regions:province_name();

							if faction:holds_entire_province(province, false) == true then
								requirements:insert(province);
							end
                        end

                        if #requirements.items >= name_update.requirements[campaign_key].count then
                            if #name_update.requirements[campaign_key].characters > 0 then
								if #requirements.items >= #name_update.requirements[campaign_key].characters then
									vchar = true;

									for i = 1, #name_update.requirements[campaign_key].characters do
										if requirements:contains(name_update.requirements[campaign_key].characters[i]) == false then
											vchar = false;
											break;
										end
									end
								end
							else
								vchar = true;
                            end
                            
							if #name_update.requirements[campaign_key].regions > 0 then
								if #requirements.items >= #name_update.requirements[campaign_key].regions then
									vreg = true;

									for n = 1, #name_update.requirements[campaign_key].regions do
										if requirements:contains(name_update.requirements[campaign_key].regions[n]) == false then
											vreg = false;
											break;
										end
									end
								end
							else
								vreg = true;
							end

							if #name_update.requirements[campaign_key].provinces > 0 then
								if #requirements.items >= #name_update.requirements[campaign_key].provinces then
									vprov = true;

									for e = 1, #name_update.requirements[campaign_key].provinces do
										if requirements:contains(name_update.requirements[campaign_key].provinces[e]) == false then
											vprov = false;
											break;
										end
									end
								end
							else
								vprov = true;
							end
                        end
						
						if num_regions >= name_update.requirements[campaign_key].conqcount then
                            vconq = true;
                        else
							vconq = false;
						end

                        if vchar == true and vreg == true and vprov == true and vconq == true then
                            should_rename = true;
                        else
                            should_rename = false;
						end

						if should_rename == true and name_update.requirements[campaign_key].only_lord == true then
							for u = 1, #name_update.factions do
								if name_update.factions[u] ~= faction_key then
									local faction_obj = cm:model():world():faction_by_key(name_update.factions[u]);

									if faction_obj:is_dead() == false then
										should_rename = false;
										break;
									end
								end
							end
						end
					end

					if should_rename == true then
						cm:change_localised_faction_name(faction_key, "campaign_localised_strings_string_"..name_update.new_name);
					end
					break;
				end
			end
		end
	end
end
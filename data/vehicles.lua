return {
	-- 0	vehicle has no storage
	-- 1	vehicle has no trunk storage
	-- 2	vehicle has no glovebox storage
	-- 3	vehicle has trunk in the hood
	Storage = {
		[`jester`] = 3,
		[`adder`] = 3,
		[`osiris`] = 1,
		[`pfister811`] = 1,
		[`penetrator`] = 1,
		[`autarch`] = 1,
		[`bullet`] = 1,
		[`cheetah`] = 1,
		[`cyclone`] = 1,
		[`voltic`] = 1,
		[`reaper`] = 3,
		[`entityxf`] = 1,
		[`t20`] = 1,
		[`taipan`] = 1,
		[`tezeract`] = 1,
		[`torero`] = 3,
		[`turismor`] = 1,
		[`fmj`] = 1,
		[`infernus`] = 1,
		[`italigtb`] = 3,
		[`italigtb2`] = 3,
		[`nero2`] = 1,
		[`vacca`] = 3,
		[`vagner`] = 1,
		[`visione`] = 1,
		[`prototipo`] = 1,
		[`zentorno`] = 1,
		[`rumpo`] = 1,
		[`benson`] = 1,
		[`mule5`] = 1,
		[`pounder`] = 1,
		[`boxville4`] = 1,
		[`trophytruck`] = 0,
		[`trophytruck2`] = 0,
	},

	-- slots, maxWeight; default weight is 8000 per slot
	glovebox = {
		[0] = {3, 5000},		-- Compact
		[1] = {3, 5000},		-- Sedan
		[2] = {3, 7000},		-- SUV
		[3] = {3, 4000},		-- Coupe
		[4] = {3, 4000},		-- Muscle
		[5] = {3, 4000},		-- Sports Classic
		[6] = {3, 4000},		-- Sports
		[7] = {3, 4000},		-- Super
		[8] = {1, 1000},		-- Motorcycle
		[9] = {10, 10000},		-- Offroad
		[10] = {1, 1000},		-- Industrial
		[11] = {1, 1000},		-- Utility
		[12] = {1, 1000},		-- Van
		[14] = {1, 24800},	-- Boat
		[15] = {1, 24800},	-- Helicopter
		[16] = {1, 40800},	-- Plane
		[17] = {1, 1000},		-- Service
		[18] = {1, 1000},		-- Emergency
		[19] = {1, 1000},		-- Military
		[20] = {1, 1000},		-- Commercial (trucks)
		models = {
			[`xa21`] = {11, 350000},
			[`africat`] = {6, 300000},
			[`cb500x_bs`] = {5, 300000},
			[`cb500x_bl`] = {5, 330000},
			[`rd`] = {10, 350000},
		}
	},

	trunk = {
		[0] = {8, 50000},		-- Compact
		[1] = {8, 50000},		-- Sedan
		[2] = {12, 70000},		-- SUV
		[3] = {6, 40000},		-- Coupe
		[4] = {6, 40000},		-- Muscle
		[5] = {6, 40000},		-- Sports Classic
		[6] = {6, 40000},		-- Sports
		[7] = {4, 40000},		-- Super
		[8] = {1, 1000},		-- Motorcycle
		[9] = {16, 100000},		-- Offroad
		[10] = {51, 100000},		-- Industrial
		[11] = {41, 100000},		-- Utility
		[12] = {61, 488000},		-- Van
		-- [14] -- Boat
		-- [15] -- Helicopter
		-- [16] -- Plane
		[17] = {41, 328000},		-- Service
		[18] = {41, 328000},		-- Emergency
		[19] = {41, 328000},		-- Military
		[20] = {61, 488000},		-- Commercial
		models = {
			[`bobcatxl`] = {8, 100000},
			[`sadler`] = {8, 100000},
			[`sandking2`] = {10, 150000},
			[`caracara2`] = {12, 200000},
			[`kamacho`] = {14, 250000},
			[`draugur`] = {16, 300000},
			[`africat`] = {6, 300000},
		},
		boneIndex = {
			[`pounder`] = 'wheel_rr'
		}
	}
}

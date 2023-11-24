return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 500,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 10000,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 62.6 },
			anim = 'eating',
			prop = 'burger',
			usetime = math.random(5000, 6000),
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 500,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 4000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['rentalpapers'] = {
		label = 'Rental certificate',
		description = 'This car was taken out through car rental.',
		weight = 1,
		stack = false,
		close = false,
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 100,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 30,
	},

	['phone'] = {
		label = 'Phone',
		weight = 500,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['placeholder'] = {
		label = 'Placeholder',
		weight = 99999999999,
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 250,
		client = {
			status = { hunger = 0, thirst = 17.1 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 10 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 2500,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		weight = 10,
		stack = false,
		close = false,
		description = "Mastercard can be used via ATM"
	},

	-- ['scrapmetal'] = {
	-- 	label = 'Scrap Metal',
	-- 	weight = 1000,
	-- },

	['armor'] = {
		label = 'Armor',
		weight = 10000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['stickynote'] = {
		label = 'Sticky note',
		weight = 10,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)"
	},

	['orange-juice'] = {
		label = 'Oranges juice',
		weight = 500,
		stack = true,
		close = true,
		description = "Oranges juice for Vitamin C"
	},

	['grape'] = {
		label = 'Grape',
		weight = 200,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes"
	},

	['ruby_earring_silver'] = {
		label = 'Ruby Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['diving_gear'] = {
		label = 'Diving Gear',
		weight = 36000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather"
	},

	['ruby_ring_silver'] = {
		label = 'Ruby Ring Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['weed_brick'] = {
		label = 'Weed Brick',
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers."
	},

	['sapphire_necklace_silver'] = {
		label = 'Sapphire Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['goldpan'] = {
		label = 'Gold Panning Tray',
		weight = 400,
		stack = true,
		close = false,
		description = ""
	},

	['id_card'] = {
		label = 'ID Card',
		weight = 10,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself"
	},

	['kerosene'] = {
		label = 'Oil lamp',
		weight = 1000,
		stack = true,
		close = true,
		description = "Oil lamps for you to see books"
	},

	['cooked_ham'] = {
		label = 'Cooked Ham',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['goldore'] = {
		label = 'Gold Ore',
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore"
	},

	['10kgoldchain'] = {
		label = '10k Gold Chain',
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain"
	},

	['ruby'] = {
		label = 'Ruby',
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers"
	},

	['weed_purple-haze_seed'] = {
		label = 'Purple Haze Seed',
		weight = 10,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze"
	},

	['oranges'] = {
		label = 'Oranges',
		weight = 150,
		stack = true,
		close = true,
		description = "Oranges for Vitamin C"
	},

	['silverearring'] = {
		label = 'Silver Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 3000,
		stack = true,
		close = true,
		description = "Expensive laptop"
	},

	['coffee'] = {
		label = 'Coffee',
		weight = 500,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine"
	},

	['oxy'] = {
		label = 'Prescription Oxy',
		weight = 10,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off"
	},

	['fitbit'] = {
		label = 'Fitbit',
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit"
	},

	['sandwich'] = {
		label = 'Sandwich',
		weight = 200,
		client = {
			status = { hunger = 50.05 },
			anim = 'eating',
			prop = 'burger',
			usetime = math.random(5000, 6000),
			notification = 'You ate a delicious burger'
		},
	},

	['empty_evidence_bag'] = {
		label = 'Empty Evidence Bag',
		weight = 10,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more"
	},

	['tomato'] = {
		label = 'tomato',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['moneybag'] = {
		label = 'Money Bag',
		weight = 100,
		stack = false,
		close = true,
		description = "A bag with cash"
	},

	['whiskey'] = {
		label = 'Whiskey',
		weight = 500,
		client = {
			status = {thirst = 105, stress = -52.5 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['mininglaser'] = {
		label = 'Mining Laser',
		weight = 4000,
		stack = true,
		close = false,
		description = ""
	},

	['lighter'] = {
		label = 'Lighter',
		weight = 100,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to"
	},

	['cooked_bacon'] = {
		label = 'Cooked Bacon',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['uncut_diamond'] = {
		label = 'Uncut Diamond',
		weight = 300,
		stack = true,
		close = false,
		description = "A rough Diamond"
	},

	['vehiclekeys'] = {
		label = 'Vehicle key',
		weight = 100,
		stack = false,
		close = true,
		description = "Vehicle key for your car"
	},

	['weed_nutrition'] = {
		label = 'Plant Fertilizer',
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition"
	},

	['sapphire_ring_silver'] = {
		label = 'Sapphire Ring Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['mining_ironfragment'] = {
		label = 'Iron Fragment',
		weight = 1000,
		stack = true,
		close = true,
		description = "Iron fragment from mining"
	},

	['security_card_02'] = {
		label = 'Security Card B',
		weight = 10,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['filled_evidence_bag'] = {
		label = 'Evidence Bag',
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:("
	},

	['mackerel'] = {
		label = 'Mackerel',
		weight = 2500,
		stack = false,
		close = false,
		description = "Mackerel"
	},

	['electronickit'] = {
		label = 'Electronic Kit',
		weight = 200,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?"
	},

	['raw_pork'] = {
		label = 'Raw Pork',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['silverore'] = {
		label = 'Silver Ore',
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore"
	},

	['firstaid'] = {
		label = 'First Aid',
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet"
	},

	['weed_amnesia'] = {
		label = 'Amnesia 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia"
	},

	['water_bottle'] = {
		label = 'Bottle of Water',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['canofcorn'] = {
		label = 'Can Of Corn',
		weight = 300,
		stack = true,
		close = true,
		description = ""
	},

	['emerald_necklace_silver'] = {
		label = 'Emerald Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['mining_copperfragment'] = {
		label = 'Copper Fragment',
		weight = 500,
		stack = true,
		close = true,
		description = "Copper fragment from mining"
	},

	['apple'] = {
		label = 'Apple',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['anchor'] = {
		label = 'Boat Anchor',
		weight = 2500,
		stack = true,
		close = true,
		description = "Boat Anchor"
	},

	['raw_ham'] = {
		label = 'Raw Ham',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['rooster_frango_carne'] = {
		label = 'Chicken Meat',
		weight = 500,
		stack = true,
		close = true,
		description = ""
	},

	['raw_bacon'] = {
		label = 'Raw Bacon',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['drill'] = {
		label = 'Drill',
		weight = 4500,
		stack = true,
		close = false,
		description = "The real deal..."
	},

	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['pickaxe'] = {
		label = 'Pickaxe',
		weight = 1000,
		stack = true,
		close = false,
		description = ""
	},

	['fishingrod'] = {
		label = 'Fishing Rod',
		weight = 750,
		stack = true,
		close = true,
		description = "A fishing rod for adventures with friends!!"
	},

	['weed_skunk_seed'] = {
		label = 'Skunk Seed',
		weight = 10,
		stack = true,
		close = true,
		description = "A weed seed of Skunk"
	},

	['emerald_ring'] = {
		label = 'Emerald Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['diamond_earring_silver'] = {
		label = 'Diamond Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['gold_ring'] = {
		label = 'Gold Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['xtcbaggy'] = {
		label = 'Bag of XTC',
		weight = 10,
		stack = true,
		close = true,
		description = "Pop those pills baby"
	},

	['bass'] = {
		label = 'Bass',
		weight = 1250,
		stack = false,
		close = false,
		description = "A normal fish Tatses pretty good!"
	},

	['goldbar'] = {
		label = 'Gold Bar',
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me"
	},

	['carbon'] = {
		label = 'Carbon',
		weight = 1000,
		stack = true,
		close = false,
		description = "Carbon, a base ore."
	},

	['emptycowbucket'] = {
		label = 'Empty Bucket',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['tablet'] = {
		label = 'Tablet',
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet"
	},

	['codfish'] = {
		label = 'Cod',
		weight = 2500,
		stack = false,
		close = false,
		description = "Cod"
	},

	['raw_beef'] = {
		label = 'Raw Beef',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['cooked_sausage'] = {
		label = 'Cooked Sausage',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['mining_goldbar'] = {
		label = 'Gold Bar',
		weight = 500,
		stack = true,
		close = true,
		description = "Gold Bar"
	},

	['firework3'] = {
		label = 'WipeOut',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['metalscrap'] = {
		label = 'Metal Scrap',
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this"
	},

	['glass'] = {
		label = 'Glass',
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out"
	},

	['stingray'] = {
		label = 'Stingray',
		weight = 2500,
		stack = false,
		close = false,
		description = "Stingray"
	},

	['apple_juice'] = {
		label = 'Apple Juice',
		weight = 500,
		stack = true,
		close = true,
		description = ""
	},

	['slicedpie'] = {
		label = 'Slice of Pie',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['visa'] = {
		label = 'Visa Card',
		weight = 10,
		stack = false,
		close = false,
		description = "Visa can be used via ATM"
	},

	['soybeans'] = {
		label = 'Soy Beans',
		weight = 100,
		stack = true,
		close = true,
		description = ""
	},

	['diamond_necklace_silver'] = {
		label = 'Diamond Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['meth'] = {
		label = 'Meth',
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth"
	},

	['goldingot'] = {
		label = 'Gold Ingot',
		weight = 1000,
		stack = true,
		close = false,
		description = ""
	},

	['harness'] = {
		label = 'Race Harness',
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car"
	},

	['casinochips'] = {
		label = 'Casino Chips',
		weight = 10,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling"
	},

	['milk'] = {
		label = 'Milk',
		weight = 500,
		stack = true,
		close = true,
		description = ""
	},

	['nitrous'] = {
		label = 'Nitrous',
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D"
	},

	['copperore'] = {
		label = 'Copper Ore',
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore."
	},

	['sapphire_earring'] = {
		label = 'Sapphire Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['dolphin'] = {
		label = 'Dolphin',
		weight = 5000,
		stack = false,
		close = false,
		description = "Dolphin"
	},

	['pinger'] = {
		label = 'Pinger',
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location"
	},

	['rooster_frango_depenado'] = {
		label = 'Plucked Chicken',
		weight = 1800,
		stack = true,
		close = true,
		description = ""
	},

	['ruby_necklace'] = {
		label = 'Ruby Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['sapphire_necklace'] = {
		label = 'Sapphire Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['diamond_earring'] = {
		label = 'Diamond Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['uncut_emerald'] = {
		label = 'Uncut Emerald',
		weight = 300,
		stack = true,
		close = false,
		description = "A rough Emerald"
	},

	['silver_ring'] = {
		label = 'Silver Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['cow_leather'] = {
		label = 'Cow Skin',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['emerald_earring'] = {
		label = 'Emerald Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['joint'] = {
		label = 'Joint',
		weight = 10,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you"
	},

	['rubber'] = {
		label = 'Rubber',
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D"
	},

	['ruby_necklace_silver'] = {
		label = 'Ruby Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['rooster_frango'] = {
		label = 'Alive Chicken',
		weight = 2500,
		stack = true,
		close = true,
		description = ""
	},

	['gatecrack'] = {
		label = 'Gatecrack',
		weight = 10,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences"
	},

	['sharktiger'] = {
		label = 'Shark',
		weight = 5000,
		stack = false,
		close = false,
		description = "Tigershark"
	},

	['markedbills'] = {
		label = 'Marked Money',
		weight = 500,
		stack = false,
		close = true,
		description = "Money?"
	},

	['diamond_necklace'] = {
		label = 'Diamond Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['steel'] = {
		label = 'Steel',
		weight = 800,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['ruby_earring'] = {
		label = 'Ruby Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['fishingloot'] = {
		label = 'Metal Box',
		weight = 500,
		stack = true,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open"
	},
--lumber
	['labkey'] = {
		label = 'Key',
		weight = 200,
		stack = false,
		close = true,
		description = "Key for a lock...?"
	},

	['ifaks'] = {
		label = 'ifaks',
		weight = 2000,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover."
	},

	['chillypepper'] = {
		label = 'Chilly Pepper',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['ruby_ring'] = {
		label = 'Ruby Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['tree_lumber'] = {
		label = 'Lumber',
		weight = 5000,
		stack = true,
		close = true,
		description = ""
	},

	['weaponlicense'] = {
		label = 'Weapon License',
		weight = 10,
		stack = false,
		close = true,
		description = "Weapon License"
	},

	['jerry_can'] = {
		label = 'Jerrycan 20L',
		weight = 10000,
		stack = true,
		close = true,
		description = "A can full of Fuel"
	},

	['hotsauce'] = {
		label = 'Hot Sauce',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['crack_baggy'] = {
		label = 'Bag of Crack',
		weight = 10,
		stack = true,
		close = true,
		description = "To get happy faster"
	},

	['pig_leather'] = {
		label = 'Pig Skin',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['uncut_ruby'] = {
		label = 'Uncut Ruby',
		weight = 300,
		stack = true,
		close = false,
		description = "A rough Ruby"
	},

	['weed_amnesia_seed'] = {
		label = 'Amnesia Seed',
		weight = 10,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia"
	},

	['diving_fill'] = {
		label = 'Diving Tube',
		weight = 1000,
		stack = false,
		close = true,
		description = nil
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?"
	},

	['weed_og-kush_seed'] = {
		label = 'OGKush Seed',
		weight = 10,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush"
	},

	['fishingboot'] = {
		label = 'Fishing Boot',
		weight = 800,
		stack = true,
		close = false,
		description = "Fishing Boot"
	},

	['antipatharia_coral'] = {
		label = 'Antipatharia',
		weight = 500,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals"
	},

	['mining_stone'] = {
		label = 'Mined Stone',
		weight = 500,
		stack = true,
		close = true,
		description = "Mined Stone"
	},

	['fishingtin'] = {
		label = 'Fishing Tin',
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin"
	},

	['copper'] = {
		label = 'Copper',
		weight = 200,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['bottle'] = {
		label = 'Empty Bottle',
		weight = 100,
		stack = true,
		close = false,
		description = "A glass bottle"
	},

	['fishinglootbig'] = {
		label = 'Treasure Chest',
		weight = 5000,
		stack = true,
		close = true,
		description = "The lock seems to be intact, Might need a key"
	},

	['silverchain'] = {
		label = 'Silver Chain',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['pearlscard'] = {
		label = 'Pearls Seafood',
		weight = 100,
		stack = true,
		close = true,
		description = "A special member of Pearl's Seafood Restaurant"
	},

	['coke_small_brick'] = {
		label = 'Coke Package',
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space"
	},

	['mining_pickaxe'] = {
		label = 'Mining Pickaxe',
		weight = 2200,
		stack = false,
		close = true,
		description = "Classic's pickaxe for mining"
	},

	['diamond_ring_silver'] = {
		label = 'Diamond Ring Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['silveringot'] = {
		label = 'Silver Ingot',
		weight = 500,
		stack = true,
		close = false,
		description = ""
	},

	['mining_goldnugget'] = {
		label = 'Golden Nugget',
		weight = 500,
		stack = true,
		close = true,
		description = "Golden nugget from mining"
	},

	['printerdocument'] = {
		label = 'Document',
		weight = 200,
		stack = false,
		close = true,
		description = "A nice document"
	},

	['mining_pan'] = {
		label = 'Washing Pan',
		weight = 300,
		stack = false,
		close = true,
		description = "Classic's washing pan"
	},

	['weed_white-widow'] = {
		label = 'White Widow 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow"
	},

	['rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 10,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis."
	},

	['ironoxide'] = {
		label = 'Iron Powder',
		weight = 500,
		stack = true,
		close = false,
		description = "Some powder to mix with."
	},

	['dendrogyra_coral'] = {
		label = 'Dendrogyra',
		weight = 500,
		stack = true,
		close = true,
		description = "Its also known as pillar coral"
	},

	['lawyerpass'] = {
		label = 'Lawyer Pass',
		weight = 10,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect"
	},

	['weed_skunk'] = {
		label = 'Skunk 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk"
	},

	['police_stormram'] = {
		label = 'Stormram',
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors"
	},

	['uncut_sapphire'] = {
		label = 'Uncut Sapphire',
		weight = 300,
		stack = true,
		close = false,
		description = "A rough Sapphire"
	},

	['wine'] = {
		label = 'Wine',
		weight = 300,
		client = {
			status = {thirst = 85, stress = -42.5 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['mining_copperbar'] = {
		label = 'Copper Bar',
		weight = 500,
		stack = true,
		close = true,
		description = "Copper Bar"
	},

	['cryptostick'] = {
		label = 'Crypto Stick',
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"
	},

	['tree_bark'] = {
		label = 'Tree Bark',
		weight = 2500,
		stack = true,
		close = true,
		description = ""
	},

	['cleaningkit'] = {
		label = 'Cleaning Kit',
		weight = 500,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!"
	},

	['fishingkey'] = {
		label = 'Corroded Key',
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull"
	},

	['mining_washedstone'] = {
		label = 'Washed Stone',
		weight = 500,
		stack = true,
		close = true,
		description = "Wasted Stone"
	},

	['emerald'] = {
		label = 'Emerald',
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers"
	},

	['emerald_necklace'] = {
		label = 'Emerald Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['wood_plank'] = {
		label = 'Wood Plank',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['aluminum'] = {
		label = 'Aluminium',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['rawpumpkin'] = {
		label = 'Raw Pumpkin',
		weight = 1800,
		stack = true,
		close = true,
		description = ""
	},

	['empty_weed_bag'] = {
		label = 'Empty Weed Bag',
		weight = 10,
		stack = true,
		close = true,
		description = "A small empty bag"
	},

	['advancedlockpick'] = {
		label = 'Advanced Lockpick',
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers"
	},

	['sapphire_earring_silver'] = {
		label = 'Sapphire Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['fishicebox'] = {
		label = 'Fishing Ice Chest',
		weight = 2500,
		stack = false,
		close = true,
		description = "Ice Box to store all of your fish"
	},

	['milkbucket'] = {
		label = 'Milk Bucket',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},

	['can'] = {
		label = 'Empty Can',
		weight = 15,
		stack = true,
		close = false,
		description = "An empty can, good for recycling"
	},

	['repairkit'] = {
		label = 'Repairkit',
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['drillbit'] = {
		label = 'Drill Bit',
		weight = 300,
		stack = true,
		close = false,
		description = ""
	},

	['stone'] = {
		label = 'Stone',
		weight = 2000,
		stack = true,
		close = false,
		description = "Stone woo"
	},

	['goldchain'] = {
		label = 'Golden Chain',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['beef'] = {
		label = 'Steak',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['walkstick'] = {
		label = 'Walking Stick',
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA"
	},

	['binoculars'] = {
		label = 'Binoculars',
		weight = 700,
		stack = true,
		close = true,
		description = "Sneaky Breaky..."
	},

	['raw_sausage'] = {
		label = 'Raw Sausage',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['tosti'] = {
		label = 'Grilled Cheese Sandwich',
		weight = 200,
		client = {
			status = { hunger = 36.4 },
			anim = 'eating',
			prop = 'burger',
			usetime = math.random(5000, 6000),
			notification = 'You ate a delicious burger'
		},
	},

	['rooster_frango_morto'] = {
		label = 'Dead Chicken',
		weight = 2000,
		stack = true,
		close = true,
		description = ""
	},

	['beer'] = {
		label = 'Beer',
		weight = 500,
		client = {
			status = {thirst = 50, stress = -25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['firework1'] = {
		label = '2Brothers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['grapejuice'] = {
		label = 'Grape Juice',
		weight = 500,
		client = {
			status = {thirst = 80, stress = -40 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['pumpkinpiebox'] = {
		label = 'Box of Pie',
		weight = 500,
		stack = true,
		close = true,
		description = ""
	},

	['firework4'] = {
		label = 'Weeping Willow',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['corncob'] = {
		label = 'Corn Cob',
		weight = 300,
		stack = true,
		close = true,
		description = ""
	},

	['rolex'] = {
		label = 'Golden Watch',
		weight = 500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!"
	},

	['driver_license'] = {
		label = 'Drivers License',
		weight = 10,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle"
	},

	['advancedrepairkit'] = {
		label = 'Advanced Repairkit',
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['certificate'] = {
		label = 'Certificate',
		weight = 10,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff"
	},

	['cokebaggy'] = {
		label = 'Bag of Coke',
		weight = 10,
		stack = true,
		close = true,
		description = "To get happy real quick"
	},

	['fishbait'] = {
		label = 'Fish Bait',
		weight = 150,
		stack = true,
		close = true,
		description = "Fishing bait"
	},

	['plastic'] = {
		label = 'Plastic',
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019"
	},

	['screwdriverset'] = {
		label = 'Toolkit',
		weight = 1500,
		stack = true,
		close = false,
		description = "Very useful to screw... screws..."
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 100,
		stack = true,
		close = false,
		description = "A Diamond that shimmers"
	},

	['coke_brick'] = {
		label = 'Coke Brick',
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space"
	},

	['tomatopaste'] = {
		label = 'tomato Paste',
		weight = 800,
		stack = true,
		close = true,
		description = ""
	},

	['fishtacklebox'] = {
		label = 'Tackle Box',
		weight = 2000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman"
	},

	['weed_ak47_seed'] = {
		label = 'AK47 Seed',
		weight = 10,
		stack = true,
		close = true,
		description = "A weed seed of AK47"
	},

	['weed_white-widow_seed'] = {
		label = 'White Widow Seed',
		weight = 10,
		stack = true,
		close = false,
		description = "A weed seed of White Widow"
	},

	['greenpepper'] = {
		label = 'Green Pepper',
		weight = 100,
		stack = true,
		close = true,
		description = ""
	},

	['weed_ak47'] = {
		label = 'AK47 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47"
	},

	['snikkel_candy'] = {
		label = 'Snikkel',
		weight = 100,
		client = {
			status = { hunger = 18,2 },
			anim = 'eating',
			prop = 'burger',
			usetime = math.random(5000, 6000),
			notification = 'You ate a delicious burger'
		},
	},

	['trojan_usb'] = {
		label = 'Trojan USB',
		weight = 10,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems"
	},

	['goldearring'] = {
		label = 'Golden Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['iron'] = {
		label = 'Iron',
		weight = 500,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something"
	},

	['kurkakola'] = {
		label = 'Cola',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['flounder'] = {
		label = 'Flounder',
		weight = 2500,
		stack = false,
		close = false,
		description = "Flounder"
	},

	['miningdrill'] = {
		label = 'Mining Drill',
		weight = 1500,
		stack = true,
		close = false,
		description = ""
	},

	['ironore'] = {
		label = 'Iron Ore',
		weight = 1000,
		stack = true,
		close = false,
		description = "Iron, a base ore."
	},

	['sharkhammer'] = {
		label = 'Shark',
		weight = 5000,
		stack = false,
		close = false,
		description = "Hammerhead Shark"
	},

	['iphone'] = {
		label = 'iPhone',
		weight = 500,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['emerald_earring_silver'] = {
		label = 'Emerald Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['radioscanner'] = {
		label = 'Radio Scanner',
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however"
	},

	['gasoline'] = {
		label = 'Gas',
		weight = 2000,
		stack = true,
		close = true,
		description = "Gas for your life"
	},

	['twerks_candy'] = {
		label = 'Twerks',
		weight = 100,
		client = {
			status = { hunger = 9.1 },
			anim = 'eating',
			prop = 'burger',
			usetime = math.random(5000, 6000),
			notification = 'You ate a delicious burger'
		},
	},

	['aluminumoxide'] = {
		label = 'Aluminium Powder',
		weight = 500,
		stack = true,
		close = false,
		description = "Some powder to mix with"
	},

	['emerald_ring_silver'] = {
		label = 'Emerald Ring Silver',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 500,
		client = {
			status = {thirst = 75, stress = -37.5 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['thermite'] = {
		label = 'Thermite',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn"
	},

	['killerwhale'] = {
		label = 'Whale',
		weight = 15000,
		stack = false,
		close = false,
		description = "Killer Whale"
	},

	['heavyarmor'] = {
		label = 'Heavy Armor',
		weight = 10000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['samsungphone'] = {
		label = 'Samsung S10',
		weight = 500,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['sapphire_ring'] = {
		label = 'Sapphire Ring',
		weight = 200,
		stack = true,
		close = false,
		description = ""
	},

	['painkillers'] = {
		label = 'Painkillers',
		weight = 10,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again"
	},

	['sapphire'] = {
		label = 'Sapphire',
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers"
	},

	['weed_og-kush'] = {
		label = 'OGKush 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush"
	},

	['weed_purple-haze'] = {
		label = 'Purple Haze 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze"
	},

	['tunerlaptop'] = {
		label = 'Tunerchip',
		weight = 600,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing"
	},

	['security_card_01'] = {
		label = 'Security Card A',
		weight = 10,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['cooked_pork'] = {
		label = 'Cooked Pork',
		weight = 250,
		stack = true,
		close = true,
		description = ""
	},

	['grapes'] = {
		label = 'Grapes',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['firework2'] = {
		label = 'Poppelers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['mining_ironbar'] = {
		label = 'Iron Bar',
		weight = 1000,
		stack = true,
		close = true,
		description = "Iron Bar"
	},

	['pumpshotgun2_luxuryfinish'] = {
		label = 'Shotgun Finish',
		weight = 3200,
		stack = true,
		close = true,
		description = "Pump Shotgun Luxury Finish"
	},

	['redw'] = {
		label = 'Redwood Pack',
		weight = 1,
		stack = true,
		close = true,
		description = "Redwood Pack"
	},

	['marlboro'] = {
		label = 'Marlboro Pack',
		weight = 1,
		stack = true,
		close = true,
		description = "Marlboro Pack"
	},

	['cubancigar'] = {
		label = 'Cuban Cigar',
		weight = 1,
		stack = true,
		close = true,
		description = "Cuban Cigar"
	},

	['davidoffcigar'] = {
		label = 'Davidoff Cigar',
		weight = 1,
		stack = true,
		close = true,
		description = "Davidoff Cigar"
	},

	['redwcig'] = {
		label = 'Rredwood Cigarette',
		weight = 1,
		stack = true,
		close = true,
		description = "Rredwood Cigarette"
	},

	['marlborocig'] = {
		label = 'Marlboro Cigarette',
		weight = 1,
		stack = true,
		close = true,
		description = "Marlboro Cigarette"
	},

	['vape'] = {
		label = 'Vape',
		weight = 1,
		stack = true,
		close = true,
		description = "Vape"
	},

	['liquid'] = {
		label = 'Liquid',
		weight = 1,
		stack = true,
		close = true,
		description = "Liquid"
	},

	['bong'] = {
		label = 'Bong',
		weight = 1,
		stack = true,
		close = true,
		description = "bong"
	},

	['og_kush_joint'] = {
		label = 'Og Kush Joint',
		weight = 1,
		stack = true,
		close = true,
		description = "Og Kush Joint"
	},

	['blue_dream_joint'] = {
		label = 'Blue Dream Joint',
		weight = 1,
		stack = true,
		close = true,
		description = "Blue Dream Joint"
	},

	['purple_haze_joint'] = {
		label = 'Purple Haze Joint',
		weight = 1,
		stack = true,
		close = true,
		description = "Purple Haze Joint"
	},

	['banana_kush_joint'] = {
		label = 'Banana Lush Joint',
		weight = 1,
		stack = true,
		close = true,
		description = "Banana Lush Joint"
	},

	['og_kush_weed'] = {
		label = 'Og Kush Weed 1G',
		weight = 1,
		stack = true,
		close = true,
		description = "Og Kush Weed 1G"
	},

	['blue_dream_weed'] = {
		label = 'Blue Dream Weed 1G',
		weight = 1,
		stack = true,
		close = true,
		description = "Blue Dream Weed 1G"
	},

	['banana_kush_weed'] = {
		label = 'Banana Kush Weed 1G',
		weight = 1,
		stack = true,
		close = true,
		description = "Banana Kush Weed 1G"
	},

	['purple_haze_weed'] = {
		label = 'Purple Haze Weed 1G',
		weight = 1,
		stack = true,
		close = true,
		description = "Purple Haze Weed 1G"
	},

	['toaster'] = {
		label = 'Toaster',
		weight = 18000,
		stack = false,
		close = true,
		description = "Toast"
	},

	['microwave'] = {
		label = 'Microwave',
		weight = 46000,
		stack = false,
		close = true,
		description = "Microwave"
	},

	['small_tv'] = {
		label = 'Small TV',
		weight = 30000,
		stack = false,
		close = true,
		description = "TV"
	},

	["handgunrepairkit_lv2"] = {
		label = "Handgun Repair Kit Lv2",
		weight = 100,
		stack = true,
		close = true,
		description = "Fix Gun Level 2",
		client = {
			image = "fixkit.png",
		}
	},

	["handgunrepairkit_lv1"] = {
		label = "Handgun Repair Kit Lv1",
		weight = 100,
		stack = true,
		close = true,
		description = "Fix Gun Level 1",
		client = {
			image = "fixkit.png",
		}
	},

	["meleerepairkit_lv1"] = {
		label = "Melee Repair Kit Lv1",
		weight = 100,
		stack = true,
		close = true,
		description = "Fix Melee Level 1",
		client = {
			image = "fixkit.png",
		}
	},

	["stress_medicine"] = {
		label = "Stress Medicine",
		weight = 500,
		client = {
			status = { stress = -50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	["meleerepairkit_lv2"] = {
		label = "Melee Repair Kit Lv2",
		weight = 100,
		stack = true,
		close = true,
		description = "Fix Melee Level 1",
		client = {
			image = "fixkit.png",
		}
	},

	["begging_guitar"] = {
		label = "Guitar",
		weight = 500,
		stack = true,
		close = false,
		description = "StreetArt Job Item",
	},

	["begging_box"] = {
		label = "Begging Box",
		weight = 500,
		stack = true,
		close = false,
		description = "StreetArt Job Item",
	},

	["WEAPON_KNIFE0"] = {
		label = "Chicken Knife",
		weight = 1000,
		stack = false,
		close = false,
		description = "Rooster Job",
	},

	["miningtool"] = {
		label = "Mining Tool",
		weight = 500,
		stack = true,
		close = false,
		description = "Item For Mining Job",
	},

	["wood"] = {
		label = "wood",
		weight = 500,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["tape"] = {
		label = "Tape",
		weight = 100,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["zinc_coil"] = {
		label = "Zinc Coil",
		weight = 500,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["polymer"] = {
		label = "Polymer",
		weight = 1000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["metal"] = {
		label = "Metal",
		weight = 1000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["spring"] = {
		label = "Spring",
		weight = 100,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["oil"] = {
		label = "Oil",
		weight = 500,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["wheel_moto"] = {
		label = "Wheel Moto",
		weight = 1000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["shock_absorber"] = {
		label = "Shock Absorber",
		weight = 1000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["oil_moto"] = {
		label = "Oil Moto",
		weight = 500,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["spark_plug"] = {
		label = "Spark Plug",
		weight = 100,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["wheel_car"] = {
		label = "Wheel Car",
		weight = 2000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["car_disk_brake"] = {
		label = "Car Disk Brake",
		weight = 500,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["volt_car_battery"] = {
		label = "Volt Car Battery",
		weight = 1000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["car_engine"] = {
		label = "Car Engine",
		weight = 2000,
		stack = true,
		close = false,
		description = "Material For Make Kit",
	},

	["alive_chicken"] = {
		label = "Alive Chicken",
		weight = 2000,
		stack = true,
		close = false,
		description = "Item Rooster Job",
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered Chicken",
		weight = 2000,
		stack = true,
		close = false,
		description = "Item Rooster Job",
	},

	["packagedchicken"] = {
		label = "Packaged chicken",
		weight = 2000,
		stack = true,
		close = false,
		description = "Item Rooster Job",
	},

	["WEAPON_BATTLEAXE0"] = {
		label = "Lumber Axe",
		weight = 1200,
		stack = true,
		close = false,
		description = "Item Lumberjack Job",
	},


}
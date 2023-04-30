--
-- constants
--
trans_am={}
trans_am.LONGIT_DRAG_FACTOR = 0.12*0.12
trans_am.LATER_DRAG_FACTOR = 2.0
trans_am.gravity = automobiles_lib.gravity
trans_am.max_speed = 40
trans_am.max_acc_factor = 12
trans_am.max_fuel = 10
trans_am.trunk_slots = 12
trans_am.ideal_step = 0.2
trans_am.engine_sound = "automobiles_engine"

trans_am_GAUGE_FUEL_POSITION =  {x=-4.47,y=8.50,z=20.5}

trans_am.front_wheel_xpos = 9.5
trans_am.rear_wheel_xpos = 9.5

dofile(minetest.get_modpath("automobiles_lib") .. DIR_DELIM .. "custom_physics.lua")
dofile(minetest.get_modpath("automobiles_lib") .. DIR_DELIM .. "fuel_management.lua")
dofile(minetest.get_modpath("automobiles_lib") .. DIR_DELIM .. "ground_detection.lua")
dofile(minetest.get_modpath("automobiles_lib") .. DIR_DELIM .. "control.lua")
dofile(minetest.get_modpath("automobiles_trans_am") .. DIR_DELIM .. "utilities.lua")
dofile(minetest.get_modpath("automobiles_trans_am") .. DIR_DELIM .. "entities.lua")
dofile(minetest.get_modpath("automobiles_trans_am") .. DIR_DELIM .. "forms.lua")
dofile(minetest.get_modpath("automobiles_trans_am") .. DIR_DELIM .. "crafts.lua")


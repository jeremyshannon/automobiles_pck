--
-- entity
--

minetest.register_entity('automobiles_roadster:front_suspension',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_front_suspension.b3d",
    textures = {"automobiles_black.png",},
	},

    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:rear_suspension',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_rear_suspension.b3d",
    textures = {"automobiles_black.png",},
	},

    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:wheel',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_wheel.b3d",
    backface_culling = false,
	textures = {"automobiles_black.png", "automobiles_wood2.png", "automobiles_roadster_wheel.png"},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:top1',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_top1.b3d",
    backface_culling = false,
	textures = {"automobiles_metal.png", "automobiles_black.png", "automobiles_alpha.png"},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:top2',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_top2.b3d",
    backface_culling = false,
	textures = {"automobiles_metal.png", "automobiles_black.png", "automobiles_alpha.png"},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:pivot_mesh',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_pivot_mesh.b3d",
    textures = {"automobiles_black.png",},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('automobiles_roadster:steering',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "automobiles_roadster_steering.b3d",
    textures = {"automobiles_metal.png", "automobiles_wood2.png", "automobiles_metal.png"},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity("automobiles_roadster:roadster", {
	initial_properties = {
	    physical = true,
        collide_with_objects = true,
	    collisionbox = {-1.1, -0.51, -1.1, 1.1, 2, 1.1},
	    selectionbox = {-1.1, 0.0, -1.1, 1.1, 2, 1.1},
        stepheight = 0.5,
	    visual = "mesh",
	    mesh = "automobiles_roadster.b3d",
        textures = {
            "automobiles_black.png", --bancos
            "automobiles_painting.png", --pintura
            "automobiles_black.png", --chassis
            "automobiles_metal2.png", --carcaça farol
            "automobiles_black.png", --grade do radiador
            "automobiles_black.png", --forração interna
            "automobiles_metal.png", --lente do farol
            "automobiles_wood.png", --parede de fogo
            "automobiles_roadster_fuel.png", --combustivel
            "automobiles_metal2.png", --parabrisa fixo
            "automobiles_alpha.png", --vidro do parabrisa fixo
            "automobiles_black.png", --paralamas
            "automobiles_painting.png", --portas
            "automobiles_black.png", --portas interno
            "automobiles_metal2.png", --parabrisa movel
            "automobiles_alpha.png", --vidro do parabrisa movel
            "automobiles_metal2.png", --carenagem do radiador
            "automobiles_wood.png", --assoalho
            "automobiles_painting.png", --tanque de combustivel
            },
    },
    textures = {},
	driver_name = nil,
	sound_handle = nil,
    owner = "",
    static_save = true,
    infotext = "A very nice roadster!",
    hp = 50,
    buoyancy = 2,
    physics = automobiles.physics,
    lastvelocity = vector.new(),
    time_total = 0,
    _passenger = nil,
    _color = "#2b2b2b",
    _steering_angle = 0,
    _engine_running = false,
    _last_checkpoint = "",
    _total_laps = -1,
    _race_id = "",
    _energy = 1,
    _last_time_collision_snd = 0,
    _last_time_drift_snd = 0,
    _last_time_command = 0,

    get_staticdata = function(self) -- unloaded/unloads ... is now saved
        return minetest.serialize({
            stored_owner = self.owner,
            stored_hp = self.hp,
            stored_color = self._color,
            stored_steering = self._steering_angle,
            stored_energy = self._energy,
            --race data
            stored_last_checkpoint = self._last_checkpoint,
            stored_total_laps = self._total_laps,
            stored_race_id = self._race_id,
        })
    end,

	on_activate = function(self, staticdata, dtime_s)
        if staticdata ~= "" and staticdata ~= nil then
            local data = minetest.deserialize(staticdata) or {}
            self.owner = data.stored_owner
            self.hp = data.stored_hp
            self._color = data.stored_color
            self._steering_angle = data.stored_steering
            self._energy = data.stored_energy
            --minetest.debug("loaded: ", self.energy)
            --race data
            self._last_checkpoint = data.stored_last_checkpoint
            self._total_laps = data.stored_total_laps
            self._race_id = data.stored_race_id
        end

        self.object:set_animation({x = 1, y = 8}, 0, 0, true)

        automobiles.paint(self, self._color)
        local pos = self.object:get_pos()

        local top1=minetest.add_entity(self.object:get_pos(),'automobiles_roadster:top1')
	    top1:set_attach(self.object,'',{x=0,y=0,z=0},{x=0,y=0,z=0})
	    self.top1 = top1

        local front_suspension=minetest.add_entity(self.object:get_pos(),'automobiles_roadster:front_suspension')
	    front_suspension:set_attach(self.object,'',{x=0,y=0,z=25.5},{x=0,y=0,z=0})
	    self.front_suspension = front_suspension

	    local lf_wheel=minetest.add_entity(pos,'automobiles_roadster:wheel')
	    lf_wheel:set_attach(self.front_suspension,'',{x=-10.8,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        lf_wheel:set_animation({x = 2, y = 13}, 0, 0, true)
	    self.lf_wheel = lf_wheel

	    local rf_wheel=minetest.add_entity(pos,'automobiles_roadster:wheel')
	    rf_wheel:set_attach(self.front_suspension,'',{x=10.8,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        rf_wheel:set_animation({x = 2, y = 13}, 0, 0, true)
	    self.rf_wheel = rf_wheel

        local rear_suspension=minetest.add_entity(self.object:get_pos(),'automobiles_roadster:rear_suspension')
	    rear_suspension:set_attach(self.object,'',{x=0,y=0,z=0},{x=0,y=0,z=0})
	    self.rear_suspension = rear_suspension

	    local lr_wheel=minetest.add_entity(pos,'automobiles_roadster:wheel')
	    lr_wheel:set_attach(self.rear_suspension,'',{x=-10.8,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        lr_wheel:set_animation({x = 2, y = 13}, 0, 0, true)
	    self.lr_wheel = lr_wheel

	    local rr_wheel=minetest.add_entity(pos,'automobiles_roadster:wheel')
	    rr_wheel:set_attach(self.rear_suspension,'',{x=10.8,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        rr_wheel:set_animation({x = 2, y = 13}, 0, 0, true)
	    self.rr_wheel = rr_wheel

	    local steering_axis=minetest.add_entity(pos,'automobiles_roadster:pivot_mesh')
        steering_axis:set_attach(self.object,'',{x=-4.25,y=12,z=15},{x=70,y=0,z=0})
	    self.steering_axis = steering_axis

	    local steering=minetest.add_entity(self.steering_axis:get_pos(),'automobiles_roadster:steering')
        steering:set_attach(self.steering_axis,'',{x=0,y=0,z=0},{x=0,y=0,z=0})
	    self.steering = steering

	    local driver_seat=minetest.add_entity(pos,'automobiles_roadster:pivot_mesh')
        driver_seat:set_attach(self.object,'',{x=-4.25,y=7.5,z=9.5},{x=0,y=0,z=0})
	    self.driver_seat = driver_seat

	    local passenger_seat=minetest.add_entity(pos,'automobiles_roadster:pivot_mesh')
        passenger_seat:set_attach(self.object,'',{x=4.25,y=7.5,z=9.5},{x=0,y=0,z=0})
	    self.passenger_seat = passenger_seat

		self.object:set_armor_groups({immortal=1})

        mobkit.actfunc(self, staticdata, dtime_s)
	end,

	on_step = function(self, dtime)
        mobkit.stepfunc(self, dtime)
        --[[sound play control]]--
        self._last_time_collision_snd = self._last_time_collision_snd + dtime
        if self._last_time_collision_snd > 1 then self._last_time_collision_snd = 1 end
        self._last_time_drift_snd = self._last_time_drift_snd + dtime
        if self._last_time_drift_snd > 1 then self._last_time_drift_snd = 1 end
        --[[end sound control]]--

        local rotation = self.object:get_rotation()
        local yaw = rotation.y
		local newyaw=yaw
        local pitch = rotation.x

        local hull_direction = minetest.yaw_to_dir(yaw)
        local nhdir = {x=hull_direction.z,y=0,z=-hull_direction.x}		-- lateral unit vector
        local velocity = self.object:get_velocity()

        local longit_speed = automobiles.dot(velocity,hull_direction)
        local fuel_weight_factor = (5 - self._energy)/5000
        local longit_drag = vector.multiply(hull_direction,(longit_speed*longit_speed) *
            (roadster.LONGIT_DRAG_FACTOR - fuel_weight_factor) * -1 * automobiles.sign(longit_speed))
        
		local later_speed = automobiles.dot(velocity,nhdir)
        local later_drag = vector.multiply(nhdir,later_speed*
            later_speed*roadster.LATER_DRAG_FACTOR*-1*automobiles.sign(later_speed))

        local accel = vector.add(longit_drag,later_drag)

        local player = nil
        local is_attached = false
        if self.driver_name then
            player = minetest.get_player_by_name(self.driver_name)
            
            if player then
                local player_attach = player:get_attach()
                if player_attach then
                    if self.driver_seat then
                        if player_attach == self.driver_seat then is_attached = true end
                    end
                end
            end
        end

		if is_attached then --and self.driver_name == self.owner then
            local curr_pos = self.object:get_pos()
            local impact = automobiles.get_hipotenuse_value(velocity, self.lastvelocity)
            if impact > 1 then
                --self.damage = self.damage + impact --sum the impact value directly to damage meter
                if self._last_time_collision_snd > 0.3 then
                    self._last_time_collision_snd = 0
                    minetest.sound_play("collision", {
                        to_player = self.driver_name,
	                    --pos = curr_pos,
	                    --max_hear_distance = 5,
	                    gain = 1.0,
                        fade = 0.0,
                        pitch = 1.0,
                    })
                end
                --[[if self.damage > 100 then --if acumulated damage is greater than 100, adieu
                    automobiles.destroy(self)
                end]]--
            end

            local min_later_speed = 0.9
            if (later_speed > min_later_speed or later_speed < -min_later_speed) and
                    self._last_time_drift_snd > 0.6 then
                self._last_time_drift_snd = 0
                minetest.sound_play("drifting", {
                    to_player = self.driver_name,
                    pos = curr_pos,
                    max_hear_distance = 5,
                    gain = 1.0,
                    fade = 0.0,
                    pitch = 1.0,
                    ephemeral = true,
                })
            end

            --control
            local steering_angle_max = 30
            local steering_speed = 40
			accel = automobiles.control(self, dtime, hull_direction, longit_speed, longit_drag, later_drag, accel, roadster.max_acc_factor, roadster.max_speed, steering_angle_max, steering_speed)
        else
            if self.sound_handle ~= nil then
	            minetest.sound_stop(self.sound_handle)
	            self.sound_handle = nil
            end
		end

        local angle_factor = self._steering_angle / 10
        self.lf_wheel:set_animation_frame_speed(longit_speed * (10 + angle_factor))
        self.rf_wheel:set_animation_frame_speed(longit_speed * (10 - angle_factor))
        self.lr_wheel:set_animation_frame_speed(longit_speed * (10 - angle_factor))
        self.rr_wheel:set_animation_frame_speed(longit_speed * (10 + angle_factor))

        --whell turn
        self.steering:set_attach(self.steering_axis,'',{x=0,y=0,z=0},{x=0,y=0,z=self._steering_angle*2})
        self.lf_wheel:set_attach(self.front_suspension,'',{x=10.8,y=0,z=0},{x=0,y=-self._steering_angle-angle_factor,z=0})
        self.rf_wheel:set_attach(self.front_suspension,'',{x=-10.8,y=0,z=0},{x=0,y=-self._steering_angle+angle_factor,z=0})

		if math.abs(self._steering_angle)>5 then
            local turn_rate = math.rad(40)
			newyaw = yaw + dtime*(1 - 1 / (math.abs(longit_speed) + 1)) *
                self._steering_angle / 30 * turn_rate * automobiles.sign(longit_speed)
		end

        --[[if player and is_attached then
            player:set_look_horizontal(newyaw)
        end]]--

		local newpitch = velocity.y * math.rad(6)

        --[[
        accell correction
        under some circunstances the acceleration exceeds the max value accepted by set_acceleration and
        the game crashes with an overflow, so limiting the max acceleration in each axis prevents the crash
        ]]--
        local max_factor = 25
        local acc_adjusted = 10
        if accel.x > max_factor then accel.x = acc_adjusted end
        if accel.x < -max_factor then accel.x = -acc_adjusted end
        if accel.z > max_factor then accel.z = acc_adjusted end
        if accel.z < -max_factor then accel.z = -acc_adjusted end
        -- end correction
        accel.y = -automobiles.gravity

        self.object:set_acceleration(accel)

		if newyaw~=yaw or newpitch~=pitch then self.object:set_rotation({x=newpitch,y=newyaw,z=0}) end

        --saves last velocity for collision detection (abrupt stop)
        self.lastvelocity = self.object:get_velocity()

        -- calculate energy consumption --
        ----------------------------------
        if self._energy > 0 and self._engine_running and not automobiles.is_creative then
            local zero_reference = vector.new()
            local acceleration = automobiles.get_hipotenuse_value(accel, zero_reference)
            local consumed_power = acceleration/200000
            self._energy = self._energy - consumed_power;
        end
        if self._energy <= 0 and self._engine_running then
            self._engine_running = false
            if self.sound_handle then minetest.sound_stop(self.sound_handle) end
            minetest.chat_send_player(self.driver_name, "Out of fuel")
        end
        ----------------------------
        -- end energy consumption --
	end,

	on_punch = function(self, puncher, ttime, toolcaps, dir, damage)
		if not puncher or not puncher:is_player() then
			return
		end

		local name = puncher:get_player_name()
        --[[if self.owner and self.owner ~= name and self.owner ~= "" then return end]]--
        if self.owner == nil then
            self.owner = name
        end
        	
        if self.driver_name and self.driver_name ~= name then
			-- do not allow other players to remove the object while there is a driver
			return
		end
        
        local is_attached = false
        if puncher:get_attach() == self.object then is_attached = true end

        local itmstck=puncher:get_wielded_item()
        local item_name = ""
        if itmstck then item_name = itmstck:get_name() end

        --refuel procedure
        --[[
        refuel works it car is stopped and engine is off
        ]]--
        local velocity = self.object:get_velocity()
        local speed = automobiles.get_hipotenuse_value(vector.new(), velocity)
        if self._engine_running == false and speed <= 0.1 then
            if automobiles.loadFuel(self, puncher:get_player_name(), roadster.max_fuel) then return end
        end
        -- end refuel

        if is_attached == false then

            -- deal with painting or destroying
		    if itmstck then
                --race status restart
                if item_name == "checkpoints:status_restarter" and self._engine_running == false then
                    --restart race current status
                    self._last_checkpoint = ""
                    self._total_laps = -1
                    self._race_id = ""
                    return
                end

                --painting
                local split = string.split(item_name, ":")
                local color, indx, _
                if split[1] then _,indx = split[1]:find('dye') end
                if indx then
                    for clr,_ in pairs(automobiles.colors) do
                        local _,x = split[2]:find(clr)
                        if x then color = clr end
                    end
                else
                    color = false
                end
                    
			    if color then

                    --lets paint!!!!
				    --local color = item_name:sub(indx+1)
				    local colstr = automobiles.colors[color]
                    --minetest.chat_send_all(color ..' '.. dump(colstr))
				    if colstr then
                        automobiles.paint(self, colstr)
					    itmstck:set_count(itmstck:get_count()-1)
					    puncher:set_wielded_item(itmstck)
				    end
                    -- end painting

			    else -- deal damage

                    local is_admin = false
                    is_admin = minetest.check_player_privs(puncher, {server=true})
                    --minetest.chat_send_all('owner '.. self.owner ..' - name '.. name)
				    if not self.driver and (self.owner == name or is_admin == true) and toolcaps and
                            toolcaps.damage_groups and toolcaps.damage_groups.fleshy then
                        self.hp = self.hp - 10
                        minetest.sound_play("collision", {
	                        object = self.object,
	                        max_hear_distance = 5,
	                        gain = 1.0,
                            fade = 0.0,
                            pitch = 1.0,
                        })
				    end
			    end
            end

            if self.hp <= 0 then
                roadster.destroy(self)
            end

        end
        
	end,

	on_rightclick = function(self, clicker)
		if not clicker or not clicker:is_player() then
			return
		end

		local name = clicker:get_player_name()
        --[[if self.owner and self.owner ~= name and self.owner ~= "" then return end]]--
        if self.owner == "" then
            self.owner = name
        end

		if name == self.driver_name then
            --detach all
            automobiles.dettach_driver(self, clicker)

            local passenger = nil
            if self._passenger then
                passenger = minetest.get_player_by_name(self._passenger)
                if passenger then automobiles.dettach_pax(self, passenger) end
            end

            self.object:set_acceleration(vector.multiply(automobiles.vector_up, -automobiles.gravity))
        
		else
            if name == self.owner then
                --is the owner, okay, lets attach
                automobiles.attach_driver(self, clicker)
            else
                --minetest.chat_send_all("clicou")
                --a passenger
                if self._passenger == nil then
                    --there is no passenger, so lets attach
                    if self.driver_name then
                        automobiles.attach_pax(self, clicker, true)
                    end
                else
                    --there is a passeger
                    if self._passenger == name then
                        --if you are the psenger, so deattach
                        automobiles.dettach_pax(self, clicker)
                    end
                end
            end
		end
	end,
})

--
-- items
--

-- roadster
minetest.register_craftitem("automobiles_roadster:roadster", {
	description = "Roadster",
	inventory_image = "automobiles_roadster.png",
    liquids_pointable = false,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
        
        local pointed_pos = pointed_thing.above
		--pointed_pos.y=pointed_pos.y+0.2
		local car = minetest.add_entity(pointed_pos, "automobiles_roadster:roadster")
		if car and placer then
            local ent = car:get_luaentity()
            local owner = placer:get_player_name()
            if ent then
                ent.owner = owner
			    car:set_yaw(placer:get_look_horizontal())
			    itemstack:take_item()
                ent.object:set_acceleration({x=0,y=-automobiles.gravity,z=0})
            end
		end

		return itemstack
	end,
})

--
-- crafting
--
--[[
if minetest.get_modpath("default") then
	minetest.register_craft({
		output = "automobiles_roadster:roadster",
		recipe = {
			{"default:obsidian_block", "default:steel_ingot", "default:obsidian_block"},
			{"default:steel_ingot",    "default:mese_block",  "default:steel_ingot"},
			{"default:obsidian_block", "default:steel_ingot", "default:obsidian_block"},
		}
	})
end]]--
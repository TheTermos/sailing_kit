local yaw = math.random()*math.pi*2-math.pi
wind={}
wind.wind = vector.multiply(minetest.yaw_to_dir(yaw),10)
wind.timer = 0
wind.ttime = math.random()*50+10

minetest.register_globalstep(
	function(dtime)
		wind.timer=wind.timer+dtime
		if wind.timer >= wind.ttime then
			local yaw = minetest.dir_to_yaw(wind.wind)
			local yaw = yaw+math.random()-0.5
			wind.wind = vector.multiply(minetest.yaw_to_dir(yaw),10)
			wind.ttime = wind.timer+math.random()*50+10
		end
	end)
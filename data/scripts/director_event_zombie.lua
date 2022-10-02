dofile( "data/scripts/director_helpers.lua" )

function can_run()
	return 
		new_world_entered and 
		new_world_y < 50 and 
		math.abs( new_world_x ) > 150 and
		Random(0,5) == 0
end

function run()
	local count = Random(1,2)
	for i=1,count do
		if (new_world_biome == "hills" or new_world_biome == "desert") then
			spawn()
		end
	end	
end

function spawn()
	found,x,y = GetSpawnLocation()
	if ( found and is_sector(x, SECTOR_skullfly) ) then
		id = EntityLoad( "data/entities/animals/zombie.xml" )
		EntitySetTransform(id, x, y)

        comp_camera_bound = EntityGetFirstComponent( id, "CameraBoundComponent" )
        ComponentSetValue( comp_camera_bound, "freeze_on_distance_kill", 0 )
        ComponentSetValue( comp_camera_bound, "freeze_on_max_count_kill", 0 )
	end
end
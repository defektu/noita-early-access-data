dofile( "data/scripts/lib/utilities.lua" )

function damage_received( damage, desc, entity_who_caused, is_fatal )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )

	if( entity_who_caused == entity_id ) then return end

	-- check that we're only shooting every 10 frames
	if script_wait_frames( entity_id, 10 ) then  return  end

	local how_many = 12
	local angle_inc = ( 2 * 3.14159 ) / how_many
	local theta = 0
	local length = 100

	for i=1,how_many do
		local vel_x = math.cos( theta ) * length
		local vel_y = math.sin( theta ) * length
		theta = theta + angle_inc

		shoot_projectile( entity_id, "data/entities/projectiles/ice.xml", pos_x, pos_y, vel_x, vel_y )
	end
end

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	GameTriggerMusicEvent( "music/temple/enter", true, pos_x, pos_y )
end
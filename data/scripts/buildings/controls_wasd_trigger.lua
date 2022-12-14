dofile( "data/scripts/lib/utilities.lua" )

function collision_trigger()
	local entity_id = EntityGetClosestWithTag( 275, -120, "controls_wasd" )
	
	local components = EntityGetAllComponents( entity_id )
	if components == nil then
		return
	end

	for i,comp in ipairs( components ) do 
		EntitySetComponentIsEnabled( entity_id, comp, true )
	end
end
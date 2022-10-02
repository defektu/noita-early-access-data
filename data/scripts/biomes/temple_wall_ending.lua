-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile("data/scripts/director_helpers.lua")
dofile("data/scripts/biome_scripts.lua")
dofile( "data/scripts/lib/utilities.lua" )

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffbfcaa6, "spawn_endportal" )

function spawn_small_enemies( x, y ) end
function spawn_big_enemies( x, y ) end
function spawn_items( x, y ) end
function spawn_props( x, y ) end
function spawn_props2( x, y ) end
function spawn_props3( x, y ) end
function spawn_lamp( x, y ) end
function load_pixel_scene( x, y ) end
function load_pixel_scene2( x, y ) end
function spawn_unique_enemy( x, y ) end
function spawn_unique_enemy2( x, y ) end
function spawn_unique_enemy3( x, y ) end
function spawn_ghostlamp( x, y ) end
function spawn_candles( x, y ) end
function spawn_potions( x, y ) end
function spawn_wands( x, y ) end

function init( x, y, w, h )
	LoadPixelScene( "data/biome_impl/temple_wall_top.png", "", x, y-30, "data/biome_impl/temple_wall_top_background.png", true )
	
	LoadPixelScene( "data/biome_impl/temple_altar_top_ending.png", "", x, y-40, "", true )
	LoadPixelScene( "data/biome_impl/temple_solid.png", "", x, y-40+300, "", true )
end

function spawn_endportal(x, y)
	EntityLoad( "data/entities/buildings/teleport_ending.xml", x, y )
end
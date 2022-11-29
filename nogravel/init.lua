
local modpath = minetest.get_modpath(minetest.get_current_modname())

minetest.register_node("nogravel:yellowstone", {
	description = "Yellow Stone",
	tiles = {"examplenode.png"},
	groups = {oddly_breakable_by_hand = 2},
})
minetest.register_craft({
	output = "nogravel:yellowstone 99",
	recipe = {{"default:cobble", "default:cobble"}}
})

minetest.register_abm({
	label = 'nogravel',
	nodenames = {'default:gravel'},
	interval = 1,
	chance = 1,
	action = function(pos)
	pos.y = pos.y
	minetest.add_node(pos, {name = 'default:stone'})
	end,
})
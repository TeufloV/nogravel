
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

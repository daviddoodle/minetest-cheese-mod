minetest.register_node("cheese:cheese_block", {
	tiles = {"cheese.png"},
	on_use = minetest.item_eat(5),
	is_ground_content = true,
	groups = {cracky=3},
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "cheese:cheese_block",
	wherein        = "air",
	clust_scarcity = 8*8*8,
	clust_num_ores = 3,
	clust_size     = 3,
	height_min     = 0,
	height_max     = 31000
})

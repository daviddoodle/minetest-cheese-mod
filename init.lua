--Cheese
minetest.register_node("cheese:cheese_block", {
	tiles = {"cheese.png"},
	description = "Cheese",
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

--Moldy Cheese
minetest.register_node("cheese:moldy_cheese", {
	tiles             = {"moldy_cheese.png"},
	description       = "Moldy Cheese",
	on_use            = minetest.item_eat(-4),
	is_ground_content = true,
	groups            = {cracky=3}
	})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "cheese:moldy_cheese",
	tiles          = "moldy_cheese.png",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -50
	})

--[[Cheese Bits
minetest.register_craftitem("cheese:cheese_bit", {
	description    = "Cheese Bit",
	--tiles        = "GET TEXTURES!"
	})

--tools

minetest.register_tool("cheese:cheese_pick", {
    description = "Cheese Pickaxe",
    --inventory_image = "GET TEXTURES!",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            cracky={times={[1]=1.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})]]--
-- HiddenDoors

hiddendoors = {}

function hiddendoors.register_door(modname, nodename, description, texture) -- texture is optional, for when a mod does not follow naming conventions.
	minetest.register_node("hiddendoors:" .. nodename .. "_" .. modname, {
	description = name .. " Hidden Door",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	inventory_image = "hiddendoors_" .. material .. "_inventory.png",
	tiles = 
		if texture == nil then
			{modname .. "_" .. material .. ".png"},
		else
			{texture}
		end
	groups = {cracky = 2},
	})
	
	minetest.register_craft({
		output = "hiddendoors:" .. nodename .. "_" .. modname  "2",
		recipe = {
		{"", "", ""},
		{"default:glass", modname .. ":" .. nodename , ""},
		{"", "", ""}
		}
	})
end

hiddendoors.register_door("default", "obsidian", "Obsidian")
hiddendoors.register_door("default", "stone", "Stone")
hiddendoors.register_door("default", "desert_stone_brick", "Desert Stone Brick")
hiddendoors.register_door("default", "stone_brick", "Stone Brick")
hiddendoors.register_door("default", "tree", "Tree")
hiddendoors.register_door("default", "dirt", "Dirt")
hiddendoors.register_door("default", "desert_stone", "Desert Stone","default_desert_stone_brick.png")
hiddendoors.register_door("default", "brick", "Brick")
hiddendoors.register_door("default", "wood", "Wood")

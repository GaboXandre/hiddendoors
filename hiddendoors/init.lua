-- HiddenDoors

hiddendoors = {}

function hiddendoors.register_door(modname, nodename, description, tiles)
	minetest.register_node("hiddendoors:" .. nodename .. "_" .. modname, {
	description = name .. " Hidden Door",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	inventory_image = "hiddendoors_" .. nodename .. "_" .. modname .. "_inventory.png",
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

-- Default nodes

local default_nodes = {
	{"stone", "stone"},
	{"brick", "brick"},
	{"desert_stone", "desert_stone"},
	{"tree", "tree"},
	{"dirt","dirt},
	{"wood", "wood"},
	{"obsidian", "obsidian"},
	{"stonebrick", "stone_brick"},
	{"desert_stonebrick", "desert_stone_brick"},
}

for _, row in pairs(default_nodes) do
	local nodename = "default:" ..row[1]
	local ndef = minetest.registered_nodes[nodename]
	local texture = "default_" ..row[2].. ".png"
	hiddendoors.register_door("default", row[1], ndef.description, texture) 
end

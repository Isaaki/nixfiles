return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup()

    -- TODO Make this work with Lazy.nvim

		-- if packer_plugins["telescope.nvim"] and packer_plugins["telescope.nvim"].loaded then
		-- 	require("telescope").load_extension("projects")
		-- end
	end,
}

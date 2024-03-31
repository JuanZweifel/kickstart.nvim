return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        -- TODO Find better keymaps
        vim.keymap.set("n", "<leader>ma", function() harpoon:list():append() end, { desc = "Harpoon [A]ppend" })
        vim.keymap.set("n", "<leader>mm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon [M]enu" })

        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon File[1]" })
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon File[2]" })
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon File[3]" })
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon File[4]" })
        vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon File[5]" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>m<", function() harpoon:list():prev() end, { desc = "Harpoon Previous" })
        vim.keymap.set("n", "<leader>m>", function() harpoon:list():next() end, { desc = "Harpoon Next" })
    end

}

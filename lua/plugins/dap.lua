return {
  {
    "mfussenegger/nvim-dap",
    recommended = true,
    desc = "Debugging support. Requires language specific adapters to be configured. (see lang extras)",
    dependencies = {
      {
        "igorlfs/nvim-dap-view",
        ---@module 'dap-view'
        ---@type dapview.Config
        opts = {
          winbar = {
            show = true,
            -- You can add a "console" section to merge the terminal with the other views
            sections = { "watches", "scopes", "exceptions", "breakpoints", "threads", "repl", "sessions", "console" },
            -- Must be one of the sections declared above
            default_section = "scopes",
            -- Configure each section individually
            controls = {
              enabled = true,
              position = "right",
              buttons = {
                "play",
                "step_into",
                "step_over",
                "step_out",
                "step_back",
                "run_last",
                "terminate",
                "disconnect",
              },
              custom_buttons = {},
            },
          },
          help = {
            border = "rounded",
          },
          windows = {
            height = 0.25,
            position = "below", -- below
            terminal = {
              width = 0.5,
              position = "left",
              -- List of debug adapters for which the terminal should be ALWAYS hidden
              hide = {},
              -- Hide the terminal when starting a new session
              start_hidden = false,
            },
          },
          switchbuf = "usetab,uselast",
          auto_toggle = true,
          -- Reopen dapview when switching to a different tab
          -- Can also be a function to dynamically choose when to follow, by returning a boolean
          -- If a function, receives the name of the adapter for the current session as an argument
          follow_tab = true,
        },
      },
      "rcarriga/nvim-dap-ui",
      -- virtual text for the debugger
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
      { "nvim-neotest/nvim-nio" },
    },

        -- stylua: ignore
        keys = {
            { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
            { "<leader>db", function() require("dap").toggle_breakpoint() end,                                    desc = "Toggle Breakpoint" },
            { "<leader>dc", function() require("dap").continue() end,                                             desc = "Run/Continue" },
            { "<leader>da", function() require("dap").continue({ before = get_args }) end,                        desc = "Run with Args" },
            { "<leader>dC", function() require("dap").run_to_cursor() end,                                        desc = "Run to Cursor" },
            { "<leader>dg", function() require("dap").goto_() end,                                                desc = "Go to Line (No Execute)" },
            { "<leader>di", function() require("dap").step_into() end,                                            desc = "Step Into" },
            { "<leader>dj", function() require("dap").down() end,                                                 desc = "Down" },
            { "<leader>dk", function() require("dap").up() end,                                                   desc = "Up" },
            { "<leader>dl", function() require("dap").run_last() end,                                             desc = "Run Last" },
            { "<leader>do", function() require("dap").step_out() end,                                             desc = "Step Out" },
            { "<leader>dO", function() require("dap").step_over() end,                                            desc = "Step Over" },
            { "<leader>dP", function() require("dap").pause() end,                                                desc = "Pause" },
            {
                "<leader>dr",
                function()
                    require("dap").repl.toggle({
                        height = 10
                    })
                end,
                desc = "Toggle REPL"
            },
            { "<leader>ds", function() require("dap").session() end,          desc = "Session" },
            { "<leader>dt", function() require("dap").terminate() end,        desc = "Terminate" },
            { "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
            {
                "<leader>du",
                function()
                    require("dap-view").toggle()
                end,
                desc = "Dap View UI"
            },
            -- { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = { "n", "x" } },
            -- {
            --     "<leader>dds",
            --     function()
            --         local widgets = require("dap.ui.widgets")
            --         widgets.centered_float(widgets.scopes)
            --     end,
            --     desc = "Open Scopes"
            -- },
            -- {
            --     "<leader>ddh",
            --     function()
            --         require('dap.ui.widgets').hover()
            --     end,
            --     desc = "dap Hover"
            -- },

        },
    config = function()
      vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

      local vscode = require("dap.ext.vscode")
      local json = require("plenary.json")
      vscode.json_decode = function(str)
        return vim.json.decode(json.json_strip_comments(str))
      end
      local dap = require("dap")
      -- local dapui = require("dapui")
      -- local dapView = require("dap-view")
      -- -- dapui.setup(opts)
      -- dap.listeners.on_session["dap-view"] = function()
      --   vim.notify("on_config is run")
      --   dap.set_exception_breakpoints({ "raised" }, { breakMode = "never" })
      -- end
      -- dap.listeners.after.event_initialized["dapui_config"] = function()
      --   -- dapui.open({})
      --   dap.set_exception_breakpoints({}, { breakMode = "never" })
      -- end
      -- dap.listeners.before.event_terminated["dapui_config"] = function()
      --   -- dapui.close({})
      --   dapView.close()
      -- end
      -- dap.listeners.before.event_exited["dapui_config"] = function()
      --   dapView.close()
      -- end
    end,
  },
}

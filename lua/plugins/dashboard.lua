return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "",
            "        .-----------------------------------.",
            "        | $ nvim daily-progress.lua         |",
            "        |-----------------------------------|",
            "        | >_ write small, useful changes    |",
            "        | >_ test the edge cases            |",
            "        | >_ ship and learn                 |",
            "        |                                   |",
            "        |                    ^              |",
            "        |                   / \\             |",
            "        |                  /___\\  progress  |",
            "        '-----------------------------------'",
            "",
            "        Progress is just commits repeated daily.",
          }, "\n"),
        },
      },
    },
  },
}

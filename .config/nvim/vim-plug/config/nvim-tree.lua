-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require("nvim-tree").setup {
  -- OPTS
  on_attach = "default",
  hijack_cursor = false,
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  root_dirs = {},
  prefer_startup_root = false,
  sync_root_with_cwd = false,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  select_prompts = false,
  -- OPTS: SORT
  sort = {
    sorter = "name",
    folders_first = true,
    files_first = false,
  },
  -- OPTS: VIEW
  view = {
    centralize_selection = false,
    cursorline = true,
    debounce_delay = 15,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    width = 30,
    width = {
      min = 30,
      max = -1,
      padding = 1,
    },
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 30,
        height = 30,
        row = 1,
        col = 1,
      },
    },
  },
  -- OPTS: RENDERER
  renderer = {
    add_trailing = true,
    group_empty = false,
    full_name = false,
    root_folder_label = ":~:s?$?/..?",
    indent_width = 2,
    special_files = {
      "Cargo.toml",
      "Makefile",
      "README.md",
      "readme.md",
    },
    symlink_destination = true,
    highlight_git = true,
    highlight_diagnostics = false,
    highlight_opened_files = "icon",
    highlight_modified = "none",
    highlight_bookmarks = "none",
    highlight_clipboard = "name",
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      --- webdev wip
      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
        folder = {
          enable = false,
          color = true,
        },
      },
      git_placement = "before",
      diagnostics_placement = "signcolumn",
      modified_placement = "after",
      bookmarks_placement = "signcolumn",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
        diagnostics = true,
        bookmarks = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  -- OPTS: HIJACK DIRECTORIES
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  -- OPTS: UPDATE FOCUSED FILE
  update_focused_file = {
    enable = false,
    update_root = false,
    ignore_list = {},
  },
  -- OPTS: SYSTEM OPEN
  system_open = {
    cmd = "",
    args = {},
  },
  -- OPTS: GIT
  git = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    disable_for_dirs = {},
    timeout = 400,
    cygwin_support = false,
  },
  -- OPTS: DIAGNOSTICS
  diagnostics = {
    enable = false,
    debounce_delay = 50,
    show_on_dirs = false,
    show_on_open_dirs = true,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  -- OPTS: MODIFIED
  modified = {
    enable = false,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  -- OPTS: FILTERS
  filters = {
    git_ignored = true,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    no_bookmark = false,
    custom = {},
    exclude = {},
  },
  -- OPTS: LIVE FILTER
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
  -- OPTS: FILESYSTEM WATCHERS
  filesystem_watchers = {
    enable = true,
    debounce_delay = 50,
    ignore_dirs = {},
  },
  -- OPTS: ACTIONS
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
      exclude = {},
    },
    file_popup = {
      open_win_config = {
        col = 1,
        row = 1,
        relative = "cursor",
        border = "shadow",
        style = "minimal",
      },
    },
    open_file = {
      quit_on_open = true,
      eject = true,
      resize_window = true,
      window_picker = {
        enable = true,
        picker = "default",
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {
            "notify",
            "packer",
            "qf",
            "diff",
            "fugitive",
            "fugitiveblame",
          },
          buftype = {
            "nofile",
            "terminal",
            "help",
          },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
  -- OPTS: TRASH
  trash = {
    cmd = "gio trash",
  },
  -- OPTS: TAB
  tab = {
    sync = {
      open = false,
      close = false,
      ignore = {},
    },
  },
  -- OPTS: NOTIFY
  notify = {
    threshold = vim.log.levels.INFO,
    absolute_path = true,
  },
  -- OPTS: HELP
  help = {
    sort_by = "key",
  },
  -- OPTS: UI
  ui = {
    confirm = {
      remove = true,
      trash = true,
      default_yes = false,
    },
  },
  -- OPTS: EXPERIMENTAL
  experimental = {
    git = {
      async = true,
    },
  },
  -- OPTS: LOG
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      profile = false,
      config = false,
      copy_paste = false,
      dev = false,
      diagnostics = false,
      git = false,
      watcher = false,
    },
  },
} -- END_DEFAULT_OPTS

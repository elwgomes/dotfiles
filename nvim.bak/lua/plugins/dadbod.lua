return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    init = function()
      vim.g.dbs = {
        vision_prod = "postgres://vision:T7wUU3o355ER11VHDHRv@db.vision360.app.br:5432/vision",
        vision_qa = "postgres://vision:UK0CEI1nP22GzHEpkIp0@db.vision360.app.br:5433/vision",
        vision_dev = "postgres://vision:T7wUU3o355ER11VHDHRv@db.vision360.app.br:5432/vision",
      }
    end,
  },
}

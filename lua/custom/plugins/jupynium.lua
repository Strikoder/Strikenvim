return {
  "kiyoon/jupynium.nvim",
  -- build = "pip3 install --user .",
  -- Uncomment the next line if you use Conda and have a jupynium environment
  build = "conda run --no-capture-output -n nvim pip install .",
  -- Uncomment the next line if you want to enable only when the jupynium environment is found
  -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
}

-- Plug 'norcalli/nvim-colorizer.lua'
require 'colorizer'.setup {
  '*';
  css = {
    rgb_fn = true;
  };
  html = {
    names = false;
  }
}

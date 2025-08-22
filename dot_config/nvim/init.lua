-- Safely require files
local function safe_require(module)
  local success, loaded_module = pcall(require, module)
  if success then
    return loaded_module
  end
  vim.print('Error loading ' .. module)
  vim.notify(loaded_module, vim.log.levels.ERROR)
end

-- Optimize lua loading
vim.loader.enable()

safe_require('core.options')
safe_require('core.keymaps')
safe_require('core.autocommands')
safe_require('core.bootstrap')

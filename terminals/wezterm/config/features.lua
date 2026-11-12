---@module 'config.features'
---@brief features configuration for WezTerm

require("@types.types")

---@param Config WezTerm.Config
---@return nil
return function(Config)
  local act = require("wezterm").action

  Config.mouse_bindings = {
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "NONE",
      action = act.CompleteSelection("Clipboard"),
    },
    -- Right click pastes the clipboard (WezTerm's default would extend the selection).
    {
      event = { Down = { streak = 1, button = "Right" } },
      mods = "NONE",
      action = act.PasteFrom("Clipboard"),
    },
    -- Swallow the matching button-up so the default Up handler does not fire.
    {
      event = { Up = { streak = 1, button = "Right" } },
      mods = "NONE",
      action = act.Nop,
    },
  }
end

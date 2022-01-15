---@meta

obe.Config.Templates = {};
---@return vili.parser.state
function obe.Config.Templates.getAnimationTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getConfigTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getGameObjectTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getMountTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getSceneTemplates() end


---@type string
obe.Config.Templates.wait_command = {};

---@type string
obe.Config.Templates.play_group_command = {};

---@type string
obe.Config.Templates.set_animation_command = {};
return obe.Config.Templates;
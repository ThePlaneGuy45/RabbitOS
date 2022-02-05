-- Screen Data
local w, h = term.getSize()
local imgFile = fs.open("/system/screen/screen.img", "r")
local imgData = imgFile.readAll()
local screen = window.create(term.current(), 1, 1, w, h)
-- Terminal Setup
screen.setBackgroundColor(colors.black)
screen.setTextColor(colors.white)
screen.clear()
screen.setCursorPos(1,1)
-- Render Screen
--while(true) do
--  local x, y = 0, 0
--end

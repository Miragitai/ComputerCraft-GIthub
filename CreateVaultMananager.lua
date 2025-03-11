vault = peripheral.wrap("back")
while true do
    local size = vault.size()
    local cur = #vault.list()
    if cur >= (size*0.9) then
        redstone.setAnalogOutput("left", 15)
    else
        redstone.setOutput("left", false)
    end
end
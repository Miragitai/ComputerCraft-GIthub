vault = peripheral.wrap("back")
while true do
    local size = vault.size()
    local cur = #vault.list()
    if cur >= (size*0.9) then
        print("I'm full! Applying redstone")
        redstone.setAnalogOutput("left", 15)
        redstone.setOutput("top", true)
        Sleep(60)
    else
        print("I'm fine.")
        redstone.setOutput("left", false)
        redstone.setOutput("top", false)
    end
    sleep(5)
end
vault = peripheral.wrap("back")
while true do
    redstone.setAnalogOutput("right", 0)
    redstone.setAnalogOutput("left", 0)
    local size = vault.size()
    local cur = #vault.list()
    if cur >= (size*0.9) then
        print("I'm full! Applying redstone")
        redstone.setAnalogOutput("right", 15)
        redstone.setAnalogOutput("left", 15)
        sleep(60)
    else
        print("I'm fine.")
        redstone.setAnalogOutput("right", 0)
        redstone.setAnalogOutput("left", 0)
    end
    sleep(5)
end
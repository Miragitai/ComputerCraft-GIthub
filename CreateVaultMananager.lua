vault = peripheral.wrap("back")
while true do
    redstone.setOutput("right", 0)
    redstone.setOutput("left", 0)
    local size = vault.size()
    local cur = #vault.list()
    if cur >= (size*0.9) then
        print("I'm full! Applying redstone")
        redstone.setAnalogOutput("left", 15)
        redstone.setOutput("left", true)
        sleep(60)
    else
        print("I'm fine.")
        redstone.setOutput("right", 0)
        redstone.setOutput("left", 0)
    end
    sleep(5)
end
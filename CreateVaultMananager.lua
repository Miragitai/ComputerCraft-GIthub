vault = peripheral.wrap("back")
while true do
    local size = vault.size()
    local cur = #vault.list()
    if cur >= (size*0.9) then
        print("I'm full! Applying redstone")
        redstone.setAnalogOutput("left", 14)
    else
        print("I'm fine.")
        redstone.setOutput("left", false)
    end
    sleep(5)
end
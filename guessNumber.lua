math.randomseed(os.time())
local guessNum = math.random(1, 10)

while true do
    io.write("Guess the number: ")
    local guessUser = io.read()

    if tonumber(guessUser) == nil then
        print("Unrecognized Input")
    else
        guessUser = tonumber(guessUser)

        if guessUser > guessNum then
            print("Too big")
        elseif guessUser < guessNum then
            print("Too low")
        elseif guessUser == guessNum then
            print("Correct")
            break
        end
    end
end

local input = arg[1]
if input == 'XdY+Z' then
    print("Are you kidding me?")
elseif not input then
    print("Usage: lua dice.lua <XdY+Z>")
    os.exit(1)
end

local num_dice, sides, modifier = string.match(input, "(%d*)d(%d+)([+-]?%d*)")
num_dice = tonumber(num_dice) or 1
sides = tonumber(sides)
modifier = tonumber(modifier) or 0

if not sides then
    print("Invalid input format.")
    print("Usage: lua dice.lua <XdY+Z>")
    os.exit(1)
end

math.randomseed(os.time())
local total = 0
for i = 1, num_dice do
    local roll = math.random(1, sides)
    print("Roll " .. i .. ": " .. roll)
    total = total + roll
end
total = total + modifier

print("Modifier: " .. modifier)
print("Total: " .. total)

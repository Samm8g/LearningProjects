function love.load()
    love.graphics.setBackgroundColor(174 / 255, 163 / 255, 89 / 255)
    math.randomseed(os.time())

    blocks = {}
    for i = 1, 5 do
        table.insert(blocks, {
            x = math.random(100, 1180),
            y = math.random(50, 150),
            colorR = math.random(0, 255),
            colorG = math.random(0, 255),
            colorB = math.random(0, 255),
            eaten = false,
            speed = 120
        })
    end

    _G.basket = {
        x = (1280 - 200) / 2,
        y = 600,
        width = 200,
        height = 100,
        speed = 300
    }

end

function love.update(dt)
    -- basket movement
    if love.keyboard.isDown("a", "left") then
        basket.x = basket.x - basket.speed * dt
    end
    if love.keyboard.isDown("d", "right") then
        basket.x = basket.x + basket.speed * dt
    end

    -- keep basket inside screen
    if basket.x < 0 then
        basket.x = 0
    end
    if basket.x > 1280 - basket.width then
        basket.x = 1280 - basket.width
    end

    -- update blocks
    for _, block in ipairs(blocks) do
        if not block.eaten then
            block.y = block.y + block.speed * dt

            -- check collision with basket (AABB)
            if block.y + 50 >= basket.y and block.y <= basket.y + basket.height and
                    block.x + 50 >= basket.x and block.x <= basket.x + basket.width then
                block.eaten = true
            end

            -- remove if off screen
            if block.y > 720 then
                block.eaten = true
            end
        end
    end
end

function love.draw()

    for _, block in ipairs(blocks) do
        if not block.eaten then
            love.graphics.setColor(block.colorR / 255, block.colorG / 255, block.colorB / 255, 1)
            love.graphics.rectangle("fill", block.x, block.y, 50, 50)
        end
    end
    
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.rectangle("line", basket.x, basket.y, basket.width, basket.height)
end

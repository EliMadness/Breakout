--[[
    GD50 2019
    -- Powerup Class --
    Powerups spawn when bricks are hit. Attractor & Ball Multiplier powerups only.
]]

Powerup = Class{}

function Powerup:init(x, y) end

function Powerup:collides(target)

    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- overlapping if false
    return true
end

function Powerup:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Powerup:activate(game) end

function Powerup:render()
    love.graphics.draw(gTextures['main'], self.frame,
            self.x, self.y)
end
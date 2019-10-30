--[[
    GD50
    -- KeyUnlock Class --
Randomly spawns when a locked brick is in the level.
]]

KeyUnlock = Class{__includes = Powerup}

function KeyUnlock:init(x, y)

    self.width = 16
    self.height = 16

    self.x = x
    self.y = y

    self.dy = POWERUP_GRAVITY
    self.dx = 0

    self.timer = 0

    self.frame = gFrames['powerups'][10]

    self.type = "key"
end

function KeyUnlock:activate(game)
        table.insert(game.paddle.power, { type = self.type, timer = love.timer.getTime() } )
end
local actor, super = Class(Actor, "queen")

function actor:init()
    super:init(self)

    -- Display name (optional)
    self.name = "Queen"

    -- Width and height for this actor, used to determine its center
    self.width = 16
    self.height = 63

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {-1, 51, 19, 14}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0, 1, 1}

    -- Path to this actor's sprites (defaults to "")
    self.path = "npcs/queen"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "queen"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "face/queen"
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = {0, 0}

    -- Table of sprite animations
    self.animations = {}

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Movement offsets
        ["walk/down"] = {8, 1},
        ["walk/left"] = {5, 0},
        ["walk/right"] = {12, 0},
        ["walk/up"] = {11, 0},

        ["walk_unhappy/down"] = {8, 1},
        ["walk_unhappy/left"] = {5, 0},
        ["walk_unhappy/right"] = {12, 0},
        ["walk_unhappy/up"] = {11, 0},
    }
end

return actor
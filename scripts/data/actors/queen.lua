local actor, super = Class("queen", true)

function actor:init()
    super:init(self)

    self.animations["battle/idle"] = {"walk/right_1", 0.1, false}
    self.animations["battle/act"] = {"point_right", 0.1, false}
    self.animations["battle/transition"] = {"stupid_run_left", 0.1, true}
    self.animations["battle/intro"] = {"walk/right_1", 0.1, false}
    self.animations["battle/victory"] = {"drunk_laugh", 0.2, true}
end

return actor
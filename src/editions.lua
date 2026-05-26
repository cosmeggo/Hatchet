-- Divine Config Hook
local edition_ref = SMODS.DrawSteps.edition.func
SMODS.DrawSteps.edition.func = function(self, layer)
    if self.edition and self.edition.key == "hatch_divine" then
        if HATCH.config.divine_shader then
            edition_ref(self, layer)
        end
    else
        edition_ref(self, layer)
    end
end

--[[

- edition_ref is a local variable that calls upon "SMODS.Drawsteps.edition.func"
- SMODS.Drawsteps is a table
    - edition is also a table
        - everything is a table. the "func" part is used to describe the "function" this edition may hatch_divine

- next, it will ask "if self.edition" and "self.edition.key" are both "hatch_divine"
    - it will then ask if HATCH.config.divine_shader (see config.lua) is active
        - if so, it will apply the local variable onto self + the layer

- "self" is described as the card object that applies to all cards (playing cards, jokers, etc)

--]]

-- Shader
SMODS.Shader({ key = 'divine', path = 'divine.fs' })

-- Edition
SMODS.Edition {
    key = 'divine',
    weight = 14,
    sound = { sound = "gong", per = 1.2, vol = 0.4 },
    shader = 'divine',
}

-- Credit to Metanite64 for support!
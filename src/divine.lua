-- Soul of Mime
SMODS.Consumable {
    key = 'soul_of_mime',
    set = 'hatch_divine',
    pos = { x = 8, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_mime") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_mime" -- The Original Joker
    end
}

-- Soul of Banner
SMODS.Consumable {
    key = 'soul_of_banner',
    set = 'hatch_divine',
    pos = { x = 7, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_banner") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_banner" -- The Original Joker
    end
}

-- Soul of Summit
SMODS.Consumable {
    key = 'soul_of_summit',
    set = 'hatch_divine',
    pos = { x = 6, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_summit") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_mystic_summit" -- The Original Joker
    end
}

-- Soul of 8_Ball
SMODS.Consumable {
    key = 'soul_of_8_ball',
    set = 'hatch_divine',
    pos = { x = 7, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_8_ball") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_8_ball" -- The Original Joker
    end
}

-- Soul of Fist
SMODS.Consumable {
    key = 'soul_of_fist',
    set = 'hatch_divine',
    pos = { x = 9, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_fist") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_raised_fist" -- The Original Joker
    end
}

-- Soul of Fibonacci
SMODS.Consumable {
    key = 'soul_of_fibonacci',
    set = 'hatch_divine',
    pos = { x = 8, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_fibonacci") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_fibonacci" -- The Original Joker
    end
}

-- Soul of Scholar
SMODS.Consumable {
    key = 'soul_of_scholar',
    set = 'hatch_divine',
    pos = { x = 9, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_scholar") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_scholar" -- The Original Joker
    end
}

-- Soul of Space
SMODS.Consumable {
    key = 'soul_of_space',
    set = 'hatch_divine',
    pos = { x = 0, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_space") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_space" -- The Original Joker
    end
}

-- Soul of Hiker
SMODS.Consumable {
    key = 'soul_of_hiker',
    set = 'hatch_divine',
    pos = { x = 0, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_hiker") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hiker" -- The Original Joker
    end
}

-- Soul of Riff-Raff
SMODS.Consumable {
    key = 'soul_of_riffraff',
    set = 'hatch_divine',
    pos = { x = 1, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_riffraff") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_riff_raff" -- The Original Joker
    end
}

-- Soul of Rebate
SMODS.Consumable {
    key = 'soul_of_rebate',
    set = 'hatch_divine',
    pos = { x = 2, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_mail") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_mail" -- The Original Joker
    end
}

-- Soul of Vagabond
SMODS.Consumable {
    key = 'soul_of_vagabond',
    set = 'hatch_divine',
    pos = { x = 3, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_vagabond") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_vagabond" -- The Original Joker
    end
}

-- Soul of Baseball
SMODS.Consumable {
    key = 'soul_of_baseball',
    set = 'hatch_divine',
    pos = { x = 4, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_baseball") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_baseball" -- The Original Joker
    end
}

-- Soul of Walkie Talkie
SMODS.Consumable {
    key = 'soul_of_walkie_talkie',
    set = 'hatch_divine',
    pos = { x = 5, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_walkie_talkie") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_walkie_talkie" -- The Original Joker
    end
}

-- Soul of Trousers
SMODS.Consumable {
    key = 'soul_of_trousers',
    set = 'hatch_divine',
    pos = { x = 6, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_trousers") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_trousers" -- The Original Joker
    end
}

-- Soul of Ticket
SMODS.Consumable {
    key = 'soul_of_ticket',
    set = 'hatch_divine',
    pos = { x = 6, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_ticket") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_ticket" -- The Original Joker
    end
}

-- Soul of Swashbuckler
SMODS.Consumable {
    key = 'soul_of_swashbuckler',
    set = 'hatch_divine',
    pos = { x = 7, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_buckler") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_swashbuckler" -- The Original Joker
    end
}

-- Soul of Smeared
SMODS.Consumable {
    key = 'soul_of_smeared',
    set = 'hatch_divine',
    pos = { x = 8, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_smeared") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_smeared" -- The Original Joker
    end
}

-- Soul of Stuntman
SMODS.Consumable {
    key = 'soul_of_stuntman',
    set = 'hatch_divine',
    pos = { x = 9, y = 3 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_stuntman") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_stuntman" -- The Original Joker
    end
}

-- Soul of License
SMODS.Consumable {
    key = 'soul_of_license',
    set = 'hatch_divine',
    pos = { x = 0, y = 4 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_license") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_drivers_license" -- The Original Joker
    end
}

-- Soul of Hatchet
SMODS.Consumable {
    key = 'soul_of_hatchet',
    set = 'hatch_divine',
    pos = { x = 1, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_hatchet") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_hatchet" -- The Original Joker
    end
}

-- Soul of Love Letter
SMODS.Consumable {
    key = 'soul_of_loveletter',
    set = 'hatch_divine',
    pos = { x = 2, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_loveletter") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_loveletter" -- The Original Joker
    end
}

-- Soul of Wildside
SMODS.Consumable {
    key = 'soul_of_wildside',
    set = 'hatch_divine',
    pos = { x = 3, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_wildside") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_wildside" -- The Original Joker
    end
}

-- Soul of Steel Ball
SMODS.Consumable {
    key = 'soul_of_ball',
    set = 'hatch_divine',
    pos = { x = 4, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_ball") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_steelball" -- The Original Joker
    end
}

-- Soul of Clover
SMODS.Consumable {
    key = 'soul_of_clover',
    set = 'hatch_divine',
    pos = { x = 5, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_fourleaf") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_fourleaf" -- The Original Joker
    end
}

-- Soul of Musketeer
SMODS.Consumable {
    key = 'soul_of_musketeer',
    set = 'hatch_divine',
    pos = { x = 1, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_musketeer") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_musketeer" -- The Original Joker
    end
}

-- Soul of Guard
SMODS.Consumable {
    key = 'soul_of_guard',
    set = 'hatch_divine',
    pos = { x = 2, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_guard") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_royalguard" -- The Original Joker
    end
}

-- Soul of Ritual
SMODS.Consumable {
    key = 'soul_of_ritual',
    set = 'hatch_divine',
    pos = { x = 3, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_ritual") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_ritual" -- The Original Joker
    end
}

-- Soul of Ballot
SMODS.Consumable {
    key = 'soul_of_ballot',
    set = 'hatch_divine',
    pos = { x = 4, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_ballot") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_spoiledballot" -- The Original Joker
    end
}

-- Soul of Tree
SMODS.Consumable {
    key = 'soul_of_tree',
    set = 'hatch_divine',
    pos = { x = 5, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_tree") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_fallentree" -- The Original Joker
    end
}

-- Da'at
SMODS.Consumable {
    key = 'daat',
    set = 'hatch_divine',
    pos = { x = 0, y = 1 },
    cost = 10,
    unlocked = false,
    discovered = false,
    hidden = true,
    atlas = 'HatchetConsumables',

    use = function(self, card, area, copier)
        G.GAME.daat_summon = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card({ key = "j_hatch_etzchaim" })
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return G.jokers and #G.jokers.cards < G.jokers.config.card_limit
    end,
}